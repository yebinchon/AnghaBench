
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WRITE_RWA (int,int) ;
 int dprintk (char*,...) ;
 int inb (int) ;

__attribute__((used)) static inline void rwa010_waveartist_init(int base, int irq, int dma)
{
 int i;

 WRITE_RWA(7, 0);

 dprintk("WaveArtist base: ");
 WRITE_RWA(0x61, base & 255);
 i = inb(0x203);

 WRITE_RWA(0x60, base >> 8);
 dprintk("%02X%02X (%X),", inb(0x203), i, base);

 WRITE_RWA(0x70, irq);
 dprintk(" irq: %d (%d),", inb(0x203), irq);

 WRITE_RWA(0x74, dma);
 dprintk(" dma: %d (%d)\n", inb(0x203), dma);

 WRITE_RWA(0x30, 1);
}
