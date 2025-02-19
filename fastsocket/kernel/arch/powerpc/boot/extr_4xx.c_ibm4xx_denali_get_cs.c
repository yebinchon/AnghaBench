
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int model ;


 int DDR0_10 ;
 int DDR_CS_MAP ;
 int DDR_CS_MAP_SHIFT ;
 int DDR_GET_VAL (int,int ,int ) ;
 int SDRAM0_READ (int ) ;
 void* finddevice (char*) ;
 scalar_t__ getprop (void*,char*,char*,int) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static inline u32 ibm4xx_denali_get_cs(void)
{
 void *devp;
 char model[64];
 u32 val, cs;

 devp = finddevice("/");
 if (!devp)
  goto read_cs;

 if (getprop(devp, "model", model, sizeof(model)) <= 0)
  goto read_cs;

 model[sizeof(model)-1] = 0;

 if (!strcmp(model, "amcc,sequoia") ||
     !strcmp(model, "amcc,rainier"))
  return 1;

read_cs:

 val = SDRAM0_READ(DDR0_10);

 val = DDR_GET_VAL(val, DDR_CS_MAP, DDR_CS_MAP_SHIFT);
 cs = 0;
 while (val) {
  if (val & 0x1)
   cs++;
  val = val >> 1;
 }
 return cs;
}
