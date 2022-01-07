
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct amd64_pvt {int dummy; } ;


 int WARN_ON (int) ;
 int ddr3_cs_size (unsigned int,int) ;

__attribute__((used)) static int f16_dbam_to_chip_select(struct amd64_pvt *pvt, u8 dct,
    unsigned cs_mode)
{
 WARN_ON(cs_mode > 12);

 if (cs_mode == 6 || cs_mode == 8 ||
     cs_mode == 9 || cs_mode == 12)
  return -1;
 else
  return ddr3_cs_size(cs_mode, 0);
}
