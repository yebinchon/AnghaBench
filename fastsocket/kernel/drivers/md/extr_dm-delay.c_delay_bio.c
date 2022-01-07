
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_delay_info {unsigned long expires; int list; struct bio* bio; struct delay_c* context; } ;
struct delay_c {int delayed_bios; int reads; int writes; int delayed_pool; int may_delay; } ;
struct bio {int dummy; } ;


 int GFP_NOIO ;
 int HZ ;
 scalar_t__ WRITE ;
 int atomic_read (int *) ;
 scalar_t__ bio_data_dir (struct bio*) ;
 int delayed_bios_lock ;
 int jiffies ;
 int list_add_tail (int *,int *) ;
 struct dm_delay_info* mempool_alloc (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int queue_timeout (struct delay_c*,unsigned long) ;

__attribute__((used)) static int delay_bio(struct delay_c *dc, int delay, struct bio *bio)
{
 struct dm_delay_info *delayed;
 unsigned long expires = 0;

 if (!delay || !atomic_read(&dc->may_delay))
  return 1;

 delayed = mempool_alloc(dc->delayed_pool, GFP_NOIO);

 delayed->context = dc;
 delayed->bio = bio;
 delayed->expires = expires = jiffies + (delay * HZ / 1000);

 mutex_lock(&delayed_bios_lock);

 if (bio_data_dir(bio) == WRITE)
  dc->writes++;
 else
  dc->reads++;

 list_add_tail(&delayed->list, &dc->delayed_bios);

 mutex_unlock(&delayed_bios_lock);

 queue_timeout(dc, expires);

 return 0;
}
