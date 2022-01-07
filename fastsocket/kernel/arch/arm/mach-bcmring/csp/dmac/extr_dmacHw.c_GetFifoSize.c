
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_13__ {int hi; } ;
struct TYPE_12__ {int hi; int lo; } ;
struct TYPE_11__ {int hi; int lo; } ;
struct TYPE_10__ {int hi; int lo; } ;
struct TYPE_9__ {int lo; } ;
struct TYPE_14__ {TYPE_5__ CompParm6; TYPE_4__ CompParm5; TYPE_3__ CompParm4; TYPE_2__ CompParm3; TYPE_1__ CompParm2; } ;
typedef TYPE_6__ dmacHw_MISC_t ;
typedef int dmacHw_HANDLE_t ;
struct TYPE_15__ {int channel; int module; } ;
typedef TYPE_7__ dmacHw_CBLK_t ;


 int dmacHw_ASSERT (int ) ;
 TYPE_7__* dmacHw_HANDLE_TO_CBLK (int ) ;
 scalar_t__ dmacHw_REG_MISC_BASE (int ) ;

__attribute__((used)) static uint32_t GetFifoSize(dmacHw_HANDLE_t handle
    ) {
 uint32_t val = 0;
 dmacHw_CBLK_t *pCblk = dmacHw_HANDLE_TO_CBLK(handle);
 dmacHw_MISC_t *pMiscReg =
     (dmacHw_MISC_t *) dmacHw_REG_MISC_BASE(pCblk->module);

 switch (pCblk->channel) {
 case 0:
  val = (pMiscReg->CompParm2.lo & 0x70000000) >> 28;
  break;
 case 1:
  val = (pMiscReg->CompParm3.hi & 0x70000000) >> 28;
  break;
 case 2:
  val = (pMiscReg->CompParm3.lo & 0x70000000) >> 28;
  break;
 case 3:
  val = (pMiscReg->CompParm4.hi & 0x70000000) >> 28;
  break;
 case 4:
  val = (pMiscReg->CompParm4.lo & 0x70000000) >> 28;
  break;
 case 5:
  val = (pMiscReg->CompParm5.hi & 0x70000000) >> 28;
  break;
 case 6:
  val = (pMiscReg->CompParm5.lo & 0x70000000) >> 28;
  break;
 case 7:
  val = (pMiscReg->CompParm6.hi & 0x70000000) >> 28;
  break;
 }

 if (val <= 0x4) {
  return 8 << val;
 } else {
  dmacHw_ASSERT(0);
 }
 return 0;
}
