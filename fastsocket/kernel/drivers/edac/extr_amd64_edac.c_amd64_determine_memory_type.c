
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amd64_pvt {int dclr0; scalar_t__ ext_model; int dchr0; } ;
typedef enum mem_type { ____Placeholder_mem_type } mem_type ;
struct TYPE_2__ {int x86; } ;


 int BIT (int) ;
 int DDR3_MODE ;
 scalar_t__ K8_REV_F ;
 int MEM_DDR ;
 int MEM_DDR2 ;
 int MEM_DDR3 ;
 int MEM_RDDR ;
 int MEM_RDDR2 ;
 int MEM_RDDR3 ;
 int amd64_info (char*,int,int ) ;
 TYPE_1__ boot_cpu_data ;
 int * edac_mem_types ;

__attribute__((used)) static enum mem_type amd64_determine_memory_type(struct amd64_pvt *pvt, int cs)
{
 enum mem_type type;


 if (boot_cpu_data.x86 >= 0x15)
  type = (pvt->dclr0 & BIT(16)) ? MEM_DDR3 : MEM_RDDR3;
 else if (boot_cpu_data.x86 == 0x10 || pvt->ext_model >= K8_REV_F) {
  if (pvt->dchr0 & DDR3_MODE)
   type = (pvt->dclr0 & BIT(16)) ? MEM_DDR3 : MEM_RDDR3;
  else
   type = (pvt->dclr0 & BIT(16)) ? MEM_DDR2 : MEM_RDDR2;
 } else {
  type = (pvt->dclr0 & BIT(18)) ? MEM_DDR : MEM_RDDR;
 }

 amd64_info("CS%d: %s\n", cs, edac_mem_types[type]);

 return type;
}
