
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct rt2x00debug_intf* data; } ;
struct TYPE_3__ {struct rt2x00debug_intf* data; } ;
struct rt2x00debug_intf {TYPE_2__ driver_blob; TYPE_1__ chipset_blob; int driver_folder; int driver_entry; int chipset_entry; int cap_flags; int dev_flags; int register_folder; int csr_off_entry; int csr_val_entry; int eeprom_off_entry; int eeprom_val_entry; int bbp_off_entry; int bbp_val_entry; int rf_off_entry; int rf_val_entry; int rfcsr_off_entry; int rfcsr_val_entry; int queue_folder; int queue_frame_dump_entry; int queue_stats_entry; int crypto_stats_entry; int frame_dump_skbqueue; } ;
struct rt2x00_dev {struct rt2x00debug_intf* debugfs_intf; } ;


 int debugfs_remove (int ) ;
 int kfree (struct rt2x00debug_intf*) ;
 int skb_queue_purge (int *) ;
 scalar_t__ unlikely (int) ;

void rt2x00debug_deregister(struct rt2x00_dev *rt2x00dev)
{
 struct rt2x00debug_intf *intf = rt2x00dev->debugfs_intf;

 if (unlikely(!intf))
  return;

 skb_queue_purge(&intf->frame_dump_skbqueue);




 debugfs_remove(intf->queue_stats_entry);
 debugfs_remove(intf->queue_frame_dump_entry);
 debugfs_remove(intf->queue_folder);
 debugfs_remove(intf->rfcsr_val_entry);
 debugfs_remove(intf->rfcsr_off_entry);
 debugfs_remove(intf->rf_val_entry);
 debugfs_remove(intf->rf_off_entry);
 debugfs_remove(intf->bbp_val_entry);
 debugfs_remove(intf->bbp_off_entry);
 debugfs_remove(intf->eeprom_val_entry);
 debugfs_remove(intf->eeprom_off_entry);
 debugfs_remove(intf->csr_val_entry);
 debugfs_remove(intf->csr_off_entry);
 debugfs_remove(intf->register_folder);
 debugfs_remove(intf->dev_flags);
 debugfs_remove(intf->cap_flags);
 debugfs_remove(intf->chipset_entry);
 debugfs_remove(intf->driver_entry);
 debugfs_remove(intf->driver_folder);
 kfree(intf->chipset_blob.data);
 kfree(intf->driver_blob.data);
 kfree(intf);

 rt2x00dev->debugfs_intf = ((void*)0);
}
