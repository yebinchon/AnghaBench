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
struct trace_seq {char* buffer; int len; } ;
typedef  unsigned char sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct trace_seq*,char*,unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC1 (struct trace_seq*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *
FUNC2(struct trace_seq *p, unsigned char *cdb, int len)
{
	const char *ret = p->buffer + p->len;
	sector_t lba = 0, txlen = 0;

	lba |= ((cdb[1] & 0x1F) << 16);
	lba |=  (cdb[2] << 8);
	lba |=   cdb[3];
	txlen = cdb[4];

	FUNC0(p, "lba=%llu txlen=%llu",
			 (unsigned long long)lba, (unsigned long long)txlen);
	FUNC1(p, 0);

	return ret;
}