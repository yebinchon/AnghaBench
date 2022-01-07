
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct beiscsi_hba {struct be_mem_descriptor* phwi_ctrlr; struct be_mem_descriptor* init_mem; int pcidev; } ;
struct TYPE_4__ {scalar_t__ address; } ;
struct TYPE_5__ {TYPE_1__ a64; } ;
struct TYPE_6__ {TYPE_2__ u; } ;
struct be_mem_descriptor {int num_elements; struct be_mem_descriptor* wrb_context; struct be_mem_descriptor* mem_array; TYPE_3__ bus_address; int virtual_address; int size; } ;


 int SE_MEM_MAX ;
 int kfree (struct be_mem_descriptor*) ;
 int pci_free_consistent (int ,int ,int ,unsigned long) ;

__attribute__((used)) static void beiscsi_free_mem(struct beiscsi_hba *phba)
{
 struct be_mem_descriptor *mem_descr;
 int i, j;

 mem_descr = phba->init_mem;
 i = 0;
 j = 0;
 for (i = 0; i < SE_MEM_MAX; i++) {
  for (j = mem_descr->num_elements; j > 0; j--) {
   pci_free_consistent(phba->pcidev,
     mem_descr->mem_array[j - 1].size,
     mem_descr->mem_array[j - 1].virtual_address,
     (unsigned long)mem_descr->mem_array[j - 1].
     bus_address.u.a64.address);
  }
  kfree(mem_descr->mem_array);
  mem_descr++;
 }
 kfree(phba->init_mem);
 kfree(phba->phwi_ctrlr->wrb_context);
 kfree(phba->phwi_ctrlr);
}
