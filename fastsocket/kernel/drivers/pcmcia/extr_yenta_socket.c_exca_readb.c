
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct yenta_socket {unsigned int base; } ;


 int debug (char*,struct yenta_socket*,unsigned int,int ) ;
 int readb (unsigned int) ;

__attribute__((used)) static inline u8 exca_readb(struct yenta_socket *socket, unsigned reg)
{
 u8 val = readb(socket->base + 0x800 + reg);
 debug("%04x %02x\n", socket, reg, val);
 return val;
}
