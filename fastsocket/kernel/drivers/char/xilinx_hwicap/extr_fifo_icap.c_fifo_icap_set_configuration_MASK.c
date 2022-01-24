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
typedef  scalar_t__ u32 ;
struct hwicap_drvdata {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int EIO ; 
 scalar_t__ XHI_MAX_RETRIES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct hwicap_drvdata*) ; 
 int /*<<< orphan*/  FUNC2 (struct hwicap_drvdata*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct hwicap_drvdata*) ; 
 scalar_t__ FUNC4 (struct hwicap_drvdata*) ; 

int FUNC5(struct hwicap_drvdata *drvdata,
		u32 *frame_buffer, u32 num_words)
{

	u32 write_fifo_vacancy = 0;
	u32 retries = 0;
	u32 remaining_words;

	FUNC0(drvdata->dev, "fifo_set_configuration\n");

	/*
	 * Check if the ICAP device is Busy with the last Read/Write
	 */
	if (FUNC1(drvdata))
		return -EBUSY;

	/*
	 * Set up the buffer pointer and the words to be transferred.
	 */
	remaining_words = num_words;

	while (remaining_words > 0) {
		/*
		 * Wait until we have some data in the fifo.
		 */
		while (write_fifo_vacancy == 0) {
			write_fifo_vacancy =
				FUNC4(drvdata);
			retries++;
			if (retries > XHI_MAX_RETRIES)
				return -EIO;
		}

		/*
		 * Write data into the Write FIFO.
		 */
		while ((write_fifo_vacancy != 0) &&
				(remaining_words > 0)) {
			FUNC2(drvdata, *frame_buffer);

			remaining_words--;
			write_fifo_vacancy--;
			frame_buffer++;
		}
		/* Start pushing whatever is in the FIFO into the ICAP. */
		FUNC3(drvdata);
	}

	/* Wait until the write has finished. */
	while (FUNC1(drvdata)) {
		retries++;
		if (retries > XHI_MAX_RETRIES)
			break;
	}

	FUNC0(drvdata->dev, "done fifo_set_configuration\n");

	/*
	 * If the requested number of words have not been read from
	 * the device then indicate failure.
	 */
	if (remaining_words != 0)
		return -EIO;

	return 0;
}