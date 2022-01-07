
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct lg_cpu {TYPE_2__* lg; } ;
struct TYPE_9__ {int pgdir; int reserve_mem; int kernel_address; } ;
struct TYPE_8__ {TYPE_3__* kernel_address; TYPE_3__* lguest_data; TYPE_1__* pgdirs; } ;
struct TYPE_7__ {int gpgdir; } ;


 int RESERVE_MEM ;
 scalar_t__ SWITCHER_PGD_INDEX ;
 scalar_t__ SWITCHER_PMD_INDEX ;
 scalar_t__ get_user (TYPE_3__*,int *) ;
 int kill_guest (struct lg_cpu*,char*,TYPE_3__*) ;
 scalar_t__ pgd_index (TYPE_3__*) ;
 scalar_t__ pmd_index (TYPE_3__*) ;
 scalar_t__ put_user (int,int *) ;

void page_table_guest_data_init(struct lg_cpu *cpu)
{

 if (get_user(cpu->lg->kernel_address,
  &cpu->lg->lguest_data->kernel_address)




  || put_user(RESERVE_MEM * 1024 * 1024,
   &cpu->lg->lguest_data->reserve_mem)
  || put_user(cpu->lg->pgdirs[0].gpgdir,
   &cpu->lg->lguest_data->pgdir))
  kill_guest(cpu, "bad guest page %p", cpu->lg->lguest_data);
 if (pgd_index(cpu->lg->kernel_address) >= SWITCHER_PGD_INDEX)

  kill_guest(cpu, "bad kernel address %#lx",
     cpu->lg->kernel_address);
}
