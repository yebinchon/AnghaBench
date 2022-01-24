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
typedef  int /*<<< orphan*/  u32 ;
struct mxcmci_host {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ MMC_REG_BUFFER_ACCESS ; 
 int /*<<< orphan*/  STATUS_BUF_WRITE_RDY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 unsigned int FUNC1 (struct mxcmci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct mxcmci_host *host, void *_buf, int bytes)
{
	unsigned int stat;
	u32 *buf = _buf;

	while (bytes > 3) {
		stat = FUNC1(host, STATUS_BUF_WRITE_RDY);
		if (stat)
			return stat;
		FUNC2(*buf++, host->base + MMC_REG_BUFFER_ACCESS);
		bytes -= 4;
	}

	if (bytes) {
		u8 *b = (u8 *)buf;
		u32 tmp;

		stat = FUNC1(host, STATUS_BUF_WRITE_RDY);
		if (stat)
			return stat;

		FUNC0(&tmp, b, bytes);
		FUNC2(tmp, host->base + MMC_REG_BUFFER_ACCESS);
	}

	stat = FUNC1(host, STATUS_BUF_WRITE_RDY);
	if (stat)
		return stat;

	return 0;
}