
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct cmac {TYPE_1__* instance; } ;
struct TYPE_2__ {int mac_addr; } ;


 int memcpy (int *,int ,int) ;

__attribute__((used)) static int pm3393_macaddress_get(struct cmac *cmac, u8 mac_addr[6])
{
 memcpy(mac_addr, cmac->instance->mac_addr, 6);
 return 0;
}
