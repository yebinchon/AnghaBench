
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct brcms_band {scalar_t__ bandtype; } ;


 int APHY_SIFS_TIME ;
 int BPHY_SIFS_TIME ;
 scalar_t__ BRCM_BAND_5G ;

__attribute__((used)) static u16 get_sifs(struct brcms_band *band)
{
 return band->bandtype == BRCM_BAND_5G ? APHY_SIFS_TIME :
     BPHY_SIFS_TIME;
}
