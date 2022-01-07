
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_engine {int base; } ;


 int nv50_vm_flush_engine (int *,int) ;

__attribute__((used)) static int
nva3_copy_tlb_flush(struct nouveau_engine *engine)
{
 nv50_vm_flush_engine(&engine->base, 0x0d);
 return 0;
}
