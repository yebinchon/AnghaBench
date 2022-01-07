
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipw_priv {int dummy; } ;


 int IPW_AUTOINC_ADDR ;
 int IPW_AUTOINC_DATA ;
 int _ipw_write32 (struct ipw_priv*,int ,int) ;

__attribute__((used)) static void ipw_zero_memory(struct ipw_priv *priv, u32 start, u32 count)
{
 count >>= 2;
 if (!count)
  return;
 _ipw_write32(priv, IPW_AUTOINC_ADDR, start);
 while (count--)
  _ipw_write32(priv, IPW_AUTOINC_DATA, 0);
}
