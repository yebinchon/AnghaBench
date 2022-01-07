
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WRITE_RWA (int,int) ;
 int dprintk (char*,...) ;
 int inb (int) ;

__attribute__((used)) static inline void rwa010_game_port_init(void)
{
 int i;

 WRITE_RWA(7, 5);

 dprintk("Slider base: ");
 WRITE_RWA(0x61, 1);
 i = inb(0x203);

 WRITE_RWA(0x60, 2);
 dprintk("%02X%02X (201)\n", inb(0x203), i);

 WRITE_RWA(0x30, 1);
}
