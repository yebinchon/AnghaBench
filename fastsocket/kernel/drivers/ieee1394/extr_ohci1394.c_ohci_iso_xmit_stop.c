
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ti_ohci {int dummy; } ;
struct TYPE_2__ {int context; } ;
struct ohci_iso_xmit {int ContextControlClear; struct ti_ohci* ohci; TYPE_1__ task; } ;
struct hpsb_iso {struct ohci_iso_xmit* hostdata; } ;


 int KERN_ERR ;
 int OHCI1394_IsoXmitIntMaskClear ;
 int PRINT (int ,char*) ;
 scalar_t__ ohci1394_stop_context (struct ti_ohci*,int ,int *) ;
 int reg_write (struct ti_ohci*,int ,int) ;

__attribute__((used)) static void ohci_iso_xmit_stop(struct hpsb_iso *iso)
{
 struct ohci_iso_xmit *xmit = iso->hostdata;
 struct ti_ohci *ohci = xmit->ohci;


 reg_write(xmit->ohci, OHCI1394_IsoXmitIntMaskClear, 1 << xmit->task.context);


 if (ohci1394_stop_context(xmit->ohci, xmit->ContextControlClear, ((void*)0))) {

  PRINT(KERN_ERR,
        "you probably exceeded the OHCI card's bandwidth limit - "
        "reload the module and reduce xmit bandwidth");
 }
}
