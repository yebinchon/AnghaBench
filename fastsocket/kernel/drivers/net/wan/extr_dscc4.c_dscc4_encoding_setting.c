
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thingie {int member_0; int member_1; int bits; } ;
struct net_device {int dummy; } ;
struct dscc4_dev_priv {int encoding; } ;


 int CCR0 ;
 int ENCODING_FM_MARK ;
 int ENCODING_FM_SPACE ;
 int ENCODING_MANCHESTER ;
 int ENCODING_NRZ ;
 int ENCODING_NRZI ;
 int EOPNOTSUPP ;
 int EncodingMask ;
 int dscc4_match (struct thingie*,int ) ;
 int scc_patchl (int ,int ,struct dscc4_dev_priv*,struct net_device*,int ) ;

__attribute__((used)) static int dscc4_encoding_setting(struct dscc4_dev_priv *dpriv,
      struct net_device *dev)
{
 struct thingie encoding[] = {
  { ENCODING_NRZ, 0x00000000 },
  { ENCODING_NRZI, 0x00200000 },
  { ENCODING_FM_MARK, 0x00400000 },
  { ENCODING_FM_SPACE, 0x00500000 },
  { ENCODING_MANCHESTER, 0x00600000 },
  { -1, 0}
 };
 int i, ret = 0;

 i = dscc4_match(encoding, dpriv->encoding);
 if (i >= 0)
  scc_patchl(EncodingMask, encoding[i].bits, dpriv, dev, CCR0);
 else
  ret = -EOPNOTSUPP;
 return ret;
}
