
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thingie {int member_1; int bits; int member_0; } ;
struct net_device {int dummy; } ;
struct dscc4_dev_priv {int parity; } ;


 int CCR1 ;
 int CrcMask ;
 int EOPNOTSUPP ;
 int PARITY_CRC16_PR0_CCITT ;
 int PARITY_CRC16_PR1_CCITT ;
 int PARITY_CRC32_PR0_CCITT ;
 int PARITY_CRC32_PR1_CCITT ;
 int dscc4_match (struct thingie*,int ) ;
 int scc_patchl (int ,int ,struct dscc4_dev_priv*,struct net_device*,int ) ;

__attribute__((used)) static int dscc4_crc_setting(struct dscc4_dev_priv *dpriv,
        struct net_device *dev)
{
 struct thingie crc[] = {
  { PARITY_CRC16_PR0_CCITT, 0x00000010 },
  { PARITY_CRC16_PR1_CCITT, 0x00000000 },
  { PARITY_CRC32_PR0_CCITT, 0x00000011 },
  { PARITY_CRC32_PR1_CCITT, 0x00000001 }
 };
 int i, ret = 0;

 i = dscc4_match(crc, dpriv->parity);
 if (i >= 0)
  scc_patchl(CrcMask, crc[i].bits, dpriv, dev, CCR1);
 else
  ret = -EOPNOTSUPP;
 return ret;
}
