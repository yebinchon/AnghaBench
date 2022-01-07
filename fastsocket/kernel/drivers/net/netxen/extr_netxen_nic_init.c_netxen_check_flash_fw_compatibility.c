
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {int revision_id; } ;
struct netxen_adapter {TYPE_2__* pdev; TYPE_1__ ahw; } ;
struct TYPE_4__ {int dev; } ;


 int EINVAL ;
 int EIO ;
 scalar_t__ NETXEN_DECODE_VERSION (scalar_t__) ;
 scalar_t__ NETXEN_MIN_P3_FW_SUPP ;
 int NX_FW_VERSION_OFFSET ;
 scalar_t__ NX_IS_REVISION_P2 (int ) ;
 int _build (scalar_t__) ;
 int _major (scalar_t__) ;
 int _minor (scalar_t__) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,int ,int ,int ) ;
 scalar_t__ netxen_rom_fast_read (struct netxen_adapter*,int ,int*) ;

int
netxen_check_flash_fw_compatibility(struct netxen_adapter *adapter)
{
 u32 flash_fw_ver, min_fw_ver;

 if (NX_IS_REVISION_P2(adapter->ahw.revision_id))
  return 0;

 if (netxen_rom_fast_read(adapter,
   NX_FW_VERSION_OFFSET, (int *)&flash_fw_ver)) {
  dev_err(&adapter->pdev->dev, "Unable to read flash fw"
   "version\n");
  return -EIO;
 }

 flash_fw_ver = NETXEN_DECODE_VERSION(flash_fw_ver);
 min_fw_ver = NETXEN_MIN_P3_FW_SUPP;
 if (flash_fw_ver >= min_fw_ver)
  return 0;

 dev_info(&adapter->pdev->dev, "Flash fw[%d.%d.%d] is < min fw supported"
  "[4.0.505]. Please update firmware on flash\n",
  _major(flash_fw_ver), _minor(flash_fw_ver),
  _build(flash_fw_ver));
 return -EINVAL;
}
