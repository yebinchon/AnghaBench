
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ql_adapter {int dummy; } ;


 int MAX_SEMAPHORE_FUNCTIONS ;
 int MPI_NIC_FUNCTION_SHIFT ;
 int MPI_NIC_REG_BLOCK ;
 int SEM ;
 int ql_read_mpi_reg (struct ql_adapter*,int,int*) ;

__attribute__((used)) static void ql_get_sem_registers(struct ql_adapter *qdev, u32 *buf)
{
 u32 func_num, reg, reg_val;
 int status;

 for (func_num = 0; func_num < MAX_SEMAPHORE_FUNCTIONS ; func_num++) {
  reg = MPI_NIC_REG_BLOCK
   | (func_num << MPI_NIC_FUNCTION_SHIFT)
   | (SEM / 4);
  status = ql_read_mpi_reg(qdev, reg, &reg_val);
  *buf = reg_val;

  if (!status)
   *buf = 0xdeadbeef;
  buf++;
 }
}
