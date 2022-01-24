#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int locality; scalar_t__ iobase; } ;
struct tpm_chip {TYPE_1__ vendor; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int TPM_ACCESS_ACTIVE_LOCALITY ; 
 int TPM_ACCESS_VALID ; 
 int FUNC1 (scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct tpm_chip *chip, int l)
{
	if ((FUNC1(chip->vendor.iobase + FUNC0(l)) &
	     (TPM_ACCESS_ACTIVE_LOCALITY | TPM_ACCESS_VALID)) ==
	    (TPM_ACCESS_ACTIVE_LOCALITY | TPM_ACCESS_VALID))
		return chip->vendor.locality = l;

	return -1;
}