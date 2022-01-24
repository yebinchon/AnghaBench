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
typedef  int /*<<< orphan*/  AdvPortAddr ;
typedef  int ADV_DCNT ;

/* Variables and functions */
 int ASC_IERR_MCODE_CHKSUM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IOPW_RAM_ADDR ; 

__attribute__((used)) static int FUNC3(AdvPortAddr iop_base, const unsigned char *buf,
			    int size, int memsize, int chksum)
{
	int i, j, end, len = 0;
	ADV_DCNT sum;

	FUNC2(iop_base, IOPW_RAM_ADDR, 0);

	for (i = 253 * 2; i < size; i++) {
		if (buf[i] == 0xff) {
			unsigned short word = (buf[i + 3] << 8) | buf[i + 2];
			for (j = 0; j < buf[i + 1]; j++) {
				FUNC1(iop_base, word);
				len += 2;
			}
			i += 3;
		} else if (buf[i] == 0xfe) {
			unsigned short word = (buf[i + 2] << 8) | buf[i + 1];
			FUNC1(iop_base, word);
			i += 2;
			len += 2;
		} else {
			unsigned int off = buf[i] * 2;
			unsigned short word = (buf[off + 1] << 8) | buf[off];
			FUNC1(iop_base, word);
			len += 2;
		}
	}

	end = len;

	while (len < memsize) {
		FUNC1(iop_base, 0);
		len += 2;
	}

	/* Verify the microcode checksum. */
	sum = 0;
	FUNC2(iop_base, IOPW_RAM_ADDR, 0);

	for (len = 0; len < end; len += 2) {
		sum += FUNC0(iop_base);
	}

	if (sum != chksum)
		return ASC_IERR_MCODE_CHKSUM;

	return 0;
}