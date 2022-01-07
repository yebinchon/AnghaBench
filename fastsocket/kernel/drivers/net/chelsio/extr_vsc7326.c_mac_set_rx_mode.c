
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct t1_rx_mode {int dummy; } ;
struct cmac {int adapter; TYPE_1__* instance; } ;
struct TYPE_2__ {int index; } ;


 int REG_ING_FFILT_UM_EN ;
 scalar_t__ t1_rx_mode_promisc (struct t1_rx_mode*) ;
 int vsc_read (int ,int ,int*) ;
 int vsc_write (int ,int ,int) ;

__attribute__((used)) static int mac_set_rx_mode(struct cmac *mac, struct t1_rx_mode *rm)
{
 u32 v;
 int port = mac->instance->index;

 vsc_read(mac->adapter, REG_ING_FFILT_UM_EN, &v);
 v |= 1 << 12;

 if (t1_rx_mode_promisc(rm))
  v &= ~(1 << (port + 16));
 else
  v |= 1 << (port + 16);

 vsc_write(mac->adapter, REG_ING_FFILT_UM_EN, v);
 return 0;
}
