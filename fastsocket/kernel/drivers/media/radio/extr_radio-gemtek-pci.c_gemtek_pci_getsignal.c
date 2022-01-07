
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gemtek_pci {int lock; int iobase; } ;


 int inb (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int gemtek_pci_getsignal(struct gemtek_pci *card)
{
 int sig;

 mutex_lock(&card->lock);
 sig = (inb(card->iobase) & 0x08) ? 0 : 1;
 mutex_unlock(&card->lock);
 return sig;
}
