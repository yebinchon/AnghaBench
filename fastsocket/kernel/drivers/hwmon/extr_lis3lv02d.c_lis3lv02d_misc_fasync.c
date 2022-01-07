
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
struct TYPE_2__ {int async_queue; } ;


 int fasync_helper (int,struct file*,int,int *) ;
 TYPE_1__ lis3_dev ;

__attribute__((used)) static int lis3lv02d_misc_fasync(int fd, struct file *file, int on)
{
 return fasync_helper(fd, file, on, &lis3_dev.async_queue);
}
