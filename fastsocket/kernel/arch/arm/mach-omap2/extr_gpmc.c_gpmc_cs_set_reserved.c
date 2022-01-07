
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENODEV ;
 int GPMC_CS_NUM ;
 int gpmc_cs_map ;

int gpmc_cs_set_reserved(int cs, int reserved)
{
 if (cs > GPMC_CS_NUM)
  return -ENODEV;

 gpmc_cs_map &= ~(1 << cs);
 gpmc_cs_map |= (reserved ? 1 : 0) << cs;

 return 0;
}
