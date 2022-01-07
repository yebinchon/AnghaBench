
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_OK ;
 int OS_ACC_F_OK ;
 int OS_ACC_R_OK ;
 int OS_ACC_W_OK ;
 int OS_ACC_X_OK ;
 int R_OK ;
 int W_OK ;
 int X_OK ;
 int access (char const*,int) ;
 int errno ;

int os_access(const char *file, int mode)
{
 int amode, err;

 amode = (mode & OS_ACC_R_OK ? R_OK : 0) |
  (mode & OS_ACC_W_OK ? W_OK : 0) |
  (mode & OS_ACC_X_OK ? X_OK : 0) |
  (mode & OS_ACC_F_OK ? F_OK : 0);

 err = access(file, amode);
 if (err < 0)
  return -errno;

 return 0;
}
