
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int usDspBaseIO; scalar_t__ bInterruptClaimed; int usDspIrq; } ;
struct TYPE_4__ {TYPE_2__ rDspSettings; } ;
typedef TYPE_1__ THINKPAD_BD_DATA ;
typedef TYPE_2__ DSP_3780I_CONFIG_SETTINGS ;


 scalar_t__ FALSE ;
 int PRINTK_2 (int ,char*,...) ;
 int TRACE_TP3780I ;
 int free_irq (int ,int *) ;
 int release_region (int,int) ;

int tp3780I_ReleaseResources(THINKPAD_BD_DATA * pBDData)
{
 int retval = 0;
 DSP_3780I_CONFIG_SETTINGS *pSettings = &pBDData->rDspSettings;

 PRINTK_2(TRACE_TP3780I,
  "tp3780i::tp3780I_ReleaseResources entry pBDData %p\n", pBDData);

 release_region(pSettings->usDspBaseIO & (~3), 16);

 if (pSettings->bInterruptClaimed) {
  free_irq(pSettings->usDspIrq, ((void*)0));
  pSettings->bInterruptClaimed = FALSE;
 }

 PRINTK_2(TRACE_TP3780I,
  "tp3780i::tp3780I_ReleaseResources exit retval %x\n", retval);

 return retval;
}
