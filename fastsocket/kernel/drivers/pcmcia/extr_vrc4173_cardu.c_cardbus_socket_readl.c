
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ base; } ;
typedef TYPE_1__ vrc4173_socket_t ;
typedef int uint32_t ;
typedef scalar_t__ u16 ;


 scalar_t__ CARDBUS_SOCKET_REGS_BASE ;
 int readl (scalar_t__) ;

__attribute__((used)) static inline uint32_t cardbus_socket_readl(vrc4173_socket_t *socket, u16 offset)
{
 return readl(socket->base + CARDBUS_SOCKET_REGS_BASE + offset);
}
