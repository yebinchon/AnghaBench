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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  KPF_ALL_BITS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int) ; 
 char* FUNC2 (char const*,char) ; 

__attribute__((used)) static void FUNC3(const char *optarg)
{
	uint64_t mask;
	uint64_t bits;
	const char *p;

	p = FUNC2(optarg, '=');
	if (p == optarg) {
		mask = KPF_ALL_BITS;
		bits = FUNC1(p + 1, 0);
	} else if (p) {
		mask = FUNC1(optarg, 0);
		bits = FUNC1(p + 1, 0);
	} else if (FUNC2(optarg, '~')) {
		mask = FUNC1(optarg, 1);
		bits = FUNC1(optarg, 0);
	} else {
		mask = FUNC1(optarg, 0);
		bits = KPF_ALL_BITS;
	}

	FUNC0(mask, bits);
}