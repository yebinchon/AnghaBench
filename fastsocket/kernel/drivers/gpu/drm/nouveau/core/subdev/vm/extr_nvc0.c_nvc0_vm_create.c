
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nouveau_vmmgr {int dummy; } ;
struct nouveau_vm {int dummy; } ;


 int nouveau_vm_create (struct nouveau_vmmgr*,int ,int ,int ,int,struct nouveau_vm**) ;

__attribute__((used)) static int
nvc0_vm_create(struct nouveau_vmmgr *vmm, u64 offset, u64 length,
        u64 mm_offset, struct nouveau_vm **pvm)
{
 return nouveau_vm_create(vmm, offset, length, mm_offset, 4096, pvm);
}
