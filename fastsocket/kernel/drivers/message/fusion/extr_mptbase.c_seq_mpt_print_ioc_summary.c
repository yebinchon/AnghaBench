
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
struct seq_file {int dummy; } ;
struct TYPE_11__ {int HardwareAddressLow; } ;
struct TYPE_8__ {int Word; } ;
struct TYPE_9__ {int NumberOfPorts; TYPE_1__ FWVersion; } ;
struct TYPE_12__ {int active; int pci_irq; TYPE_4__ lan_cnfg_page1; TYPE_3__* pfacts; int req_depth; TYPE_2__ facts; int prod_name; int name; } ;
struct TYPE_10__ {int ProtocolFlags; } ;
typedef TYPE_5__ MPT_ADAPTER ;


 int MPI_PORTFACTS_PROTOCOL_LAN ;
 int MPT_FW_REV_MAGIC_ID_STRING ;
 int mpt_get_fw_exp_ver (char*,TYPE_5__*) ;
 int seq_printf (struct seq_file*,char*,...) ;
 int seq_putc (struct seq_file*,char) ;

__attribute__((used)) static void seq_mpt_print_ioc_summary(MPT_ADAPTER *ioc, struct seq_file *m, int showlan)
{
 char expVer[32];

 mpt_get_fw_exp_ver(expVer, ioc);




 seq_printf(m, "%s: %s, %s%08xh%s, Ports=%d, MaxQ=%d",
   ioc->name,
   ioc->prod_name,
   MPT_FW_REV_MAGIC_ID_STRING,
   ioc->facts.FWVersion.Word,
   expVer,
   ioc->facts.NumberOfPorts,
   ioc->req_depth);

 if (showlan && (ioc->pfacts[0].ProtocolFlags & MPI_PORTFACTS_PROTOCOL_LAN)) {
  u8 *a = (u8*)&ioc->lan_cnfg_page1.HardwareAddressLow;
  seq_printf(m, ", LanAddr=%02X:%02X:%02X:%02X:%02X:%02X",
   a[5], a[4], a[3], a[2], a[1], a[0]);
 }

 seq_printf(m, ", IRQ=%d", ioc->pci_irq);

 if (!ioc->active)
  seq_printf(m, " (disabled)");

 seq_putc(m, '\n');
}
