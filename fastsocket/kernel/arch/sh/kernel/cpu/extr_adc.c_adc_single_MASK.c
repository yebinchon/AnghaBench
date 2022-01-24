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
 scalar_t__ ADCSR ; 
 unsigned char ADCSR_ADF ; 
 unsigned int ADCSR_ADST ; 
 unsigned int ADCSR_CKS ; 
 scalar_t__ ADDRAH ; 
 scalar_t__ ADDRAL ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,scalar_t__) ; 

int FUNC2(unsigned int channel)
{
	int off;
	unsigned char csr;

	if (channel >= 8) return -1;

	off = (channel & 0x03) << 2;

	csr = FUNC0(ADCSR);
	csr = channel | ADCSR_ADST | ADCSR_CKS;
	FUNC1(csr, ADCSR);

	do {
		csr = FUNC0(ADCSR);
	} while ((csr & ADCSR_ADF) == 0);

	csr &= ~(ADCSR_ADF | ADCSR_ADST);
	FUNC1(csr, ADCSR);

	return (((FUNC0(ADDRAH + off) << 8) |
		FUNC0(ADDRAL + off)) >> 6);
}