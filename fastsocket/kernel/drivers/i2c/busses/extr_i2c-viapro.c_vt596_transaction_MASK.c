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
typedef  int u8 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int EIO ; 
 int ENXIO ; 
 int ETIMEDOUT ; 
 int MAX_TIMEOUT ; 
 int /*<<< orphan*/  SMBHSTADD ; 
 int /*<<< orphan*/  SMBHSTCNT ; 
 int /*<<< orphan*/  SMBHSTSTS ; 
 int VT596_BYTE ; 
 int VT596_QUICK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__ vt596_adapter ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

__attribute__((used)) static int FUNC6(u8 size)
{
	int temp;
	int result = 0;
	int timeout = 0;

	FUNC5("Transaction (pre)", size);

	/* Make sure the SMBus host is ready to start transmitting */
	if ((temp = FUNC2(SMBHSTSTS)) & 0x1F) {
		FUNC0(&vt596_adapter.dev, "SMBus busy (0x%02x). "
			"Resetting...\n", temp);

		FUNC4(temp, SMBHSTSTS);
		if ((temp = FUNC2(SMBHSTSTS)) & 0x1F) {
			FUNC1(&vt596_adapter.dev, "SMBus reset failed! "
				"(0x%02x)\n", temp);
			return -EBUSY;
		}
	}

	/* Start the transaction by setting bit 6 */
	FUNC4(0x40 | size, SMBHSTCNT);

	/* We will always wait for a fraction of a second */
	do {
		FUNC3(1);
		temp = FUNC2(SMBHSTSTS);
	} while ((temp & 0x01) && (timeout++ < MAX_TIMEOUT));

	/* If the SMBus is still busy, we give up */
	if (timeout >= MAX_TIMEOUT) {
		result = -ETIMEDOUT;
		FUNC1(&vt596_adapter.dev, "SMBus timeout!\n");
	}

	if (temp & 0x10) {
		result = -EIO;
		FUNC1(&vt596_adapter.dev, "Transaction failed (0x%02x)\n",
			size);
	}

	if (temp & 0x08) {
		result = -EIO;
		FUNC1(&vt596_adapter.dev, "SMBus collision!\n");
	}

	if (temp & 0x04) {
		int read = FUNC2(SMBHSTADD) & 0x01;
		result = -ENXIO;
		/* The quick and receive byte commands are used to probe
		   for chips, so errors are expected, and we don't want
		   to frighten the user. */
		if (!((size == VT596_QUICK && !read) ||
		      (size == VT596_BYTE && read)))
			FUNC1(&vt596_adapter.dev, "Transaction error!\n");
	}

	/* Resetting status register */
	if (temp & 0x1F)
		FUNC4(temp, SMBHSTSTS);

	FUNC5("Transaction (post)", size);

	return result;
}