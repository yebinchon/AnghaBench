
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int fasync ;
 int fasync_helper (int,struct file*,int,int *) ;

__attribute__((used)) static int random_fasync(int fd, struct file *filp, int on)
{
 return fasync_helper(fd, filp, on, &fasync);
}
