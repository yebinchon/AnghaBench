
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned short msgnum; int mnlock; } ;
typedef TYPE_1__ act2000_card ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline unsigned short
actcapi_nextsmsg(act2000_card *card)
{
 unsigned long flags;
 unsigned short n;

 spin_lock_irqsave(&card->mnlock, flags);
 n = card->msgnum;
 card->msgnum++;
 card->msgnum &= 0x7fff;
 spin_unlock_irqrestore(&card->mnlock, flags);
 return n;
}
