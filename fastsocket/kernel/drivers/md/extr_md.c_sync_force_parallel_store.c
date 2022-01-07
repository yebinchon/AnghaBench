
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {long parallel_resync; scalar_t__ sync_thread; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 scalar_t__ kstrtol (char const*,int,long*) ;
 int resync_wait ;
 int wake_up (int *) ;

__attribute__((used)) static ssize_t
sync_force_parallel_store(struct mddev *mddev, const char *buf, size_t len)
{
 long n;

 if (kstrtol(buf, 10, &n))
  return -EINVAL;

 if (n != 0 && n != 1)
  return -EINVAL;

 mddev->parallel_resync = n;

 if (mddev->sync_thread)
  wake_up(&resync_wait);

 return len;
}
