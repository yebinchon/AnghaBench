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
struct page {int dummy; } ;
struct loop_device {char* lo_encrypt_key; int lo_encrypt_key_size; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  KM_USER0 ; 
 int /*<<< orphan*/  KM_USER1 ; 
 int READ ; 
 int /*<<< orphan*/  FUNC0 () ; 
 char* FUNC1 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct loop_device *lo, int cmd,
			struct page *raw_page, unsigned raw_off,
			struct page *loop_page, unsigned loop_off,
			int size, sector_t real_block)
{
	char *raw_buf = FUNC1(raw_page, KM_USER0) + raw_off;
	char *loop_buf = FUNC1(loop_page, KM_USER1) + loop_off;
	char *in, *out, *key;
	int i, keysize;

	if (cmd == READ) {
		in = raw_buf;
		out = loop_buf;
	} else {
		in = loop_buf;
		out = raw_buf;
	}

	key = lo->lo_encrypt_key;
	keysize = lo->lo_encrypt_key_size;
	for (i = 0; i < size; i++)
		*out++ = *in++ ^ key[(i & 511) % keysize];

	FUNC2(loop_buf, KM_USER1);
	FUNC2(raw_buf, KM_USER0);
	FUNC0();
	return 0;
}