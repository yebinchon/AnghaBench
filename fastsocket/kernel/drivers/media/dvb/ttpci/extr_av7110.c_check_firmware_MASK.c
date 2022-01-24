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
struct av7110 {unsigned char* bin_fw; unsigned char* bin_dpram; int size_dpram; int size_fw; unsigned char* bin_root; int size_root; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int FUNC1 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static int FUNC3(struct av7110* av7110)
{
	u32 crc = 0, len = 0;
	unsigned char *ptr;

	/* check for firmware magic */
	ptr = av7110->bin_fw;
	if (ptr[0] != 'A' || ptr[1] != 'V' ||
	    ptr[2] != 'F' || ptr[3] != 'W') {
		FUNC2("dvb-ttpci: this is not an av7110 firmware\n");
		return -EINVAL;
	}
	ptr += 4;

	/* check dpram file */
	crc = FUNC1(ptr);
	ptr += 4;
	len = FUNC1(ptr);
	ptr += 4;
	if (len >= 512) {
		FUNC2("dvb-ttpci: dpram file is way too big.\n");
		return -EINVAL;
	}
	if (crc != FUNC0(0, ptr, len)) {
		FUNC2("dvb-ttpci: crc32 of dpram file does not match.\n");
		return -EINVAL;
	}
	av7110->bin_dpram = ptr;
	av7110->size_dpram = len;
	ptr += len;

	/* check root file */
	crc = FUNC1(ptr);
	ptr += 4;
	len = FUNC1(ptr);
	ptr += 4;

	if (len <= 200000 || len >= 300000 ||
	    len > ((av7110->bin_fw + av7110->size_fw) - ptr)) {
		FUNC2("dvb-ttpci: root file has strange size (%d). aborting.\n", len);
		return -EINVAL;
	}
	if( crc != FUNC0(0, ptr, len)) {
		FUNC2("dvb-ttpci: crc32 of root file does not match.\n");
		return -EINVAL;
	}
	av7110->bin_root = ptr;
	av7110->size_root = len;
	return 0;
}