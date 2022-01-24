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
typedef  int /*<<< orphan*/  u8 ;
struct adapter {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  A_TP_EMBED_OP_FIELD0 ; 
 int /*<<< orphan*/  A_TP_EMBED_OP_FIELD1 ; 
 int /*<<< orphan*/  A_TP_EMBED_OP_FIELD2 ; 
 int /*<<< orphan*/  A_TP_EMBED_OP_FIELD3 ; 
 int /*<<< orphan*/  A_TP_EMBED_OP_FIELD4 ; 
 int /*<<< orphan*/  A_TP_EMBED_OP_FIELD5 ; 
 int EIO ; 
 int PROTO_SRAM_LINES ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct adapter*,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct adapter *adap, const u8 *data)
{
	int i;
	const __be32 *buf = (const __be32 *)data;

	for (i = 0; i < PROTO_SRAM_LINES; i++) {
		FUNC2(adap, A_TP_EMBED_OP_FIELD5, FUNC0(*buf++));
		FUNC2(adap, A_TP_EMBED_OP_FIELD4, FUNC0(*buf++));
		FUNC2(adap, A_TP_EMBED_OP_FIELD3, FUNC0(*buf++));
		FUNC2(adap, A_TP_EMBED_OP_FIELD2, FUNC0(*buf++));
		FUNC2(adap, A_TP_EMBED_OP_FIELD1, FUNC0(*buf++));

		FUNC2(adap, A_TP_EMBED_OP_FIELD0, i << 1 | 1 << 31);
		if (FUNC1(adap, A_TP_EMBED_OP_FIELD0, 1, 1, 5, 1))
			return -EIO;
	}
	FUNC2(adap, A_TP_EMBED_OP_FIELD0, 0);

	return 0;
}