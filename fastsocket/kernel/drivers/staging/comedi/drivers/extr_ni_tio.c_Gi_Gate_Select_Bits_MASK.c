#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 unsigned int Gi_Gate_Select_Mask ; 
 unsigned int Gi_Gate_Select_Shift ; 

__attribute__((used)) static inline unsigned FUNC0(unsigned gate_select)
{
	return (gate_select << Gi_Gate_Select_Shift) & Gi_Gate_Select_Mask;
}