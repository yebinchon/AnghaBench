
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gemtek_pci {int mute; int lock; int iobase; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int outb (int,int ) ;

__attribute__((used)) static void gemtek_pci_mute(struct gemtek_pci *card)
{
 mutex_lock(&card->lock);
 outb(0x1f, card->iobase);
 card->mute = 1;
 mutex_unlock(&card->lock);
}
