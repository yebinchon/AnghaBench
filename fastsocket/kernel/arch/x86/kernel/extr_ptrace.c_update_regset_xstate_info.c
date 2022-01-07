
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {unsigned int n; } ;
struct TYPE_3__ {unsigned int n; } ;


 size_t REGSET_XSTATE ;
 size_t USER_XSTATE_XCR0_WORD ;
 TYPE_2__* x86_32_regsets ;
 TYPE_1__* x86_64_regsets ;
 int * xstate_fx_sw_bytes ;

void update_regset_xstate_info(unsigned int size, u64 xstate_mask)
{






 xstate_fx_sw_bytes[USER_XSTATE_XCR0_WORD] = xstate_mask;
}
