
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct amd64_pvt {int dclr1; int dclr0; scalar_t__ ext_model; } ;


 scalar_t__ K8_REV_D ;
 scalar_t__ K8_REV_F ;
 int WARN_ON (int) ;
 int WIDTH_128 ;
 int ddr2_cs_size (unsigned int,int) ;

__attribute__((used)) static int k8_dbam_to_chip_select(struct amd64_pvt *pvt, u8 dct,
      unsigned cs_mode)
{
 u32 dclr = dct ? pvt->dclr1 : pvt->dclr0;

 if (pvt->ext_model >= K8_REV_F) {
  WARN_ON(cs_mode > 11);
  return ddr2_cs_size(cs_mode, dclr & WIDTH_128);
 }
 else if (pvt->ext_model >= K8_REV_D) {
  unsigned diff;
  WARN_ON(cs_mode > 10);
  diff = cs_mode/3 + (unsigned)(cs_mode > 5);

  return 32 << (cs_mode - diff);
 }
 else {
  WARN_ON(cs_mode > 6);
  return 32 << cs_mode;
 }
}
