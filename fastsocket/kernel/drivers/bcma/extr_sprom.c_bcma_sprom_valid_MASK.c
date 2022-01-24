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
typedef  int u16 ;

/* Variables and functions */
 int ENOENT ; 
 int SSB_SPROMSIZE_WORDS_R4 ; 
 int const SSB_SPROM_REVISION_REV ; 
 int FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

__attribute__((used)) static int FUNC2(const u16 *sprom)
{
	u16 revision;
	int err;

	err = FUNC0(sprom);
	if (err)
		return err;

	revision = sprom[SSB_SPROMSIZE_WORDS_R4 - 1] & SSB_SPROM_REVISION_REV;
	if (revision != 8 && revision != 9) {
		FUNC1("Unsupported SPROM revision: %d\n", revision);
		return -ENOENT;
	}

	return 0;
}