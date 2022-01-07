
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int * private_data; } ;


 scalar_t__ ipath_diag_inuse ;
 int ipath_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ipath_diag_release(struct inode *in, struct file *fp)
{
 mutex_lock(&ipath_mutex);
 ipath_diag_inuse = 0;
 fp->private_data = ((void*)0);
 mutex_unlock(&ipath_mutex);
 return 0;
}
