
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {int flags; int addr_lock; int lock; } ;
typedef TYPE_1__ board_info_t ;


 int DM9000_EPAR ;
 int DM9000_EPCR ;
 int DM9000_EPDRH ;
 int DM9000_EPDRL ;
 int DM9000_PLATF_NO_EEPROM ;
 int EPCR_ERPRR ;
 int dm9000_wait_eeprom (TYPE_1__*) ;
 int ior (TYPE_1__*,int ) ;
 int iow (TYPE_1__*,int ,int) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
dm9000_read_eeprom(board_info_t *db, int offset, u8 *to)
{
 unsigned long flags;

 if (db->flags & DM9000_PLATF_NO_EEPROM) {
  to[0] = 0xff;
  to[1] = 0xff;
  return;
 }

 mutex_lock(&db->addr_lock);

 spin_lock_irqsave(&db->lock, flags);

 iow(db, DM9000_EPAR, offset);
 iow(db, DM9000_EPCR, EPCR_ERPRR);

 spin_unlock_irqrestore(&db->lock, flags);

 dm9000_wait_eeprom(db);


 msleep(1);

 spin_lock_irqsave(&db->lock, flags);

 iow(db, DM9000_EPCR, 0x0);

 to[0] = ior(db, DM9000_EPDRL);
 to[1] = ior(db, DM9000_EPDRH);

 spin_unlock_irqrestore(&db->lock, flags);

 mutex_unlock(&db->addr_lock);
}
