
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct openpty_arg {int err; int slave; int master; } ;


 int errno ;
 scalar_t__ openpty (int *,int *,int *,int *,int *) ;

__attribute__((used)) static void openpty_cb(void *arg)
{
 struct openpty_arg *info = arg;

 info->err = 0;
 if (openpty(&info->master, &info->slave, ((void*)0), ((void*)0), ((void*)0)))
  info->err = -errno;
}
