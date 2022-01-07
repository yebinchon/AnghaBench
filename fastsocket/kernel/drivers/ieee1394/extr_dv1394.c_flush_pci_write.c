
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_ohci {int dummy; } ;


 int OHCI1394_IsochronousCycleTimer ;
 int mb () ;
 int reg_read (struct ti_ohci*,int ) ;

__attribute__((used)) static inline void flush_pci_write(struct ti_ohci *ohci)
{
 mb();
 reg_read(ohci, OHCI1394_IsochronousCycleTimer);
}
