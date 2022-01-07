
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mcs_op { ____Placeholder_mcs_op } mcs_op ;


 int CCHSTATUS_ACTIVE ;
 int GET_MSEG_HANDLE_STATUS (void*) ;
 unsigned long GRU_OPERATION_TIMEOUT ;
 int OPT_STATS ;
 int cpu_relax () ;
 unsigned long get_cycles () ;
 int gru_options ;
 int report_instruction_timeout (void*) ;
 int update_mcs_stats (int,unsigned long) ;

__attribute__((used)) static int wait_instruction_complete(void *h, enum mcs_op opc)
{
 int status;
 unsigned long start_time = get_cycles();

 while (1) {
  cpu_relax();
  status = GET_MSEG_HANDLE_STATUS(h);
  if (status != CCHSTATUS_ACTIVE)
   break;
  if (GRU_OPERATION_TIMEOUT < (get_cycles() - start_time)) {
   report_instruction_timeout(h);
   start_time = get_cycles();
  }
 }
 if (gru_options & OPT_STATS)
  update_mcs_stats(opc, get_cycles() - start_time);
 return status;
}
