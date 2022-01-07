
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long max_write_behind; } ;
struct mddev {TYPE_1__ bitmap_info; } ;
typedef int ssize_t ;


 unsigned long COUNTER_MAX ;
 int EINVAL ;
 int kstrtoul (char const*,int,unsigned long*) ;

__attribute__((used)) static ssize_t
backlog_store(struct mddev *mddev, const char *buf, size_t len)
{
 unsigned long backlog;
 int rv = kstrtoul(buf, 10, &backlog);
 if (rv)
  return rv;
 if (backlog > COUNTER_MAX)
  return -EINVAL;
 mddev->bitmap_info.max_write_behind = backlog;
 return len;
}
