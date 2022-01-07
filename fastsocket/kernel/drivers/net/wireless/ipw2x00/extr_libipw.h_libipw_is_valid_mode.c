
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libipw_device {int modulation; int freq_band; } ;


 int IEEE_A ;
 int IEEE_B ;
 int IEEE_G ;
 int LIBIPW_24GHZ_BAND ;
 int LIBIPW_52GHZ_BAND ;
 int LIBIPW_CCK_MODULATION ;
 int LIBIPW_OFDM_MODULATION ;

__attribute__((used)) static inline int libipw_is_valid_mode(struct libipw_device *ieee,
       int mode)
{






 if ((mode & IEEE_A) &&
     (ieee->modulation & LIBIPW_OFDM_MODULATION) &&
     (ieee->freq_band & LIBIPW_52GHZ_BAND))
  return 1;

 if ((mode & IEEE_G) &&
     (ieee->modulation & LIBIPW_OFDM_MODULATION) &&
     (ieee->freq_band & LIBIPW_24GHZ_BAND))
  return 1;

 if ((mode & IEEE_B) &&
     (ieee->modulation & LIBIPW_CCK_MODULATION) &&
     (ieee->freq_band & LIBIPW_24GHZ_BAND))
  return 1;

 return 0;
}
