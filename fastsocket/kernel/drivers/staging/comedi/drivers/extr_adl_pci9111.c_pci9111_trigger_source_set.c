
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;
typedef enum pci9111_trigger_sources { ____Placeholder_pci9111_trigger_sources } pci9111_trigger_sources ;


 int PCI9111_EITS_EXTERNAL ;
 int PCI9111_EITS_INTERNAL ;
 int PCI9111_TPST_SOFTWARE_TRIGGER ;
 int PCI9111_TPST_TIMER_PACER ;

 int pci9111_trigger_and_autoscan_get () ;
 int pci9111_trigger_and_autoscan_set (int) ;



__attribute__((used)) static void pci9111_trigger_source_set(struct comedi_device *dev,
           enum pci9111_trigger_sources source)
{
 int flags;

 flags = pci9111_trigger_and_autoscan_get() & 0x09;

 switch (source) {
 case 129:
  flags |= PCI9111_EITS_INTERNAL | PCI9111_TPST_SOFTWARE_TRIGGER;
  break;

 case 128:
  flags |= PCI9111_EITS_INTERNAL | PCI9111_TPST_TIMER_PACER;
  break;

 case 130:
  flags |= PCI9111_EITS_EXTERNAL;
  break;
 }

 pci9111_trigger_and_autoscan_set(flags);
}
