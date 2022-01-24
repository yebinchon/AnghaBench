#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  size_t u32 ;
struct TYPE_5__ {size_t consumed; scalar_t__* addr; int /*<<< orphan*/  length; } ;
struct sdhci_host {TYPE_2__ sg_miter; TYPE_1__* data; } ;
struct TYPE_4__ {size_t blksz; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  SDHCI_BUFFER ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 size_t FUNC4 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct sdhci_host*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC8(struct sdhci_host *host)
{
	unsigned long flags;
	size_t blksize, len, chunk;
	u32 scratch;
	u8 *buf;

	FUNC1("PIO writing\n");

	blksize = host->data->blksz;
	chunk = 0;
	scratch = 0;

	FUNC3(flags);

	while (blksize) {
		if (!FUNC6(&host->sg_miter))
			FUNC0();

		len = FUNC4(host->sg_miter.length, blksize);

		blksize -= len;
		host->sg_miter.consumed = len;

		buf = host->sg_miter.addr;

		while (len) {
			scratch |= (u32)*buf << (chunk * 8);

			buf++;
			chunk++;
			len--;

			if ((chunk == 4) || ((len == 0) && (blksize == 0))) {
				FUNC5(host, scratch, SDHCI_BUFFER);
				chunk = 0;
				scratch = 0;
			}
		}
	}

	FUNC7(&host->sg_miter);

	FUNC2(flags);
}