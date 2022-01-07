
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 int PCI9111_PTRG_ON ;
 int pci9111_trigger_and_autoscan_get () ;
 int pci9111_trigger_and_autoscan_set (int) ;

__attribute__((used)) static void pci9111_pretrigger_set(struct comedi_device *dev, bool pretrigger)
{
 int flags;

 flags = pci9111_trigger_and_autoscan_get() & 0x07;

 if (pretrigger)
  flags |= PCI9111_PTRG_ON;

 pci9111_trigger_and_autoscan_set(flags);
}
