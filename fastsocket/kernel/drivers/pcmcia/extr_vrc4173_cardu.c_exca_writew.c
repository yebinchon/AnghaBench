
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ base; } ;
typedef TYPE_1__ vrc4173_socket_t ;
typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
typedef int u8 ;


 scalar_t__ EXCA_REGS_BASE ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static inline void exca_writew(vrc4173_socket_t *socket, uint8_t offset, uint16_t val)
{
 writeb((u8)val, socket->base + EXCA_REGS_BASE + offset);
 writeb((u8)(val >> 8), socket->base + EXCA_REGS_BASE + offset + 1);
}
