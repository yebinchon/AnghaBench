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
struct zoran {int /*<<< orphan*/  intr_counter_JPEGRepIRQ; int /*<<< orphan*/  intr_counter_CodRepIRQ; int /*<<< orphan*/  intr_counter_GIRQ0; int /*<<< orphan*/  intr_counter_GIRQ1; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZR36057_ISR ; 
 int ZR36057_ISR_CodRepIRQ ; 
 int ZR36057_ISR_GIRQ0 ; 
 int ZR36057_ISR_GIRQ1 ; 
 int ZR36057_ISR_JPEGRepIRQ ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32
FUNC2 (struct zoran *zr)
{
	u32 isr;

	if ((isr = FUNC0(ZR36057_ISR) & 0x78000000)) {
		if (isr & ZR36057_ISR_GIRQ1) {
			FUNC1(ZR36057_ISR_GIRQ1, ZR36057_ISR);
			zr->intr_counter_GIRQ1++;
		}
		if (isr & ZR36057_ISR_GIRQ0) {
			FUNC1(ZR36057_ISR_GIRQ0, ZR36057_ISR);
			zr->intr_counter_GIRQ0++;
		}
		if (isr & ZR36057_ISR_CodRepIRQ) {
			FUNC1(ZR36057_ISR_CodRepIRQ, ZR36057_ISR);
			zr->intr_counter_CodRepIRQ++;
		}
		if (isr & ZR36057_ISR_JPEGRepIRQ) {
			FUNC1(ZR36057_ISR_JPEGRepIRQ, ZR36057_ISR);
			zr->intr_counter_JPEGRepIRQ++;
		}
	}
	return isr;
}