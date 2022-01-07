
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct adv_dvc_var {TYPE_1__* carr_freelist; TYPE_1__* carrier_buf; } ;
struct TYPE_5__ {void* next_vpa; void* carr_va; void* carr_pa; } ;
typedef scalar_t__ ADV_SDCNT ;
typedef void* ADV_PADDR ;
typedef TYPE_1__ ADV_CARR_T ;


 scalar_t__ ADV_16BALIGN (TYPE_1__*) ;
 scalar_t__ ADV_CARRIER_BUFSIZE ;
 int ADV_VADDR_TO_U32 (TYPE_1__*) ;
 void* cpu_to_le32 (int ) ;
 int virt_to_bus (TYPE_1__*) ;

__attribute__((used)) static void AdvBuildCarrierFreelist(struct adv_dvc_var *asc_dvc)
{
 ADV_CARR_T *carrp;
 ADV_SDCNT buf_size;
 ADV_PADDR carr_paddr;

 carrp = (ADV_CARR_T *) ADV_16BALIGN(asc_dvc->carrier_buf);
 asc_dvc->carr_freelist = ((void*)0);
 if (carrp == asc_dvc->carrier_buf) {
  buf_size = ADV_CARRIER_BUFSIZE;
 } else {
  buf_size = ADV_CARRIER_BUFSIZE - sizeof(ADV_CARR_T);
 }

 do {

  carr_paddr = cpu_to_le32(virt_to_bus(carrp));

  buf_size -= sizeof(ADV_CARR_T);

  carrp->carr_pa = carr_paddr;
  carrp->carr_va = cpu_to_le32(ADV_VADDR_TO_U32(carrp));




  carrp->next_vpa =
   cpu_to_le32(ADV_VADDR_TO_U32(asc_dvc->carr_freelist));
  asc_dvc->carr_freelist = carrp;

  carrp++;
 } while (buf_size > 0);
}
