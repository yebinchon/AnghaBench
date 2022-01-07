
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef enum ps3_reg_type { ____Placeholder_ps3_reg_type } ps3_reg_type ;


 int ps3_repository_read_dev_reg_addr (unsigned int,unsigned int,unsigned int,int *,int *) ;
 int ps3_repository_read_dev_reg_type (unsigned int,unsigned int,unsigned int,int*) ;

int ps3_repository_read_dev_reg(unsigned int bus_index,
 unsigned int dev_index, unsigned int reg_index,
 enum ps3_reg_type *reg_type, u64 *bus_addr, u64 *len)
{
 int result = ps3_repository_read_dev_reg_type(bus_index, dev_index,
  reg_index, reg_type);
 return result ? result
  : ps3_repository_read_dev_reg_addr(bus_index, dev_index,
  reg_index, bus_addr, len);
}
