
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int flags; int addr_lock; int lock; } ;
typedef TYPE_1__ board_info_t ;


 int DM9000_EPAR ;
 int DM9000_EPCR ;
 int DM9000_EPDRH ;
 int DM9000_EPDRL ;
 int DM9000_PLATF_NO_EEPROM ;
 int EPCR_ERPRW ;
 int EPCR_WEP ;
 int dm9000_wait_eeprom (TYPE_1__*) ;
 int iow (TYPE_1__*,int ,int) ;
 int mdelay (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
dm9000_write_eeprom(board_info_t *db, int offset, u8 *data)
{
 unsigned long flags;

 if (db->flags & DM9000_PLATF_NO_EEPROM)
  return;

 mutex_lock(&db->addr_lock);

 spin_lock_irqsave(&db->lock, flags);
 iow(db, DM9000_EPAR, offset);
 iow(db, DM9000_EPDRH, data[1]);
 iow(db, DM9000_EPDRL, data[0]);
 iow(db, DM9000_EPCR, EPCR_WEP | EPCR_ERPRW);
 spin_unlock_irqrestore(&db->lock, flags);

 dm9000_wait_eeprom(db);

 mdelay(1);

 spin_lock_irqsave(&db->lock, flags);
 iow(db, DM9000_EPCR, 0);
 spin_unlock_irqrestore(&db->lock, flags);

 mutex_unlock(&db->addr_lock);
}
