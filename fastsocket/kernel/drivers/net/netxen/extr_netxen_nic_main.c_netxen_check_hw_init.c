
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int revision_id; } ;
struct netxen_adapter {TYPE_1__ ahw; } ;


 int EIO ;
 int NETXEN_BDINFO_MAGIC ;
 int NETXEN_CAM_RAM (int) ;
 int NETXEN_PCIE_REG (int) ;
 int NETXEN_ROMUSB_GLB_PEGTUNE_DONE ;
 int NETXEN_ROMUSB_GLB_SW_RESET ;
 int NXRD32 (struct netxen_adapter*,int ) ;
 int NXWR32 (struct netxen_adapter*,int ,int) ;
 int NX_IS_REVISION_P2 (int ) ;
 int msleep (int) ;

__attribute__((used)) static int
netxen_check_hw_init(struct netxen_adapter *adapter, int first_boot)
{
 u32 val, timeout;

 if (first_boot == 0x55555555) {

  NXWR32(adapter, NETXEN_CAM_RAM(0x1fc), NETXEN_BDINFO_MAGIC);

  if (!NX_IS_REVISION_P2(adapter->ahw.revision_id))
   return 0;


  first_boot = NXRD32(adapter, NETXEN_PCIE_REG(0x4));
  if (!(first_boot & 0x4)) {
   first_boot |= 0x4;
   NXWR32(adapter, NETXEN_PCIE_REG(0x4), first_boot);
   NXRD32(adapter, NETXEN_PCIE_REG(0x4));
  }


  first_boot = NXRD32(adapter, NETXEN_ROMUSB_GLB_SW_RESET);
  if (first_boot != 0x80000f) {

   NXWR32(adapter, NETXEN_CAM_RAM(0x1fc), 0);
   return -EIO;
  }


  val = NXRD32(adapter, NETXEN_ROMUSB_GLB_PEGTUNE_DONE);
  NXWR32(adapter, NETXEN_ROMUSB_GLB_PEGTUNE_DONE, val | 0x1);
  timeout = 0;
  do {
   msleep(1);
   val = NXRD32(adapter, NETXEN_CAM_RAM(0x1fc));

   if (++timeout > 5000)
    return -EIO;

  } while (val == NETXEN_BDINFO_MAGIC);
 }
 return 0;
}
