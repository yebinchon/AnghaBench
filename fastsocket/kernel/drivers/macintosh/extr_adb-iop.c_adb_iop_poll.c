
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ADB_IOP ;
 int adb_iop_start () ;
 scalar_t__ adb_iop_state ;
 scalar_t__ idle ;
 int iop_ism_irq (int ,void*) ;

void adb_iop_poll(void)
{
 if (adb_iop_state == idle) adb_iop_start();
 iop_ism_irq(0, (void *) ADB_IOP);
}
