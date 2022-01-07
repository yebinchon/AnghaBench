
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rtl8187_priv {int dummy; } ;
typedef int __le16 ;


 int rtl818x_ioread16_idx (struct rtl8187_priv*,int *,int ) ;

__attribute__((used)) static inline u16 rtl818x_ioread16(struct rtl8187_priv *priv, __le16 *addr)
{
 return rtl818x_ioread16_idx(priv, addr, 0);
}
