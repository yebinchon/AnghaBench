
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iucv_path {int dummy; } ;
typedef int ipvmid ;


 int EINVAL ;
 int iucv_path_accept (struct iucv_path*,int *,char*,int *) ;
 int smsg_handler ;
 scalar_t__ strncmp (int *,char*,int) ;

__attribute__((used)) static int smsg_path_pending(struct iucv_path *path, u8 ipvmid[8],
        u8 ipuser[16])
{
 if (strncmp(ipvmid, "*MSG    ", sizeof(ipvmid)) != 0)
  return -EINVAL;

 return iucv_path_accept(path, &smsg_handler, "SMSGIUCV        ", ((void*)0));
}
