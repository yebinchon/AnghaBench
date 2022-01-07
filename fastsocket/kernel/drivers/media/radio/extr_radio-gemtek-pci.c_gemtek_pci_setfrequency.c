
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct gemtek_pci {int iobase; unsigned long current_frequency; int lock; } ;


 int gemtek_pci_cmd (int,int,int *) ;
 int gemtek_pci_nil (int,int *) ;
 int gemtek_pci_out (int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int outw (int,int) ;

__attribute__((used)) static void gemtek_pci_setfrequency(struct gemtek_pci *card, unsigned long frequency)
{
 int i;
 u32 value = frequency / 200 + 856;
 u16 mask = 0x8000;
 u8 last_byte;
 u32 port = card->iobase;

 mutex_lock(&card->lock);
 card->current_frequency = frequency;
 last_byte = gemtek_pci_out(0x06, port);

 i = 0;
 do {
  gemtek_pci_nil(port, &last_byte);
  i++;
 } while (i < 9);

 i = 0;
 do {
  gemtek_pci_cmd(value & mask, port, &last_byte);
  mask >>= 1;
  i++;
 } while (i < 16);

 outw(0x10, port);
 mutex_unlock(&card->lock);
}
