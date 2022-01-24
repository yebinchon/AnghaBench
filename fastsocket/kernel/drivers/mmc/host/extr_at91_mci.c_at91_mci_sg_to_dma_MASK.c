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
struct scatterlist {int offset; int /*<<< orphan*/  length; } ;
struct mmc_data {unsigned int blksz; unsigned int blocks; unsigned int sg_len; struct scatterlist* sg; } ;
struct at91mci_host {unsigned int* buffer; int total_length; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  KM_BIO_SRC_IRQ ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 unsigned int* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int*,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int) ; 

__attribute__((used)) static inline void FUNC11(struct at91mci_host *host, struct mmc_data *data)
{
	unsigned int len, i, size;
	unsigned *dmabuf = host->buffer;

	size = data->blksz * data->blocks;
	len = data->sg_len;

	/* AT91SAM926[0/3] Data Write Operation and number of bytes erratum */
	if (FUNC2() || FUNC3())
		if (host->total_length == 12)
			FUNC7(dmabuf, 0, 12);

	/*
	 * Just loop through all entries. Size might not
	 * be the entire list though so make sure that
	 * we do not transfer too much.
	 */
	for (i = 0; i < len; i++) {
		struct scatterlist *sg;
		int amount;
		unsigned int *sgbuffer;

		sg = &data->sg[i];

		sgbuffer = FUNC4(FUNC9(sg), KM_BIO_SRC_IRQ) + sg->offset;
		amount = FUNC8(size, sg->length);
		size -= amount;

		if (FUNC1()) {	/* AT91RM9200 errata */
			int index;

			for (index = 0; index < (amount / 4); index++)
				*dmabuf++ = FUNC10(sgbuffer[index]);
		} else {
			FUNC6(dmabuf, sgbuffer, amount);
			dmabuf += amount;
		}

		FUNC5(sgbuffer, KM_BIO_SRC_IRQ);

		if (size == 0)
			break;
	}

	/*
	 * Check that we didn't get a request to transfer
	 * more data than can fit into the SG list.
	 */
	FUNC0(size != 0);
}