
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VIDEOSIZE_128_96 ;
 int VIDEOSIZE_160_120 ;
 int VIDEOSIZE_176_144 ;
 int VIDEOSIZE_192_144 ;
 int VIDEOSIZE_224_168 ;
 int VIDEOSIZE_256_192 ;
 int VIDEOSIZE_288_216 ;
 int VIDEOSIZE_320_240 ;
 int VIDEOSIZE_352_288 ;
 int VIDEOSIZE_48_48 ;
 int VIDEOSIZE_64_48 ;
 int VIDEOSIZE_88_72 ;

__attribute__((used)) static int match_videosize( int width, int height )
{


 if (width>=352 && height>=288)
  return VIDEOSIZE_352_288;

 if (width>=320 && height>=240)
  return VIDEOSIZE_320_240;

 if (width>=288 && height>=216)
  return VIDEOSIZE_288_216;

 if (width>=256 && height>=192)
  return VIDEOSIZE_256_192;

 if (width>=224 && height>=168)
  return VIDEOSIZE_224_168;

 if (width>=192 && height>=144)
  return VIDEOSIZE_192_144;

 if (width>=176 && height>=144)
  return VIDEOSIZE_176_144;

 if (width>=160 && height>=120)
  return VIDEOSIZE_160_120;

 if (width>=128 && height>=96)
  return VIDEOSIZE_128_96;

 if (width>=88 && height>=72)
  return VIDEOSIZE_88_72;

 if (width>=64 && height>=48)
  return VIDEOSIZE_64_48;

 if (width>=48 && height>=48)
  return VIDEOSIZE_48_48;

 return -1;
}
