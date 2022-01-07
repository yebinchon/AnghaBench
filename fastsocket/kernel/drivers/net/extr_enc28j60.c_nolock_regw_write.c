
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct enc28j60_net {int dummy; } ;


 int ENC28J60_WRITE_CTRL_REG ;
 int enc28j60_set_bank (struct enc28j60_net*,scalar_t__) ;
 int spi_write_op (struct enc28j60_net*,int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static void nolock_regw_write(struct enc28j60_net *priv,
           u8 address, u16 data)
{
 enc28j60_set_bank(priv, address);
 spi_write_op(priv, ENC28J60_WRITE_CTRL_REG, address, (u8) data);
 spi_write_op(priv, ENC28J60_WRITE_CTRL_REG, address + 1,
       (u8) (data >> 8));
}
