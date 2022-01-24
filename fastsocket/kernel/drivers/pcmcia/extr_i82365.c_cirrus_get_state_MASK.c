#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_short ;
struct TYPE_5__ {int misc1; void** timer; void* misc2; } ;
typedef  TYPE_2__ cirrus_state_t ;
struct TYPE_4__ {TYPE_2__ cirrus; } ;
struct TYPE_6__ {TYPE_1__ state; } ;

/* Variables and functions */
 int PD67_MC1_INPACK_ENA ; 
 int PD67_MC1_MEDIA_ENA ; 
 scalar_t__ PD67_MISC_CTL_1 ; 
 scalar_t__ PD67_MISC_CTL_2 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (size_t,scalar_t__) ; 
 TYPE_3__* socket ; 

__attribute__((used)) static void FUNC2(u_short s)
{
    int i;
    cirrus_state_t *p = &socket[s].state.cirrus;
    p->misc1 = FUNC1(s, PD67_MISC_CTL_1);
    p->misc1 &= (PD67_MC1_MEDIA_ENA | PD67_MC1_INPACK_ENA);
    p->misc2 = FUNC1(s, PD67_MISC_CTL_2);
    for (i = 0; i < 6; i++)
	p->timer[i] = FUNC1(s, FUNC0(0)+i);
}