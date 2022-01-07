
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nouveau_vmmgr {int (* create ) (struct nouveau_vmmgr*,int ,int ,int ,struct nouveau_vm**) ;} ;
struct nouveau_vm {int dummy; } ;
struct nouveau_device {int dummy; } ;


 struct nouveau_vmmgr* nouveau_vmmgr (struct nouveau_device*) ;
 int stub1 (struct nouveau_vmmgr*,int ,int ,int ,struct nouveau_vm**) ;

int
nouveau_vm_new(struct nouveau_device *device, u64 offset, u64 length,
        u64 mm_offset, struct nouveau_vm **pvm)
{
 struct nouveau_vmmgr *vmm = nouveau_vmmgr(device);
 return vmm->create(vmm, offset, length, mm_offset, pvm);
}
