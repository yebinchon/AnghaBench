
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ipw_priv {int rates_mask; } ;


 int IEEE_A ;
 int IEEE_B ;
 int LIBIPW_BASIC_RATE_MASK ;

 int LIBIPW_CCK_RATE_11MB_MASK ;

 int LIBIPW_CCK_RATE_1MB_MASK ;

 int LIBIPW_CCK_RATE_2MB_MASK ;

 int LIBIPW_CCK_RATE_5MB_MASK ;

 int LIBIPW_OFDM_RATE_12MB_MASK ;

 int LIBIPW_OFDM_RATE_18MB_MASK ;

 int LIBIPW_OFDM_RATE_24MB_MASK ;

 int LIBIPW_OFDM_RATE_36MB_MASK ;

 int LIBIPW_OFDM_RATE_48MB_MASK ;

 int LIBIPW_OFDM_RATE_54MB_MASK ;

 int LIBIPW_OFDM_RATE_6MB_MASK ;

 int LIBIPW_OFDM_RATE_9MB_MASK ;

__attribute__((used)) static int ipw_is_rate_in_mask(struct ipw_priv *priv, int ieee_mode, u8 rate)
{
 rate &= ~LIBIPW_BASIC_RATE_MASK;
 if (ieee_mode == IEEE_A) {
  switch (rate) {
  case 129:
   return priv->rates_mask & LIBIPW_OFDM_RATE_6MB_MASK ?
       1 : 0;
  case 128:
   return priv->rates_mask & LIBIPW_OFDM_RATE_9MB_MASK ?
       1 : 0;
  case 135:
   return priv->
       rates_mask & LIBIPW_OFDM_RATE_12MB_MASK ? 1 : 0;
  case 134:
   return priv->
       rates_mask & LIBIPW_OFDM_RATE_18MB_MASK ? 1 : 0;
  case 133:
   return priv->
       rates_mask & LIBIPW_OFDM_RATE_24MB_MASK ? 1 : 0;
  case 132:
   return priv->
       rates_mask & LIBIPW_OFDM_RATE_36MB_MASK ? 1 : 0;
  case 131:
   return priv->
       rates_mask & LIBIPW_OFDM_RATE_48MB_MASK ? 1 : 0;
  case 130:
   return priv->
       rates_mask & LIBIPW_OFDM_RATE_54MB_MASK ? 1 : 0;
  default:
   return 0;
  }
 }


 switch (rate) {
 case 138:
  return priv->rates_mask & LIBIPW_CCK_RATE_1MB_MASK ? 1 : 0;
 case 137:
  return priv->rates_mask & LIBIPW_CCK_RATE_2MB_MASK ? 1 : 0;
 case 136:
  return priv->rates_mask & LIBIPW_CCK_RATE_5MB_MASK ? 1 : 0;
 case 139:
  return priv->rates_mask & LIBIPW_CCK_RATE_11MB_MASK ? 1 : 0;
 }


 if (ieee_mode == IEEE_B)
  return 0;


 switch (rate) {
 case 129:
  return priv->rates_mask & LIBIPW_OFDM_RATE_6MB_MASK ? 1 : 0;
 case 128:
  return priv->rates_mask & LIBIPW_OFDM_RATE_9MB_MASK ? 1 : 0;
 case 135:
  return priv->rates_mask & LIBIPW_OFDM_RATE_12MB_MASK ? 1 : 0;
 case 134:
  return priv->rates_mask & LIBIPW_OFDM_RATE_18MB_MASK ? 1 : 0;
 case 133:
  return priv->rates_mask & LIBIPW_OFDM_RATE_24MB_MASK ? 1 : 0;
 case 132:
  return priv->rates_mask & LIBIPW_OFDM_RATE_36MB_MASK ? 1 : 0;
 case 131:
  return priv->rates_mask & LIBIPW_OFDM_RATE_48MB_MASK ? 1 : 0;
 case 130:
  return priv->rates_mask & LIBIPW_OFDM_RATE_54MB_MASK ? 1 : 0;
 }

 return 0;
}
