
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_ohci {int dummy; } ;
struct hpsb_host {struct ti_ohci* hostdata; } ;
typedef int quadlet_t ;


 int OHCI1394_CSRCompareData ;
 int OHCI1394_CSRControl ;
 int OHCI1394_CSRData ;
 int OHCI_LOOP_COUNT ;
 int mdelay (int) ;
 int reg_read (struct ti_ohci*,int ) ;
 int reg_write (struct ti_ohci*,int ,int) ;

__attribute__((used)) static quadlet_t ohci_hw_csr_reg(struct hpsb_host *host, int reg,
                                 quadlet_t data, quadlet_t compare)
{
 struct ti_ohci *ohci = host->hostdata;
 int i;

 reg_write(ohci, OHCI1394_CSRData, data);
 reg_write(ohci, OHCI1394_CSRCompareData, compare);
 reg_write(ohci, OHCI1394_CSRControl, reg & 0x3);

 for (i = 0; i < OHCI_LOOP_COUNT; i++) {
  if (reg_read(ohci, OHCI1394_CSRControl) & 0x80000000)
   break;

  mdelay(1);
 }

 return reg_read(ohci, OHCI1394_CSRData);
}
