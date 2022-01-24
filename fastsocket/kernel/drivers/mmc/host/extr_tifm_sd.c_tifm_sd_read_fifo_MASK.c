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
struct tifm_sd {int cmd_flags; unsigned char* bounce_buf_data; struct tifm_dev* dev; } ;
struct tifm_dev {scalar_t__ addr; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int DATA_CARRY ; 
 int /*<<< orphan*/  KM_BIO_DST_IRQ ; 
 scalar_t__ SOCK_MMCSD_DATA ; 
 unsigned char* FUNC0 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct tifm_sd *host, struct page *pg,
			      unsigned int off, unsigned int cnt)
{
	struct tifm_dev *sock = host->dev;
	unsigned char *buf;
	unsigned int pos = 0, val;

	buf = FUNC0(pg, KM_BIO_DST_IRQ) + off;
	if (host->cmd_flags & DATA_CARRY) {
		buf[pos++] = host->bounce_buf_data[0];
		host->cmd_flags &= ~DATA_CARRY;
	}

	while (pos < cnt) {
		val = FUNC2(sock->addr + SOCK_MMCSD_DATA);
		buf[pos++] = val & 0xff;
		if (pos == cnt) {
			host->bounce_buf_data[0] = (val >> 8) & 0xff;
			host->cmd_flags |= DATA_CARRY;
			break;
		}
		buf[pos++] = (val >> 8) & 0xff;
	}
	FUNC1(buf - off, KM_BIO_DST_IRQ);
}