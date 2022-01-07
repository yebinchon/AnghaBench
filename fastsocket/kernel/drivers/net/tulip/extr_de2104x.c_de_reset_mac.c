
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct de_private {int dummy; } ;


 int BusMode ;
 int CmdReset ;
 int EBUSY ;
 int ENODEV ;
 int MacStatus ;
 int RxState ;
 int TxState ;
 int de_bus_mode ;
 int dr32 (int ) ;
 int dw32 (int ,int ) ;
 int mdelay (int) ;

__attribute__((used)) static int de_reset_mac (struct de_private *de)
{
 u32 status, tmp;






 if (dr32(BusMode) == 0xffffffff)
  return -EBUSY;


 dw32 (BusMode, CmdReset);
 mdelay (1);

 dw32 (BusMode, de_bus_mode);
 mdelay (1);

 for (tmp = 0; tmp < 5; tmp++) {
  dr32 (BusMode);
  mdelay (1);
 }

 mdelay (1);

 status = dr32(MacStatus);
 if (status & (RxState | TxState))
  return -EBUSY;
 if (status == 0xffffffff)
  return -ENODEV;
 return 0;
}
