
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl8187_priv {int dummy; } ;
typedef int buf ;
typedef int __le32 ;


 int cpu_to_le16 (unsigned long) ;
 int cpu_to_le32 (int ) ;
 int rtl8187_iowrite_async (struct rtl8187_priv*,int ,int *,int) ;

__attribute__((used)) static inline void rtl818x_iowrite32_async(struct rtl8187_priv *priv,
        __le32 *addr, u32 val)
{
 __le32 buf = cpu_to_le32(val);

 rtl8187_iowrite_async(priv, cpu_to_le16((unsigned long)addr),
         &buf, sizeof(buf));
}
