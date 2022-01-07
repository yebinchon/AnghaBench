
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_ioctl {int dummy; } ;


 int DM_PARAMS_KMALLOC ;
 int DM_PARAMS_VMALLOC ;
 int DM_WIPE_BUFFER ;
 int kfree (struct dm_ioctl*) ;
 int memset (struct dm_ioctl*,int ,size_t) ;
 int vfree (struct dm_ioctl*) ;

__attribute__((used)) static void free_params(struct dm_ioctl *param, size_t param_size, int param_flags)
{
 if (param_flags & DM_WIPE_BUFFER)
  memset(param, 0, param_size);

 if (param_flags & DM_PARAMS_KMALLOC)
  kfree(param);
 if (param_flags & DM_PARAMS_VMALLOC)
  vfree(param);
}
