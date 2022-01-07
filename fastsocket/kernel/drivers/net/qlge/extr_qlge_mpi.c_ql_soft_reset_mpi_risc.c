
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql_adapter {int dummy; } ;


 int ql_write_mpi_reg (struct ql_adapter*,int,int) ;

int ql_soft_reset_mpi_risc(struct ql_adapter *qdev)
{
 int status;
 status = ql_write_mpi_reg(qdev, 0x00001010, 1);
 return status;
}
