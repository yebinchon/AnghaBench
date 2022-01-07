
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsi108_prv_data {int phy; } ;


 int TSI108_MAC_MII_ADDR ;
 int TSI108_MAC_MII_ADDR_PHY ;
 int TSI108_MAC_MII_ADDR_REG ;
 int TSI108_MAC_MII_CMD ;
 int TSI108_MAC_MII_CMD_READ ;
 int TSI108_MAC_MII_DATAIN ;
 int TSI108_MAC_MII_IND ;
 int TSI108_MAC_MII_IND_BUSY ;
 int TSI108_MAC_MII_IND_NOTVALID ;
 int TSI_READ_PHY (int ) ;
 int TSI_WRITE_PHY (int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int tsi108_read_mii(struct tsi108_prv_data *data, int reg)
{
 unsigned i;

 TSI_WRITE_PHY(TSI108_MAC_MII_ADDR,
    (data->phy << TSI108_MAC_MII_ADDR_PHY) |
    (reg << TSI108_MAC_MII_ADDR_REG));
 TSI_WRITE_PHY(TSI108_MAC_MII_CMD, 0);
 TSI_WRITE_PHY(TSI108_MAC_MII_CMD, TSI108_MAC_MII_CMD_READ);
 for (i = 0; i < 100; i++) {
  if (!(TSI_READ_PHY(TSI108_MAC_MII_IND) &
        (TSI108_MAC_MII_IND_NOTVALID | TSI108_MAC_MII_IND_BUSY)))
   break;
  udelay(10);
 }

 if (i == 100)
  return 0xffff;
 else
  return (TSI_READ_PHY(TSI108_MAC_MII_DATAIN));
}
