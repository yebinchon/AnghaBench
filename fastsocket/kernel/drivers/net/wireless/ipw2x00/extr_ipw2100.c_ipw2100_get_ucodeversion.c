
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ver ;
typedef int u32 ;
struct ipw2100_priv {int dummy; } ;


 int EIO ;
 int IPW_ORD_UCODE_VERSION ;
 scalar_t__ ipw2100_get_ordinal (struct ipw2100_priv*,int ,int*,int*) ;
 int snprintf (char*,size_t,char*,int) ;

__attribute__((used)) static int ipw2100_get_ucodeversion(struct ipw2100_priv *priv, char *buf,
        size_t max)
{
 u32 ver;
 u32 len = sizeof(ver);

 if (ipw2100_get_ordinal(priv, IPW_ORD_UCODE_VERSION, &ver, &len))
  return -EIO;
 return snprintf(buf, max, "%08X", ver);
}
