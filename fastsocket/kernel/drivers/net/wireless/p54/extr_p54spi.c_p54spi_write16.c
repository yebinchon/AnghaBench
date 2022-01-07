
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int u8 ;
struct p54s_priv {int dummy; } ;
typedef int __le16 ;


 int p54spi_spi_write (struct p54s_priv*,int ,int *,int) ;

__attribute__((used)) static inline void p54spi_write16(struct p54s_priv *priv, u8 addr, __le16 val)
{
 p54spi_spi_write(priv, addr, &val, sizeof(val));
}
