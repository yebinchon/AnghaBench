
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r5conf {TYPE_1__* mddev; int device_lock; struct bio* retry_read_aligned_list; } ;
struct bio {struct bio* bi_next; } ;
struct TYPE_2__ {int thread; } ;


 int md_wakeup_thread (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void add_bio_to_retry(struct bio *bi,struct r5conf *conf)
{
 unsigned long flags;

 spin_lock_irqsave(&conf->device_lock, flags);

 bi->bi_next = conf->retry_read_aligned_list;
 conf->retry_read_aligned_list = bi;

 spin_unlock_irqrestore(&conf->device_lock, flags);
 md_wakeup_thread(conf->mddev->thread);
}
