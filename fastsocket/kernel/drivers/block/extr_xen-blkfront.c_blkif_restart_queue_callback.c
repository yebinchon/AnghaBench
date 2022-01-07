
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blkfront_info {int work; } ;


 int schedule_work (int *) ;

__attribute__((used)) static void blkif_restart_queue_callback(void *arg)
{
 struct blkfront_info *info = (struct blkfront_info *)arg;
 schedule_work(&info->work);
}
