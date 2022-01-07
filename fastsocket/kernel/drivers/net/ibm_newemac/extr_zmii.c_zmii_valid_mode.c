
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PHY_MODE_MII ;
 int PHY_MODE_NA ;
 int PHY_MODE_RMII ;
 int PHY_MODE_SMII ;

__attribute__((used)) static inline int zmii_valid_mode(int mode)
{
 return mode == PHY_MODE_MII ||
  mode == PHY_MODE_RMII ||
  mode == PHY_MODE_SMII ||
  mode == PHY_MODE_NA;
}
