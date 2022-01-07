
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int name; } ;
typedef TYPE_1__ adapter_t ;


 int CH_ALERT (char*,int ) ;
 int F_MI1_OP_BUSY ;
 int __t1_tpi_read (TYPE_1__*,int,int*) ;
 int udelay (int) ;

__attribute__((used)) static int mi1_wait_until_ready(adapter_t *adapter, int mi1_reg)
{
 int attempts = 100, busy;

 do {
  u32 val;

  __t1_tpi_read(adapter, mi1_reg, &val);
  busy = val & F_MI1_OP_BUSY;
  if (busy)
   udelay(10);
 } while (busy && --attempts);
 if (busy)
  CH_ALERT("%s: MDIO operation timed out\n", adapter->name);
 return busy;
}
