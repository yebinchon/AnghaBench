
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ipw_priv {scalar_t__ hw_base; } ;


 int memcpy_toio (scalar_t__,void*,int) ;

__attribute__((used)) static void ipw_write_direct(struct ipw_priv *priv, u32 addr, void *buf,
        int num)
{
 memcpy_toio((priv->hw_base + addr), buf, num);
}
