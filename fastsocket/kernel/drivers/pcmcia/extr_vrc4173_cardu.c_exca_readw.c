
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int base; } ;
typedef TYPE_1__ vrc4173_socket_t ;
typedef int uint16_t ;
typedef int u16 ;


 int EXCA_REGS_BASE ;
 int readb (int) ;

__attribute__((used)) static inline uint16_t exca_readw(vrc4173_socket_t *socket, uint16_t offset)
{
 uint16_t val;

 val = readb(socket->base + EXCA_REGS_BASE + offset);
 val |= (u16)readb(socket->base + EXCA_REGS_BASE + offset + 1) << 8;

 return val;
}
