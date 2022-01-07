
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct nand_chip {int IO_ADDR_R; } ;
struct mtd_info {struct nand_chip* priv; } ;


 int readsb (int ,int *,int) ;

__attribute__((used)) static void gpio_nand_readbuf(struct mtd_info *mtd, u_char *buf, int len)
{
 struct nand_chip *this = mtd->priv;

 readsb(this->IO_ADDR_R, buf, len);
}
