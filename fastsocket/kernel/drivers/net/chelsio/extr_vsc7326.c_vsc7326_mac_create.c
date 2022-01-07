
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct cmac {TYPE_1__* instance; int * adapter; int * ops; } ;
struct TYPE_2__ {int index; scalar_t__ ticks; } ;
typedef TYPE_1__ cmac_instance ;
typedef int adapter_t ;


 int GFP_KERNEL ;
 int REG_LOCAL_STATUS ;
 struct cmac* kzalloc (int,int ) ;
 int t1_tpi_read (int *,int,int*) ;
 int udelay (int) ;
 int vsc7326_ops ;

__attribute__((used)) static struct cmac *vsc7326_mac_create(adapter_t *adapter, int index)
{
 struct cmac *mac;
 u32 val;
 int i;

 mac = kzalloc(sizeof(*mac) + sizeof(cmac_instance), GFP_KERNEL);
 if (!mac)
  return ((void*)0);

 mac->ops = &vsc7326_ops;
 mac->instance = (cmac_instance *)(mac + 1);
 mac->adapter = adapter;

 mac->instance->index = index;
 mac->instance->ticks = 0;

 i = 0;
 do {
  u32 vhi, vlo;

  vhi = vlo = 0;
  t1_tpi_read(adapter, (REG_LOCAL_STATUS << 2) + 4, &vlo);
  udelay(1);
  t1_tpi_read(adapter, REG_LOCAL_STATUS << 2, &vhi);
  udelay(5);
  val = (vhi << 16) | vlo;
 } while ((++i < 10000) && (val == 0xffffffff));

 return mac;
}
