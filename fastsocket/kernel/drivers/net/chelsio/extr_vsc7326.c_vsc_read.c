
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int mac_lock; } ;
typedef TYPE_1__ adapter_t ;


 int CH_ERR (char*) ;
 int REG_LOCAL_DATA ;
 int REG_LOCAL_STATUS ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int t1_tpi_read (TYPE_1__*,int,int*) ;

__attribute__((used)) static void vsc_read(adapter_t *adapter, u32 addr, u32 *val)
{
 u32 status, vlo, vhi;
 int i;

 spin_lock_bh(&adapter->mac_lock);
 t1_tpi_read(adapter, (addr << 2) + 4, &vlo);
 i = 0;
 do {
  t1_tpi_read(adapter, (REG_LOCAL_STATUS << 2) + 4, &vlo);
  t1_tpi_read(adapter, REG_LOCAL_STATUS << 2, &vhi);
  status = (vhi << 16) | vlo;
  i++;
 } while (((status & 1) == 0) && (i < 50));
 if (i == 50)
  CH_ERR("Invalid tpi read from MAC, breaking loop.\n");

 t1_tpi_read(adapter, (REG_LOCAL_DATA << 2) + 4, &vlo);
 t1_tpi_read(adapter, REG_LOCAL_DATA << 2, &vhi);

 *val = (vhi << 16) | vlo;




 spin_unlock_bh(&adapter->mac_lock);
}
