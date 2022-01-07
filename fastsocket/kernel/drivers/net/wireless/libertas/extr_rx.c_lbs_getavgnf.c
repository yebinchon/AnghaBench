
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u16 ;
struct lbs_private {size_t numSNRNF; scalar_t__* rawNF; } ;



__attribute__((used)) static u8 lbs_getavgnf(struct lbs_private *priv)
{
 u8 i;
 u16 temp = 0;
 if (priv->numSNRNF == 0)
  return 0;
 for (i = 0; i < priv->numSNRNF; i++)
  temp += priv->rawNF[i];
 return (u8) (temp / priv->numSNRNF);

}
