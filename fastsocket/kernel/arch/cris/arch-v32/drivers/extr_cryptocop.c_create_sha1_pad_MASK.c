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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 unsigned long long SHA1_BLOCK_LENGTH ; 
 size_t SHA1_MIN_PAD_LENGTH ; 
 unsigned char* FUNC1 (size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long long,unsigned long long) ; 

__attribute__((used)) static int FUNC4(int alloc_flag, unsigned long long hashed_length, char **pad, size_t *pad_length)
{
	size_t                  padlen = SHA1_BLOCK_LENGTH - (hashed_length % SHA1_BLOCK_LENGTH);
	unsigned char           *p;
	int                     i;
	unsigned long long int  bit_length = hashed_length << 3;

	if (padlen < SHA1_MIN_PAD_LENGTH) padlen += SHA1_BLOCK_LENGTH;

	p = FUNC1(padlen, alloc_flag);
	if (!p) return -ENOMEM;

	*p = 0x80;
	FUNC2(p+1, 0, padlen - 1);

	FUNC0(FUNC3("create_sha1_pad: hashed_length=%lld bits == %lld bytes\n", bit_length, hashed_length));

	i = padlen - 1;
	while (bit_length != 0){
		p[i--] = bit_length % 0x100;
		bit_length >>= 8;
	}

	*pad = (char*)p;
	*pad_length = padlen;

	return 0;
}