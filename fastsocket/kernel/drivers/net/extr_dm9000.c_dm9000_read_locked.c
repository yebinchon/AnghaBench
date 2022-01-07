
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; } ;
typedef TYPE_1__ board_info_t ;


 unsigned int ior (TYPE_1__*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static unsigned int
dm9000_read_locked(board_info_t *db, int reg)
{
 unsigned long flags;
 unsigned int ret;

 spin_lock_irqsave(&db->lock, flags);
 ret = ior(db, reg);
 spin_unlock_irqrestore(&db->lock, flags);

 return ret;
}
