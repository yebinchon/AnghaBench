
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct if_spi_card {int dummy; } ;
typedef int __le16 ;


 int cpu_to_le16 (int ) ;
 int spu_write (struct if_spi_card*,int ,int *,int) ;

__attribute__((used)) static inline int spu_write_u16(struct if_spi_card *card, u16 reg, u16 val)
{
 __le16 buff;

 buff = cpu_to_le16(val);
 return spu_write(card, reg, (u8 *)&buff, sizeof(u16));
}
