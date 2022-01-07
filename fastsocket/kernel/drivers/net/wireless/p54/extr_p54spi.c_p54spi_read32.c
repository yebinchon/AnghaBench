
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int u8 ;
typedef int u32 ;
struct p54s_priv {int dummy; } ;
typedef int __le32 ;


 int le32_to_cpu (int ) ;
 int p54spi_spi_read (struct p54s_priv*,int ,int *,int) ;

__attribute__((used)) static u32 p54spi_read32(struct p54s_priv *priv, u8 addr)
{
 __le32 val;

 p54spi_spi_read(priv, addr, &val, sizeof(val));

 return le32_to_cpu(val);
}
