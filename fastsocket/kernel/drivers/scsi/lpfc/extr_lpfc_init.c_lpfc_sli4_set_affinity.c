
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct cpumask {int dummy; } ;
struct lpfc_vector_map_info {int phys_id; int irq; int channel_id; struct cpumask maskbits; scalar_t__ core_id; } ;
struct TYPE_4__ {int num_present_cpu; int num_online_cpu; struct lpfc_vector_map_info* cpu_map; TYPE_1__* msix_entries; } ;
struct lpfc_hba {scalar_t__ cfg_fcp_cpu_map; int cfg_fcp_io_channel; int cfg_fcp_io_sched; TYPE_2__ sli4_hba; } ;
struct cpuinfo_x86 {int phys_proc_id; scalar_t__ cpu_core_id; } ;
struct TYPE_3__ {int vector; } ;


 int KERN_ERR ;
 int KERN_INFO ;
 int LOG_INIT ;
 scalar_t__ LPFC_DRIVER_CPU_MAP ;
 int LPFC_FCP_IO_CHAN_MAX ;
 int LPFC_FCP_SCHED_BY_CPU ;
 int LPFC_VECTOR_MAP_EMPTY ;
 struct cpuinfo_x86 cpu_data (int) ;
 int cpumask_clear (struct cpumask*) ;
 int cpumask_set_cpu (int,struct cpumask*) ;
 int irq_set_affinity_hint (int,struct cpumask*) ;
 int lpfc_find_next_cpu (struct lpfc_hba*,int) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int,int,...) ;
 int* lpfc_used_cpu ;
 int memset (struct lpfc_vector_map_info*,int,int) ;

__attribute__((used)) static int
lpfc_sli4_set_affinity(struct lpfc_hba *phba, int vectors)
{
 int i, idx, saved_chann, used_chann, cpu, phys_id;
 int max_phys_id, num_io_channel, first_cpu;
 struct lpfc_vector_map_info *cpup;



 struct cpumask *mask;
 uint8_t chann[LPFC_FCP_IO_CHAN_MAX+1];


 if (!phba->cfg_fcp_cpu_map)
  return 1;


 memset(phba->sli4_hba.cpu_map, 0xff,
        (sizeof(struct lpfc_vector_map_info) *
  phba->sli4_hba.num_present_cpu));

 max_phys_id = 0;
 phys_id = 0;
 num_io_channel = 0;
 first_cpu = LPFC_VECTOR_MAP_EMPTY;


 cpup = phba->sli4_hba.cpu_map;
 for (cpu = 0; cpu < phba->sli4_hba.num_present_cpu; cpu++) {






  cpup->phys_id = 0;
  cpup->core_id = 0;


  lpfc_printf_log(phba, KERN_INFO, LOG_INIT,
    "3328 CPU physid %d coreid %d\n",
    cpup->phys_id, cpup->core_id);

  if (cpup->phys_id > max_phys_id)
   max_phys_id = cpup->phys_id;
  cpup++;
 }


 for (idx = 0; idx < vectors; idx++) {
  cpup = phba->sli4_hba.cpu_map;
  cpu = lpfc_find_next_cpu(phba, phys_id);
  if (cpu == LPFC_VECTOR_MAP_EMPTY) {


   for (i = 1; i < max_phys_id; i++) {
    phys_id++;
    if (phys_id > max_phys_id)
     phys_id = 0;
    cpu = lpfc_find_next_cpu(phba, phys_id);
    if (cpu == LPFC_VECTOR_MAP_EMPTY)
     continue;
    goto found;
   }

   lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
     "3329 Cannot set affinity:"
     "Error mapping vector %d (%d)\n",
     idx, vectors);
   return 0;
  }
found:
  cpup += cpu;
  if (phba->cfg_fcp_cpu_map == LPFC_DRIVER_CPU_MAP)
   lpfc_used_cpu[cpu] = phys_id;


  cpup->irq = phba->sli4_hba.msix_entries[idx].vector;


  cpup->channel_id = idx;
  num_io_channel++;

  if (first_cpu == LPFC_VECTOR_MAP_EMPTY)
   first_cpu = cpu;


  mask = &cpup->maskbits;
  cpumask_clear(mask);
  cpumask_set_cpu(cpu, mask);
  i = irq_set_affinity_hint(phba->sli4_hba.msix_entries[idx].
       vector, mask);

  lpfc_printf_log(phba, KERN_INFO, LOG_INIT,
    "3330 Set Affinity: CPU %d channel %d "
    "irq %d (%x)\n",
    cpu, cpup->channel_id,
    phba->sli4_hba.msix_entries[idx].vector, i);


  phys_id++;
  if (phys_id > max_phys_id)
   phys_id = 0;
 }
 for (i = 0; i <= max_phys_id; i++) {





  for (idx = 0; idx < phba->cfg_fcp_io_channel; idx++)
   chann[idx] = idx;

  saved_chann = 0;
  used_chann = 0;






  cpup = phba->sli4_hba.cpu_map;
  cpu = first_cpu;
  cpup += cpu;
  for (idx = 0; idx < phba->sli4_hba.num_present_cpu;
       idx++) {
   if (cpup->phys_id == i) {




    if (cpup->irq != LPFC_VECTOR_MAP_EMPTY) {
     chann[saved_chann] =
      cpup->channel_id;
     saved_chann++;
     goto out;
    }


    if (saved_chann == 0)
     saved_chann =
      phba->cfg_fcp_io_channel;


    cpup->channel_id = chann[used_chann];
    num_io_channel++;
    used_chann++;
    if (used_chann == saved_chann)
     used_chann = 0;

    lpfc_printf_log(phba, KERN_INFO, LOG_INIT,
      "3331 Set IO_CHANN "
      "CPU %d channel %d\n",
      idx, cpup->channel_id);
   }
out:
   cpu++;
   if (cpu >= phba->sli4_hba.num_present_cpu) {
    cpup = phba->sli4_hba.cpu_map;
    cpu = 0;
   } else {
    cpup++;
   }
  }
 }

 if (phba->sli4_hba.num_online_cpu != phba->sli4_hba.num_present_cpu) {
  cpup = phba->sli4_hba.cpu_map;
  for (idx = 0; idx < phba->sli4_hba.num_present_cpu; idx++) {
   if (cpup->channel_id == LPFC_VECTOR_MAP_EMPTY) {
    cpup->channel_id = 0;
    num_io_channel++;

    lpfc_printf_log(phba, KERN_INFO, LOG_INIT,
      "3332 Assign IO_CHANN "
      "CPU %d channel %d\n",
      idx, cpup->channel_id);
   }
   cpup++;
  }
 }


 if (num_io_channel != phba->sli4_hba.num_present_cpu)
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "3333 Set affinity mismatch:"
    "%d chann != %d cpus: %d vactors\n",
    num_io_channel, phba->sli4_hba.num_present_cpu,
    vectors);

 phba->cfg_fcp_io_sched = LPFC_FCP_SCHED_BY_CPU;
 return 1;
}
