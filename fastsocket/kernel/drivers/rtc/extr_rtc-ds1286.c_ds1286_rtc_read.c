
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ds1286_priv {int * rtcregs; } ;


 int __raw_readl (int *) ;

__attribute__((used)) static inline u8 ds1286_rtc_read(struct ds1286_priv *priv, int reg)
{
 return __raw_readl(&priv->rtcregs[reg]) & 0xff;
}
