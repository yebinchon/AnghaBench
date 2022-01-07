
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;


 scalar_t__ AMD_VSA_SIG ;
 scalar_t__ GSW_VSA_SIG ;
 int VSA_VRC_DATA ;
 int VSA_VRC_INDEX ;
 int VSA_VR_SIGNATURE ;
 int VSA_VR_UNLOCK ;
 scalar_t__ inw (int ) ;
 int outw (int ,int ) ;

int geode_has_vsa2(void)
{
 static int has_vsa2 = -1;

 if (has_vsa2 == -1) {
  u16 val;





  outw(VSA_VR_UNLOCK, VSA_VRC_INDEX);
  outw(VSA_VR_SIGNATURE, VSA_VRC_INDEX);

  val = inw(VSA_VRC_DATA);
  has_vsa2 = (val == AMD_VSA_SIG || val == GSW_VSA_SIG);
 }

 return has_vsa2;
}
