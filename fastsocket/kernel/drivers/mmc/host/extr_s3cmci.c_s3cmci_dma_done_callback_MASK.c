#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct s3cmci_host {int dma_complete; void* complete_what; TYPE_2__* mrq; int /*<<< orphan*/  complete_lock; int /*<<< orphan*/  pio_tasklet; scalar_t__ dmatogo; scalar_t__ base; } ;
struct s3c2410_dma_chan {int dummy; } ;
typedef  enum s3c2410_dma_buffresult { ____Placeholder_s3c2410_dma_buffresult } s3c2410_dma_buffresult ;
struct TYPE_4__ {TYPE_1__* data; } ;
struct TYPE_3__ {int /*<<< orphan*/  error; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* COMPLETION_FINALIZE ; 
 int /*<<< orphan*/  EINVAL ; 
 int S3C2410_RES_OK ; 
 scalar_t__ S3C2410_SDICMDSTAT ; 
 scalar_t__ S3C2410_SDIDCNT ; 
 scalar_t__ S3C2410_SDIDSTA ; 
 scalar_t__ S3C2410_SDIFSTA ; 
 int /*<<< orphan*/  FUNC1 (struct s3cmci_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct s3cmci_host*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  dbg_dma ; 
 int /*<<< orphan*/  dbg_fail ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct s3c2410_dma_chan *dma_ch,
				     void *buf_id, int size,
				     enum s3c2410_dma_buffresult result)
{
	struct s3cmci_host *host = buf_id;
	unsigned long iflags;
	u32 mci_csta, mci_dsta, mci_fsta, mci_dcnt;

	mci_csta = FUNC3(host->base + S3C2410_SDICMDSTAT);
	mci_dsta = FUNC3(host->base + S3C2410_SDIDSTA);
	mci_fsta = FUNC3(host->base + S3C2410_SDIFSTA);
	mci_dcnt = FUNC3(host->base + S3C2410_SDIDCNT);

	FUNC0(!host->mrq);
	FUNC0(!host->mrq->data);
	FUNC0(!host->dmatogo);

	FUNC4(&host->complete_lock, iflags);

	if (result != S3C2410_RES_OK) {
		FUNC2(host, dbg_fail, "DMA FAILED: csta=0x%08x dsta=0x%08x "
			"fsta=0x%08x dcnt:0x%08x result:0x%08x toGo:%u\n",
			mci_csta, mci_dsta, mci_fsta,
			mci_dcnt, result, host->dmatogo);

		goto fail_request;
	}

	host->dmatogo--;
	if (host->dmatogo) {
		FUNC2(host, dbg_dma, "DMA DONE  Size:%i DSTA:[%08x] "
			"DCNT:[%08x] toGo:%u\n",
			size, mci_dsta, mci_dcnt, host->dmatogo);

		goto out;
	}

	FUNC2(host, dbg_dma, "DMA FINISHED Size:%i DSTA:%08x DCNT:%08x\n",
		size, mci_dsta, mci_dcnt);

	host->dma_complete = 1;
	host->complete_what = COMPLETION_FINALIZE;

out:
	FUNC6(&host->pio_tasklet);
	FUNC5(&host->complete_lock, iflags);
	return;

fail_request:
	host->mrq->data->error = -EINVAL;
	host->complete_what = COMPLETION_FINALIZE;
	FUNC1(host);

	goto out;
}