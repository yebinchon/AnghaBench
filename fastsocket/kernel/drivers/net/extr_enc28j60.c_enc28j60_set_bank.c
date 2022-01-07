
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct enc28j60_net {int bank; } ;


 int BANK_MASK ;
 int ECON1 ;
 int ECON1_BSEL0 ;
 int ECON1_BSEL1 ;
 int EIE ;
 int ENC28J60_BIT_FIELD_CLR ;
 int ENC28J60_BIT_FIELD_SET ;
 int spi_write_op (struct enc28j60_net*,int ,int,int) ;

__attribute__((used)) static void enc28j60_set_bank(struct enc28j60_net *priv, u8 addr)
{
 u8 b = (addr & BANK_MASK) >> 5;




 if (addr >= EIE && addr <= ECON1)
  return;


 if ((b & ECON1_BSEL0) != (priv->bank & ECON1_BSEL0)) {
  if (b & ECON1_BSEL0)
   spi_write_op(priv, ENC28J60_BIT_FIELD_SET, ECON1,
     ECON1_BSEL0);
  else
   spi_write_op(priv, ENC28J60_BIT_FIELD_CLR, ECON1,
     ECON1_BSEL0);
 }
 if ((b & ECON1_BSEL1) != (priv->bank & ECON1_BSEL1)) {
  if (b & ECON1_BSEL1)
   spi_write_op(priv, ENC28J60_BIT_FIELD_SET, ECON1,
     ECON1_BSEL1);
  else
   spi_write_op(priv, ENC28J60_BIT_FIELD_CLR, ECON1,
     ECON1_BSEL1);
 }
 priv->bank = b;
}
