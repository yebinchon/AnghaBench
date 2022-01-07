
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct beiscsi_hba {int generation; int num_cpus; } ;


 int BEISCSI_MAX_NUM_CPUS ;



 int OC_SKH_MAX_NUM_CPUS ;
 int num_online_cpus () ;

__attribute__((used)) static void find_num_cpus(struct beiscsi_hba *phba)
{
 int num_cpus = 0;

 num_cpus = num_online_cpus();

 switch (phba->generation) {
 case 130:
 case 129:
  phba->num_cpus = (num_cpus > BEISCSI_MAX_NUM_CPUS) ?
      BEISCSI_MAX_NUM_CPUS : num_cpus;
  break;
 case 128:
  phba->num_cpus = (num_cpus > OC_SKH_MAX_NUM_CPUS) ?
      OC_SKH_MAX_NUM_CPUS : num_cpus;
  break;
 default:
  phba->num_cpus = 1;
 }
}
