
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int GPMC_CS_CONFIG7 ;
 int gpmc_cs_read_reg (int,int ) ;
 int gpmc_cs_write_reg (int,int ,int) ;

__attribute__((used)) static void gpmc_cs_disable_mem(int cs)
{
 u32 l;

 l = gpmc_cs_read_reg(cs, GPMC_CS_CONFIG7);
 l &= ~(1 << 6);
 gpmc_cs_write_reg(cs, GPMC_CS_CONFIG7, l);
}
