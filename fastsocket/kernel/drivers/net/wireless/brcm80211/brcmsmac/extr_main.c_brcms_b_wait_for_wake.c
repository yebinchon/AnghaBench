
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcms_hardware {TYPE_1__* wlc; } ;
struct TYPE_2__ {int fastpwrup_dly; } ;


 scalar_t__ DBGST_ASLEEP ;
 int M_UCODE_DBGST ;
 int SPINWAIT (int,int ) ;
 scalar_t__ brcms_b_read_shm (struct brcms_hardware*,int ) ;
 int udelay (int) ;

__attribute__((used)) static void brcms_b_wait_for_wake(struct brcms_hardware *wlc_hw)
{

 udelay(40);


 SPINWAIT((brcms_b_read_shm(wlc_hw, M_UCODE_DBGST) ==
    DBGST_ASLEEP), wlc_hw->wlc->fastpwrup_dly);
}
