
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct ethtool_eeprom {int offset; int len; scalar_t__ magic; } ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ board_info_t ;


 int DM9000_PLATF_NO_EEPROM ;
 scalar_t__ DM_EEPROM_MAGIC ;
 int EINVAL ;
 int ENOENT ;
 int dm9000_write_eeprom (TYPE_1__*,int,int *) ;
 TYPE_1__* to_dm9000_board (struct net_device*) ;

__attribute__((used)) static int dm9000_set_eeprom(struct net_device *dev,
        struct ethtool_eeprom *ee, u8 *data)
{
 board_info_t *dm = to_dm9000_board(dev);
 int offset = ee->offset;
 int len = ee->len;
 int i;



 if ((len & 1) != 0 || (offset & 1) != 0)
  return -EINVAL;

 if (dm->flags & DM9000_PLATF_NO_EEPROM)
  return -ENOENT;

 if (ee->magic != DM_EEPROM_MAGIC)
  return -EINVAL;

 for (i = 0; i < len; i += 2)
  dm9000_write_eeprom(dm, (offset + i) / 2, data + i);

 return 0;
}
