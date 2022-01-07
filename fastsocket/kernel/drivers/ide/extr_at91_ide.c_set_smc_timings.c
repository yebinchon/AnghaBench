
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;


 unsigned long AT91_SMC_BAT_SELECT ;
 int AT91_SMC_CYCLE (int const) ;
 unsigned long AT91_SMC_EXNWMODE_READY ;
 int AT91_SMC_MODE (int const) ;
 unsigned long AT91_SMC_NCS_RDPULSE_ (scalar_t__ const) ;
 unsigned long AT91_SMC_NCS_RDSETUP_ (int ) ;
 unsigned long AT91_SMC_NCS_WRPULSE_ (scalar_t__ const) ;
 unsigned long AT91_SMC_NCS_WRSETUP_ (int ) ;
 unsigned long AT91_SMC_NRDCYCLE_ (scalar_t__ const) ;
 unsigned long AT91_SMC_NRDPULSE_ (scalar_t__ const) ;
 unsigned long AT91_SMC_NRDSETUP_ (scalar_t__ const) ;
 unsigned long AT91_SMC_NWECYCLE_ (scalar_t__ const) ;
 unsigned long AT91_SMC_NWEPULSE_ (scalar_t__ const) ;
 unsigned long AT91_SMC_NWESETUP_ (scalar_t__ const) ;
 int AT91_SMC_PULSE (int const) ;
 unsigned long AT91_SMC_READMODE ;
 int AT91_SMC_SETUP (int const) ;
 unsigned long AT91_SMC_TDF_ (scalar_t__ const) ;
 unsigned long AT91_SMC_WRITEMODE ;
 int at91_sys_write (int ,unsigned long) ;

__attribute__((used)) static void set_smc_timings(const u8 chipselect, const u16 cycle,
       const u16 setup, const u16 pulse,
       const u16 data_float, int use_iordy)
{
 unsigned long mode = AT91_SMC_READMODE | AT91_SMC_WRITEMODE |
        AT91_SMC_BAT_SELECT;


 if (use_iordy)
  mode |= AT91_SMC_EXNWMODE_READY;


 if (data_float)
  mode |= AT91_SMC_TDF_(data_float);

 at91_sys_write(AT91_SMC_MODE(chipselect), mode);


 at91_sys_write(AT91_SMC_SETUP(chipselect), AT91_SMC_NWESETUP_(setup) |
         AT91_SMC_NCS_WRSETUP_(0) |
         AT91_SMC_NRDSETUP_(setup) |
         AT91_SMC_NCS_RDSETUP_(0));
 at91_sys_write(AT91_SMC_PULSE(chipselect), AT91_SMC_NWEPULSE_(pulse) |
         AT91_SMC_NCS_WRPULSE_(cycle) |
         AT91_SMC_NRDPULSE_(pulse) |
         AT91_SMC_NCS_RDPULSE_(cycle));
 at91_sys_write(AT91_SMC_CYCLE(chipselect), AT91_SMC_NWECYCLE_(cycle) |
         AT91_SMC_NRDCYCLE_(cycle));
}
