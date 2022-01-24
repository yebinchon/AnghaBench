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
struct TYPE_2__ {scalar_t__ mode; } ;
struct slgt_info {unsigned int tbuf_start; unsigned int tbuf_current; unsigned int tbuf_count; TYPE_1__ params; struct slgt_desc* tbufs; } ;
struct slgt_desc {unsigned short buf_count; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct slgt_info*,char const*,unsigned int,char*) ; 
 unsigned int DMABUFSIZE ; 
 scalar_t__ MGSL_MODE_HDLC ; 
 scalar_t__ MGSL_MODE_RAW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,unsigned short) ; 
 int /*<<< orphan*/  FUNC2 (struct slgt_desc,unsigned short) ; 
 int /*<<< orphan*/  FUNC3 (struct slgt_desc,int) ; 

__attribute__((used)) static void FUNC4(struct slgt_info *info, const char *buf, unsigned int size)
{
	unsigned short count;
	unsigned int i;
	struct slgt_desc *d;

	if (size == 0)
		return;

	FUNC0(info, buf, size, "tx");

	info->tbuf_start = i = info->tbuf_current;

	while (size) {
		d = &info->tbufs[i];
		if (++i == info->tbuf_count)
			i = 0;

		count = (unsigned short)((size > DMABUFSIZE) ? DMABUFSIZE : size);
		FUNC1(d->buf, buf, count);

		size -= count;
		buf  += count;

		/*
		 * set EOF bit for last buffer of HDLC frame or
		 * for every buffer in raw mode
		 */
		if ((!size && info->params.mode == MGSL_MODE_HDLC) ||
		    info->params.mode == MGSL_MODE_RAW)
			FUNC3(*d, 1);
		else
			FUNC3(*d, 0);

		FUNC2(*d, count);
		d->buf_count = count;
	}

	info->tbuf_current = i;
}