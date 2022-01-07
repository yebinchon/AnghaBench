
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SAU7_CPUCTRL ;
 int SAU7_PICA ;
 int SAU7_PICB ;
 int SAU7_RTC_PHYSADDR ;
 int SAU7_SIO01_PHYSADDR ;
 int SAU7_SIO23_PHYSADDR ;
 int SAU7_TIMER ;
 int SAU8_CPUCTRL ;
 int SAU8_PICA ;
 int SAU8_PICB ;
 int SAU8_RTC_PHYSADDR ;
 int SAU8_SIO01_PHYSADDR ;
 int SAU8_TIMER ;
 int apollo_model ;
 int * apollo_models ;
 int cpuctrl_physaddr ;
 int panic (char*) ;
 int pica_physaddr ;
 int picb_physaddr ;
 int printk (char*,...) ;
 int rtc_physaddr ;
 int sio01_physaddr ;
 int sio23_physaddr ;
 int timer_physaddr ;

void dn_setup_model(void) {


 printk("Apollo hardware found: ");
 printk("[%s]\n", apollo_models[apollo_model - 133]);

 switch(apollo_model) {
  case 128:
   panic("Unknown apollo model");
   break;
  case 133:
  case 132:
   sio01_physaddr=SAU8_SIO01_PHYSADDR;
   rtc_physaddr=SAU8_RTC_PHYSADDR;
   pica_physaddr=SAU8_PICA;
   picb_physaddr=SAU8_PICB;
   cpuctrl_physaddr=SAU8_CPUCTRL;
   timer_physaddr=SAU8_TIMER;
   break;
  case 130:
   sio01_physaddr=SAU7_SIO01_PHYSADDR;
   sio23_physaddr=SAU7_SIO23_PHYSADDR;
   rtc_physaddr=SAU7_RTC_PHYSADDR;
   pica_physaddr=SAU7_PICA;
   picb_physaddr=SAU7_PICB;
   cpuctrl_physaddr=SAU7_CPUCTRL;
   timer_physaddr=SAU7_TIMER;
   break;
  case 129:
   panic("Apollo model not yet supported");
   break;
  case 131:
   sio01_physaddr=SAU7_SIO01_PHYSADDR;
   sio23_physaddr=SAU7_SIO23_PHYSADDR;
   rtc_physaddr=SAU7_RTC_PHYSADDR;
   pica_physaddr=SAU7_PICA;
   picb_physaddr=SAU7_PICB;
   cpuctrl_physaddr=SAU7_CPUCTRL;
   timer_physaddr=SAU7_TIMER;
   break;
  default:
   panic("Undefined apollo model");
   break;
 }


}
