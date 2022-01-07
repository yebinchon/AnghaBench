
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct if_spi_card {int dummy; } ;
typedef int buf ;
typedef int __le16 ;


 int le16_to_cpup (int *) ;
 int spu_read (struct if_spi_card*,int ,int *,int) ;

__attribute__((used)) static inline int spu_read_u16(struct if_spi_card *card, u16 reg, u16 *val)
{
 __le16 buf;
 int ret;

 ret = spu_read(card, reg, (u8 *)&buf, sizeof(buf));
 if (ret == 0)
  *val = le16_to_cpup(&buf);
 return ret;
}
