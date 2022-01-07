
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct enc28j60_net {int dummy; } ;


 int ENC28J60_WRITE_CTRL_REG ;
 int enc28j60_set_bank (struct enc28j60_net*,int ) ;
 int spi_write_op (struct enc28j60_net*,int ,int ,int ) ;

__attribute__((used)) static void nolock_regb_write(struct enc28j60_net *priv,
           u8 address, u8 data)
{
 enc28j60_set_bank(priv, address);
 spi_write_op(priv, ENC28J60_WRITE_CTRL_REG, address, data);
}
