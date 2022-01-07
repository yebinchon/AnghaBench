
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct yenta_socket {unsigned int base; } ;


 int debug (char*,struct yenta_socket*,unsigned int,int ) ;
 int readl (unsigned int) ;

__attribute__((used)) static inline u32 cb_readl(struct yenta_socket *socket, unsigned reg)
{
 u32 val = readl(socket->base + reg);
 debug("%04x %08x\n", socket, reg, val);
 return val;
}
