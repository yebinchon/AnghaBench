
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;

__attribute__((used)) static ssize_t
null_show(struct mddev *mddev, char *page)
{
 return -EINVAL;
}
