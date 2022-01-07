
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WRITE_RWA (int,int) ;
 int dprintk (char*,int ) ;
 int inb (int) ;

__attribute__((used)) static inline void rwa010_global_init(void)
{
 WRITE_RWA(6, 2);

 dprintk("Card no = %d\n", inb(0x203));


 WRITE_RWA(7, 3);
 WRITE_RWA(0x30, 0);


 WRITE_RWA(7, 4);
 WRITE_RWA(0x30, 0);


 WRITE_RWA(7, 2);
 WRITE_RWA(0x30, 0);
}
