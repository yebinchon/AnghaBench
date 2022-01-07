
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CBE_PM_TRACE_BUF_EMPTY ;
 int TRACE_ARRAY_SIZE ;
 int cbe_read_pm (int,int ) ;
 int spu_pc_extract (int,int) ;
 int trace_address ;

__attribute__((used)) static int cell_spu_pc_collection(int cpu)
{
 u32 trace_addr;
 int entry;



 entry = 0;

 trace_addr = cbe_read_pm(cpu, trace_address);
 while (!(trace_addr & CBE_PM_TRACE_BUF_EMPTY)) {

  spu_pc_extract(cpu, entry);

  entry++;

  if (entry >= TRACE_ARRAY_SIZE)

   break;

  trace_addr = cbe_read_pm(cpu, trace_address);
 }

 return entry;
}
