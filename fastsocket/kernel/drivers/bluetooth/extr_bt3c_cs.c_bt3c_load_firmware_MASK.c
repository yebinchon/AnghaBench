#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* p_dev; } ;
typedef  TYPE_3__ bt3c_info_t ;
typedef  int /*<<< orphan*/  b ;
struct TYPE_5__ {unsigned int BasePort1; } ;
struct TYPE_6__ {TYPE_1__ io; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ CONTROL ; 
 int EFAULT ; 
 int EILSEQ ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,unsigned int) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 
 scalar_t__ FUNC8 (char*,int /*<<< orphan*/ *,int) ; 
 unsigned int FUNC9 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(bt3c_info_t *info, const unsigned char *firmware,
			      int count)
{
	char *ptr = (char *) firmware;
	char b[9];
	unsigned int iobase, size, addr, fcs, tmp;
	int i, err = 0;

	iobase = info->p_dev->io.BasePort1;

	/* Reset */
	FUNC2(iobase, 0x8040, 0x0404);
	FUNC2(iobase, 0x8040, 0x0400);

	FUNC10(1);

	FUNC2(iobase, 0x8040, 0x0404);

	FUNC10(17);

	/* Load */
	while (count) {
		if (ptr[0] != 'S') {
			FUNC0("Bad address in firmware");
			err = -EFAULT;
			goto error;
		}

		FUNC6(b, 0, sizeof(b));
		FUNC5(b, ptr + 2, 2);
		size = FUNC9(b, NULL, 16);

		FUNC6(b, 0, sizeof(b));
		FUNC5(b, ptr + 4, 8);
		addr = FUNC9(b, NULL, 16);

		FUNC6(b, 0, sizeof(b));
		FUNC5(b, ptr + (size * 2) + 2, 2);
		fcs = FUNC9(b, NULL, 16);

		FUNC6(b, 0, sizeof(b));
		for (tmp = 0, i = 0; i < size; i++) {
			FUNC5(b, ptr + (i * 2) + 2, 2);
			tmp += FUNC8(b, NULL, 16);
		}

		if (((tmp + fcs) & 0xff) != 0xff) {
			FUNC0("Checksum error in firmware");
			err = -EILSEQ;
			goto error;
		}

		if (ptr[1] == '3') {
			FUNC1(iobase, addr);

			FUNC6(b, 0, sizeof(b));
			for (i = 0; i < (size - 4) / 2; i++) {
				FUNC5(b, ptr + (i * 4) + 12, 4);
				tmp = FUNC9(b, NULL, 16);
				FUNC3(iobase, tmp);
			}
		}

		ptr   += (size * 2) + 6;
		count -= (size * 2) + 6;
	}

	FUNC10(17);

	/* Boot */
	FUNC1(iobase, 0x3000);
	FUNC7(FUNC4(iobase + CONTROL) | 0x40, iobase + CONTROL);

error:
	FUNC10(17);

	/* Clear */
	FUNC2(iobase, 0x7006, 0x0000);
	FUNC2(iobase, 0x7005, 0x0000);
	FUNC2(iobase, 0x7001, 0x0000);

	return err;
}