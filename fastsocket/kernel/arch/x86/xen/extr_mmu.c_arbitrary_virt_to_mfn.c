
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int maddr; } ;
typedef TYPE_1__ xmaddr_t ;


 unsigned long PFN_DOWN (int ) ;
 TYPE_1__ arbitrary_virt_to_machine (void*) ;

unsigned long arbitrary_virt_to_mfn(void *vaddr)
{
 xmaddr_t maddr = arbitrary_virt_to_machine(vaddr);

 return PFN_DOWN(maddr.maddr);
}
