
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_sdvo_encode {int dummy; } ;
struct intel_sdvo {int dummy; } ;
typedef int encode ;


 int BUILD_BUG_ON (int) ;
 int SDVO_CMD_GET_SUPP_ENCODE ;
 int intel_sdvo_get_value (struct intel_sdvo*,int ,struct intel_sdvo_encode*,int) ;

__attribute__((used)) static bool intel_sdvo_check_supp_encode(struct intel_sdvo *intel_sdvo)
{
 struct intel_sdvo_encode encode;

 BUILD_BUG_ON(sizeof(encode) != 2);
 return intel_sdvo_get_value(intel_sdvo,
      SDVO_CMD_GET_SUPP_ENCODE,
      &encode, sizeof(encode));
}
