
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_hardware {int wlc; } ;


 int BRCMS_USE_COREFLAGS ;
 int brcms_b_corereset (struct brcms_hardware*,int ) ;
 int brcms_c_flushqueues (int ) ;
 int brcms_deviceremoved (int ) ;

__attribute__((used)) static void brcms_b_reset(struct brcms_hardware *wlc_hw)
{

 if (!brcms_deviceremoved(wlc_hw->wlc))
  brcms_b_corereset(wlc_hw, BRCMS_USE_COREFLAGS);


 brcms_c_flushqueues(wlc_hw->wlc);
}
