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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (char const*,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,unsigned int) ; 
 int FUNC2 (char*,char**,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (char const*) ; 

__attribute__((used)) static int FUNC4(const char *ptr,unsigned int len,
			int *valptr,
			const char **names,int valid_bits)
{
	char buf[33];
	unsigned int slen;
	unsigned int idx;
	char *p2;
	int msk;
	*valptr = 0;
	for (idx = 0, msk = 1; valid_bits; idx++, msk <<= 1) {
		if (!(msk & valid_bits)) continue;
		valid_bits &= ~msk;
		if (!names[idx]) continue;
		slen = FUNC3(names[idx]);
		if (slen != len) continue;
		if (FUNC0(names[idx],ptr,slen)) continue;
		*valptr = msk;
		return 0;
	}
	if (len >= sizeof(buf)) return -EINVAL;
	FUNC1(buf,ptr,len);
	buf[len] = 0;
	*valptr = FUNC2(buf,&p2,0);
	if (*p2) return -EINVAL;
	return 0;
}