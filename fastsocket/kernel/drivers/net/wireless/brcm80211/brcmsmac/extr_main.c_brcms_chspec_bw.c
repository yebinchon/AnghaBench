
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int BRCMS_10_MHZ ;
 int BRCMS_20_MHZ ;
 int BRCMS_40_MHZ ;
 scalar_t__ CHSPEC_IS20 (int ) ;
 scalar_t__ CHSPEC_IS40 (int ) ;

__attribute__((used)) static int brcms_chspec_bw(u16 chanspec)
{
 if (CHSPEC_IS40(chanspec))
  return BRCMS_40_MHZ;
 if (CHSPEC_IS20(chanspec))
  return BRCMS_20_MHZ;

 return BRCMS_10_MHZ;
}
