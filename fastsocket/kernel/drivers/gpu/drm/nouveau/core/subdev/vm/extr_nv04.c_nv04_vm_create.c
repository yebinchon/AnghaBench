
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nouveau_vmmgr {int dummy; } ;
struct nouveau_vm {int dummy; } ;


 int EINVAL ;

int
nv04_vm_create(struct nouveau_vmmgr *vmm, u64 offset, u64 length, u64 mmstart,
        struct nouveau_vm **pvm)
{
 return -EINVAL;
}
