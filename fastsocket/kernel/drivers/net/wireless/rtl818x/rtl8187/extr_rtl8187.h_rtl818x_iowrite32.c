
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl8187_priv {int dummy; } ;
typedef int __le32 ;


 int rtl818x_iowrite32_idx (struct rtl8187_priv*,int *,int ,int ) ;

__attribute__((used)) static inline void rtl818x_iowrite32(struct rtl8187_priv *priv, __le32 *addr,
         u32 val)
{
 rtl818x_iowrite32_idx(priv, addr, val, 0);
}
