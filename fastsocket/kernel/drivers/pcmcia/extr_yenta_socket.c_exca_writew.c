
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct yenta_socket {unsigned int base; } ;


 int debug (char*,struct yenta_socket*,unsigned int,int) ;
 int readb (unsigned int) ;
 int writeb (int,unsigned int) ;

__attribute__((used)) static void exca_writew(struct yenta_socket *socket, unsigned reg, u16 val)
{
 debug("%04x %04x\n", socket, reg, val);
 writeb(val, socket->base + 0x800 + reg);
 writeb(val >> 8, socket->base + 0x800 + reg + 1);


 readb(socket->base + 0x800 + reg);
 readb(socket->base + 0x800 + reg + 1);
}
