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
typedef  int u32 ;

/* Variables and functions */
 int SSB_ADM_BASE0 ; 
 int SSB_ADM_BASE1 ; 
 int SSB_ADM_BASE2 ; 
 int SSB_ADM_NEG ; 
 int SSB_ADM_TYPE ; 
#define  SSB_ADM_TYPE0 130 
#define  SSB_ADM_TYPE1 129 
#define  SSB_ADM_TYPE2 128 
 int /*<<< orphan*/  FUNC0 (int) ; 

u32 FUNC1(u32 adm)
{
	u32 base = 0;

	switch (adm & SSB_ADM_TYPE) {
	case SSB_ADM_TYPE0:
		base = (adm & SSB_ADM_BASE0);
		break;
	case SSB_ADM_TYPE1:
		FUNC0(adm & SSB_ADM_NEG); /* unsupported */
		base = (adm & SSB_ADM_BASE1);
		break;
	case SSB_ADM_TYPE2:
		FUNC0(adm & SSB_ADM_NEG); /* unsupported */
		base = (adm & SSB_ADM_BASE2);
		break;
	default:
		FUNC0(1);
	}

	return base;
}