
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct adapter {int dummy; } ;


 int MTUINDEX (int) ;
 int MTUVALUE (int) ;
 int MTUVALUE_GET (int ) ;
 int MTUWIDTH_GET (int ) ;
 int NMTUS ;
 int TP_MTU_TABLE ;
 int t4_read_reg (struct adapter*,int ) ;
 int t4_write_reg (struct adapter*,int ,int) ;

void t4_read_mtu_tbl(struct adapter *adap, u16 *mtus, u8 *mtu_log)
{
 u32 v;
 int i;

 for (i = 0; i < NMTUS; ++i) {
  t4_write_reg(adap, TP_MTU_TABLE,
        MTUINDEX(0xff) | MTUVALUE(i));
  v = t4_read_reg(adap, TP_MTU_TABLE);
  mtus[i] = MTUVALUE_GET(v);
  if (mtu_log)
   mtu_log[i] = MTUWIDTH_GET(v);
 }
}
