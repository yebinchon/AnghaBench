
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ipw_priv {scalar_t__ hw_base; } ;


 int readb (scalar_t__) ;

__attribute__((used)) static inline u8 _ipw_read8(struct ipw_priv *ipw, unsigned long ofs)
{
 return readb(ipw->hw_base + ofs);
}
