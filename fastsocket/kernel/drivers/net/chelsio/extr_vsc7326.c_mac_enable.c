
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct cmac {int adapter; TYPE_1__* instance; } ;
struct TYPE_2__ {int index; } ;


 int MAC_DIRECTION_RX ;
 int MAC_DIRECTION_TX ;
 int REG_HIGH_LOW_WM (int,int) ;
 int REG_MODE_CFG (int) ;
 int WM_ENABLE ;
 int vsc_read (int ,int ,int*) ;
 int vsc_write (int ,int ,int) ;

__attribute__((used)) static int mac_enable(struct cmac *mac, int which)
{
 u32 val;
 int port = mac->instance->index;


 vsc_write(mac->adapter, REG_HIGH_LOW_WM(1,port), WM_ENABLE);

 vsc_read(mac->adapter, REG_MODE_CFG(port), &val);
 if (which & MAC_DIRECTION_RX)
  val |= 0x2;
 if (which & MAC_DIRECTION_TX)
  val |= 1;
 vsc_write(mac->adapter, REG_MODE_CFG(port), val);
 return 0;
}
