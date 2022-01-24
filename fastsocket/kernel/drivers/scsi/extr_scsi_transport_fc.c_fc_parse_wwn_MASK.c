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
typedef  int /*<<< orphan*/  wwn ;
typedef  unsigned int u8 ;
typedef  int /*<<< orphan*/  u64 ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (unsigned int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int*) ; 

__attribute__((used)) static int
FUNC2(const char *ns, u64 *nm)
{
	unsigned int i, j;
	u8 wwn[8];

	FUNC0(wwn, 0, sizeof(wwn));

	/* Validate and store the new name */
	for (i=0, j=0; i < 16; i++) {
		if ((*ns >= 'a') && (*ns <= 'f'))
			j = ((j << 4) | ((*ns++ -'a') + 10));
		else if ((*ns >= 'A') && (*ns <= 'F'))
			j = ((j << 4) | ((*ns++ -'A') + 10));
		else if ((*ns >= '0') && (*ns <= '9'))
			j = ((j << 4) | (*ns++ -'0'));
		else
			return -EINVAL;
		if (i % 2) {
			wwn[i/2] = j & 0xff;
			j = 0;
		}
	}

	*nm = FUNC1(wwn);

	return 0;
}