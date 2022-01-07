
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct orc_scb {int scbidx; } ;
struct orc_host {int index; int** allocation_map; int allocation_lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void orc_release_scb(struct orc_host *host, struct orc_scb *scb)
{
 unsigned long flags;
 u8 index, i, channel;

 spin_lock_irqsave(&(host->allocation_lock), flags);
 channel = host->index;
 index = scb->scbidx;
 i = index / 32;
 index %= 32;
 host->allocation_map[channel][i] |= (1 << index);
 spin_unlock_irqrestore(&(host->allocation_lock), flags);
}
