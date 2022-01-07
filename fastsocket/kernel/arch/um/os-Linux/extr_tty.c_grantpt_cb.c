
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grantpt_info {int err; int fd; int res; } ;


 int errno ;
 int grantpt (int ) ;

__attribute__((used)) static void grantpt_cb(void *arg)
{
 struct grantpt_info *info = arg;

 info->res = grantpt(info->fd);
 info->err = errno;
}
