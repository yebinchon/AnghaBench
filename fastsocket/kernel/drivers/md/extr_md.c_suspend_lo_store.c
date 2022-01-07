
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mddev {unsigned long long suspend_lo; TYPE_1__* pers; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int (* quiesce ) (struct mddev*,int) ;} ;


 size_t EINVAL ;
 unsigned long long simple_strtoull (char const*,char**,int) ;
 int stub1 (struct mddev*,int) ;
 int stub2 (struct mddev*,int) ;
 int stub3 (struct mddev*,int) ;

__attribute__((used)) static ssize_t
suspend_lo_store(struct mddev *mddev, const char *buf, size_t len)
{
 char *e;
 unsigned long long new = simple_strtoull(buf, &e, 10);
 unsigned long long old = mddev->suspend_lo;

 if (mddev->pers == ((void*)0) ||
     mddev->pers->quiesce == ((void*)0))
  return -EINVAL;
 if (buf == e || (*e && *e != '\n'))
  return -EINVAL;

 mddev->suspend_lo = new;
 if (new >= old)

  mddev->pers->quiesce(mddev, 2);
 else {

  mddev->pers->quiesce(mddev, 1);
  mddev->pers->quiesce(mddev, 0);
 }
 return len;
}
