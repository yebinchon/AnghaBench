
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ expires; } ;
struct TYPE_4__ {TYPE_1__ timer; } ;
struct hfc_pci {TYPE_2__ hw; } ;


 scalar_t__ jiffies ;

__attribute__((used)) static void
hfcpci_Timer(struct hfc_pci *hc)
{
 hc->hw.timer.expires = jiffies + 75;





}
