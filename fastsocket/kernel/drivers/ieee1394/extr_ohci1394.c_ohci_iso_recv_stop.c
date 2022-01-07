
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int context; } ;
struct ohci_iso_recv {int ContextControlClear; int ohci; TYPE_1__ task; } ;
struct hpsb_iso {struct ohci_iso_recv* hostdata; } ;


 int OHCI1394_IsoRecvIntMaskClear ;
 int ohci1394_stop_context (int ,int ,int *) ;
 int reg_write (int ,int ,int) ;

__attribute__((used)) static void ohci_iso_recv_stop(struct hpsb_iso *iso)
{
 struct ohci_iso_recv *recv = iso->hostdata;


 reg_write(recv->ohci, OHCI1394_IsoRecvIntMaskClear, 1 << recv->task.context);


 ohci1394_stop_context(recv->ohci, recv->ContextControlClear, ((void*)0));
}
