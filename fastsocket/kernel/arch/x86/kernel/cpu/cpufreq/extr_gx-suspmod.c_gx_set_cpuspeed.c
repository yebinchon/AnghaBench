
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct cpufreq_freqs {unsigned int new; int old; scalar_t__ cpu; } ;
struct TYPE_4__ {int on_duration; int off_duration; int pci_pmer1; int pci_suscfg; TYPE_1__* cs55x0; } ;
struct TYPE_3__ {int device; int revision; } ;


 int CPUFREQ_POSTCHANGE ;
 int CPUFREQ_PRECHANGE ;
 int IRQ_SPDUP ;



 int PCI_IRQTC ;
 int PCI_MODOFF ;
 int PCI_MODON ;
 int PCI_PMER1 ;
 int PCI_SUSCFG ;
 int PCI_VIDTC ;
 int PWRSVE ;
 int SUSMOD ;
 int VID_SPDUP ;
 int cpufreq_notify_transition (struct cpufreq_freqs*,int ) ;
 int dprintk (char*,...) ;
 int gx_get_cpuspeed (int ) ;
 TYPE_2__* gx_params ;
 unsigned int gx_validate_speed (unsigned int,int*,int*) ;
 int gx_write_byte (int ,int) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int pci_read_config_byte (TYPE_1__*,int ,int*) ;
 unsigned int stock_freq ;

__attribute__((used)) static void gx_set_cpuspeed(unsigned int khz)
{
 u8 suscfg, pmer1;
 unsigned int new_khz;
 unsigned long flags;
 struct cpufreq_freqs freqs;

 freqs.cpu = 0;
 freqs.old = gx_get_cpuspeed(0);

 new_khz = gx_validate_speed(khz, &gx_params->on_duration,
   &gx_params->off_duration);

 freqs.new = new_khz;

 cpufreq_notify_transition(&freqs, CPUFREQ_PRECHANGE);
 local_irq_save(flags);



 if (new_khz != stock_freq) {

  switch (gx_params->cs55x0->device) {
  case 128:
   pmer1 = gx_params->pci_pmer1 | IRQ_SPDUP | VID_SPDUP;


   gx_write_byte(PCI_IRQTC, 4);

   gx_write_byte(PCI_VIDTC, 100);
   gx_write_byte(PCI_PMER1, pmer1);

   if (gx_params->cs55x0->revision < 0x10) {

    suscfg = gx_params->pci_suscfg|SUSMOD;
   } else {

    suscfg = gx_params->pci_suscfg|SUSMOD|PWRSVE;
   }
   break;
  case 129:
  case 130:
   suscfg = gx_params->pci_suscfg | SUSMOD;
   break;
  default:
   local_irq_restore(flags);
   dprintk("fatal: try to set unknown chipset.\n");
   return;
  }
 } else {
  suscfg = gx_params->pci_suscfg & ~(SUSMOD);
  gx_params->off_duration = 0;
  gx_params->on_duration = 0;
  dprintk("suspend modulation disabled: cpu runs 100%% speed.\n");
 }

 gx_write_byte(PCI_MODOFF, gx_params->off_duration);
 gx_write_byte(PCI_MODON, gx_params->on_duration);

 gx_write_byte(PCI_SUSCFG, suscfg);
 pci_read_config_byte(gx_params->cs55x0, PCI_SUSCFG, &suscfg);

 local_irq_restore(flags);

 gx_params->pci_suscfg = suscfg;

 cpufreq_notify_transition(&freqs, CPUFREQ_POSTCHANGE);

 dprintk("suspend modulation w/ duration of ON:%d us, OFF:%d us\n",
  gx_params->on_duration * 32, gx_params->off_duration * 32);
 dprintk("suspend modulation w/ clock speed: %d kHz.\n", freqs.new);
}
