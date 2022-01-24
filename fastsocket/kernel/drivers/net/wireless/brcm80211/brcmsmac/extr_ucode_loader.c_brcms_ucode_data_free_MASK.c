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
struct brcms_ucode {scalar_t__ bcm43xx_bomminor; scalar_t__ bcm43xx_bommajor; scalar_t__ bcm43xx_24_lcn; scalar_t__ bcm43xx_16_mimo; scalar_t__ d11n0initvals16; scalar_t__ d11n0bsinitvals16; scalar_t__ d11n0absinitvals16; scalar_t__ d11lcn2initvals24; scalar_t__ d11lcn2bsinitvals24; scalar_t__ d11lcn1initvals24; scalar_t__ d11lcn1bsinitvals24; scalar_t__ d11lcn0initvals24; scalar_t__ d11lcn0bsinitvals24; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 

void FUNC1(struct brcms_ucode *ucode)
{
	FUNC0((void *)ucode->d11lcn0bsinitvals24);
	FUNC0((void *)ucode->d11lcn0initvals24);
	FUNC0((void *)ucode->d11lcn1bsinitvals24);
	FUNC0((void *)ucode->d11lcn1initvals24);
	FUNC0((void *)ucode->d11lcn2bsinitvals24);
	FUNC0((void *)ucode->d11lcn2initvals24);
	FUNC0((void *)ucode->d11n0absinitvals16);
	FUNC0((void *)ucode->d11n0bsinitvals16);
	FUNC0((void *)ucode->d11n0initvals16);
	FUNC0((void *)ucode->bcm43xx_16_mimo);
	FUNC0((void *)ucode->bcm43xx_24_lcn);
	FUNC0((void *)ucode->bcm43xx_bommajor);
	FUNC0((void *)ucode->bcm43xx_bomminor);
}