
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct enc28j60_net {int dummy; } ;


 int ENC28J60_READ_CTRL_REG ;
 int enc28j60_set_bank (struct enc28j60_net*,int ) ;
 int spi_read_op (struct enc28j60_net*,int ,int ) ;

__attribute__((used)) static int nolock_regb_read(struct enc28j60_net *priv,
         u8 address)
{
 enc28j60_set_bank(priv, address);
 return spi_read_op(priv, ENC28J60_READ_CTRL_REG, address);
}
