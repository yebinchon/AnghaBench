
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct talitos_private {scalar_t__ reg; } ;
struct talitos_desc {int hdr; } ;
struct device {int dummy; } ;







 int DESC_HDR_SEL0_MASK ;





 int DESC_HDR_SEL1_MASK ;


 scalar_t__ TALITOS_AESUISR ;
 scalar_t__ TALITOS_AESUISR_LO ;
 scalar_t__ TALITOS_AFEUISR ;
 scalar_t__ TALITOS_AFEUISR_LO ;
 scalar_t__ TALITOS_CRCUISR ;
 scalar_t__ TALITOS_CRCUISR_LO ;
 scalar_t__ TALITOS_DESCBUF (int) ;
 scalar_t__ TALITOS_DESCBUF_LO (int) ;
 scalar_t__ TALITOS_DEUISR ;
 scalar_t__ TALITOS_DEUISR_LO ;
 scalar_t__ TALITOS_KEUISR ;
 scalar_t__ TALITOS_KEUISR_LO ;
 scalar_t__ TALITOS_MDEUISR ;
 scalar_t__ TALITOS_MDEUISR_LO ;
 scalar_t__ TALITOS_PKEUISR ;
 scalar_t__ TALITOS_PKEUISR_LO ;
 scalar_t__ TALITOS_RNGUISR ;
 scalar_t__ TALITOS_RNGUISR_LO ;
 int dev_err (struct device*,char*,int ,int ) ;
 struct talitos_private* dev_get_drvdata (struct device*) ;
 int in_be32 (scalar_t__) ;

__attribute__((used)) static void report_eu_error(struct device *dev, int ch,
       struct talitos_desc *desc)
{
 struct talitos_private *priv = dev_get_drvdata(dev);
 int i;

 switch (desc->hdr & DESC_HDR_SEL0_MASK) {
 case 138:
  dev_err(dev, "AFEUISR 0x%08x_%08x\n",
   in_be32(priv->reg + TALITOS_AFEUISR),
   in_be32(priv->reg + TALITOS_AFEUISR_LO));
  break;
 case 136:
  dev_err(dev, "DEUISR 0x%08x_%08x\n",
   in_be32(priv->reg + TALITOS_DEUISR),
   in_be32(priv->reg + TALITOS_DEUISR_LO));
  break;
 case 134:
 case 133:
  dev_err(dev, "MDEUISR 0x%08x_%08x\n",
   in_be32(priv->reg + TALITOS_MDEUISR),
   in_be32(priv->reg + TALITOS_MDEUISR_LO));
  break;
 case 131:
  dev_err(dev, "RNGUISR 0x%08x_%08x\n",
   in_be32(priv->reg + TALITOS_RNGUISR),
   in_be32(priv->reg + TALITOS_RNGUISR_LO));
  break;
 case 132:
  dev_err(dev, "PKEUISR 0x%08x_%08x\n",
   in_be32(priv->reg + TALITOS_PKEUISR),
   in_be32(priv->reg + TALITOS_PKEUISR_LO));
  break;
 case 139:
  dev_err(dev, "AESUISR 0x%08x_%08x\n",
   in_be32(priv->reg + TALITOS_AESUISR),
   in_be32(priv->reg + TALITOS_AESUISR_LO));
  break;
 case 137:
  dev_err(dev, "CRCUISR 0x%08x_%08x\n",
   in_be32(priv->reg + TALITOS_CRCUISR),
   in_be32(priv->reg + TALITOS_CRCUISR_LO));
  break;
 case 135:
  dev_err(dev, "KEUISR 0x%08x_%08x\n",
   in_be32(priv->reg + TALITOS_KEUISR),
   in_be32(priv->reg + TALITOS_KEUISR_LO));
  break;
 }

 switch (desc->hdr & DESC_HDR_SEL1_MASK) {
 case 129:
 case 128:
  dev_err(dev, "MDEUISR 0x%08x_%08x\n",
   in_be32(priv->reg + TALITOS_MDEUISR),
   in_be32(priv->reg + TALITOS_MDEUISR_LO));
  break;
 case 130:
  dev_err(dev, "CRCUISR 0x%08x_%08x\n",
   in_be32(priv->reg + TALITOS_CRCUISR),
   in_be32(priv->reg + TALITOS_CRCUISR_LO));
  break;
 }

 for (i = 0; i < 8; i++)
  dev_err(dev, "DESCBUF 0x%08x_%08x\n",
   in_be32(priv->reg + TALITOS_DESCBUF(ch) + 8*i),
   in_be32(priv->reg + TALITOS_DESCBUF_LO(ch) + 8*i));
}
