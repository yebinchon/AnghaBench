
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct amd64_pvt {scalar_t__ ext_model; int dclr0; } ;
struct TYPE_2__ {int x86; } ;


 int BIT (int) ;
 unsigned long EDAC_FLAG_NONE ;
 unsigned long EDAC_FLAG_SECDED ;
 scalar_t__ K8_REV_F ;
 TYPE_1__ boot_cpu_data ;

__attribute__((used)) static unsigned long amd64_determine_edac_cap(struct amd64_pvt *pvt)
{
 u8 bit;
 unsigned long edac_cap = EDAC_FLAG_NONE;

 bit = (boot_cpu_data.x86 > 0xf || pvt->ext_model >= K8_REV_F)
  ? 19
  : 17;

 if (pvt->dclr0 & BIT(bit))
  edac_cap = EDAC_FLAG_SECDED;

 return edac_cap;
}
