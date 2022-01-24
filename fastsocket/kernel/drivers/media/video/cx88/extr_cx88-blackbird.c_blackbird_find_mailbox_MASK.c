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
struct cx8802_dev {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int BLACKBIRD_FIRM_IMAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int*) ; 

__attribute__((used)) static int FUNC2(struct cx8802_dev *dev)
{
	u32 signature[4]={0x12345678, 0x34567812, 0x56781234, 0x78123456};
	int signaturecnt=0;
	u32 value;
	int i;

	for (i = 0; i < BLACKBIRD_FIRM_IMAGE_SIZE; i++) {
		FUNC1(dev->core, i, &value);
		if (value == signature[signaturecnt])
			signaturecnt++;
		else
			signaturecnt = 0;
		if (4 == signaturecnt) {
			FUNC0(1, "Mailbox signature found\n");
			return i+1;
		}
	}
	FUNC0(0, "Mailbox signature values not found!\n");
	return -1;
}