
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct niu {int dummy; } ;


 int ENODEV ;
 int TX_CS (int) ;
 int TX_CS_SNG_STATE ;
 int nr64 (int ) ;

__attribute__((used)) static int niu_tx_cs_sng_poll(struct niu *np, int channel)
{
 int limit = 1000;

 while (--limit > 0) {
  u64 val = nr64(TX_CS(channel));
  if (val & TX_CS_SNG_STATE)
   return 0;
 }
 return -ENODEV;
}
