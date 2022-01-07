
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DUPLEX_FULL ;




 int SUPPORTED_10000baseT_Full ;
 int SUPPORTED_1000baseT_Full ;
 int SUPPORTED_1000baseT_Half ;
 int SUPPORTED_100baseT_Full ;
 int SUPPORTED_100baseT_Half ;
 int SUPPORTED_10baseT_Full ;
 int SUPPORTED_10baseT_Half ;

__attribute__((used)) static int speed_duplex_to_caps(int speed, int duplex)
{
 int cap = 0;

 switch (speed) {
 case 131:
  if (duplex == DUPLEX_FULL)
   cap = SUPPORTED_10baseT_Full;
  else
   cap = SUPPORTED_10baseT_Half;
  break;
 case 130:
  if (duplex == DUPLEX_FULL)
   cap = SUPPORTED_100baseT_Full;
  else
   cap = SUPPORTED_100baseT_Half;
  break;
 case 129:
  if (duplex == DUPLEX_FULL)
   cap = SUPPORTED_1000baseT_Full;
  else
   cap = SUPPORTED_1000baseT_Half;
  break;
 case 128:
  if (duplex == DUPLEX_FULL)
   cap = SUPPORTED_10000baseT_Full;
 }
 return cap;
}
