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
typedef  int u32 ;
struct mem_ctl_info {struct amd64_pvt* pvt_info; } ;
struct TYPE_2__ {int /*<<< orphan*/  bit_map; int /*<<< orphan*/  word; int /*<<< orphan*/  section; } ;
struct amd64_pvt {int /*<<< orphan*/  F3; TYPE_1__ injection; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  F10_NB_ARRAY_ADDR ; 
 int /*<<< orphan*/  F10_NB_ARRAY_DATA ; 
 int F10_NB_ARRAY_DRAM_ECC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 int FUNC4 (char const*,int,unsigned long*) ; 

__attribute__((used)) static ssize_t FUNC5(struct mem_ctl_info *mci,
					const char *data, size_t count)
{
	struct amd64_pvt *pvt = mci->pvt_info;
	unsigned long value;
	u32 section, word_bits;
	int ret = 0;

	ret = FUNC4(data, 10, &value);
	if (ret != -EINVAL) {

		/* Form value to choose 16-byte section of cacheline */
		section = F10_NB_ARRAY_DRAM_ECC |
				FUNC0(pvt->injection.section);
		FUNC2(pvt->F3, F10_NB_ARRAY_ADDR, section);

		word_bits = FUNC1(pvt->injection.word,
						pvt->injection.bit_map);

		/* Issue 'word' and 'bit' along with the READ request */
		FUNC2(pvt->F3, F10_NB_ARRAY_DATA, word_bits);

		FUNC3("section=0x%x word_bits=0x%x\n", section, word_bits);

		return count;
	}
	return ret;
}