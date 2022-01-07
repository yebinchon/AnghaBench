
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef scalar_t__ u32 ;
struct s2io_nic {TYPE_1__* pdev; } ;
struct net_device {int dummy; } ;
struct ethtool_eeprom {int magic; scalar_t__ offset; scalar_t__ len; } ;
struct TYPE_2__ {int vendor; int device; } ;


 int DBG_PRINT (int ,char*) ;
 int EFAULT ;
 int ERR_DBG ;
 scalar_t__ INV (int ) ;
 scalar_t__ XENA_EEPROM_SPACE ;
 int memcpy (int *,scalar_t__*,int) ;
 struct s2io_nic* netdev_priv (struct net_device*) ;
 scalar_t__ read_eeprom (struct s2io_nic*,scalar_t__,int *) ;

__attribute__((used)) static int s2io_ethtool_geeprom(struct net_device *dev,
    struct ethtool_eeprom *eeprom, u8 * data_buf)
{
 u32 i, valid;
 u64 data;
 struct s2io_nic *sp = netdev_priv(dev);

 eeprom->magic = sp->pdev->vendor | (sp->pdev->device << 16);

 if ((eeprom->offset + eeprom->len) > (XENA_EEPROM_SPACE))
  eeprom->len = XENA_EEPROM_SPACE - eeprom->offset;

 for (i = 0; i < eeprom->len; i += 4) {
  if (read_eeprom(sp, (eeprom->offset + i), &data)) {
   DBG_PRINT(ERR_DBG, "Read of EEPROM failed\n");
   return -EFAULT;
  }
  valid = INV(data);
  memcpy((data_buf + i), &valid, 4);
 }
 return 0;
}
