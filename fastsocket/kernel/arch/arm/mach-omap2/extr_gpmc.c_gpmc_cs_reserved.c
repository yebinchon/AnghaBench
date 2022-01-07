
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENODEV ;
 int GPMC_CS_NUM ;
 int gpmc_cs_map ;

int gpmc_cs_reserved(int cs)
{
 if (cs > GPMC_CS_NUM)
  return -ENODEV;

 return gpmc_cs_map & (1 << cs);
}
