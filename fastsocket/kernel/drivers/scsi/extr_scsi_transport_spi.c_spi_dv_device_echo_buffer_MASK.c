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
typedef  int u8 ;
typedef  unsigned int u32 ;
typedef  int u16 ;
struct scsi_sense_hdr {scalar_t__ sense_key; int asc; int ascq; } ;
struct scsi_device {int dummy; } ;
typedef  enum spi_compare_returns { ____Placeholder_spi_compare_returns } spi_compare_returns ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 scalar_t__ ILLEGAL_REQUEST ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int READ_BUFFER ; 
 int /*<<< orphan*/  SDEV_QUIESCE ; 
 int SPI_COMPARE_FAILURE ; 
 int SPI_COMPARE_SKIP_TEST ; 
 int SPI_COMPARE_SUCCESS ; 
 int WRITE_BUFFER ; 
 scalar_t__ FUNC0 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct scsi_sense_hdr*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct scsi_device*,char*,int) ; 
 int FUNC7 (struct scsi_device*,char const*,int /*<<< orphan*/ ,int*,int,struct scsi_sense_hdr*) ; 

__attribute__((used)) static enum spi_compare_returns
FUNC8(struct scsi_device *sdev, u8 *buffer,
			  u8 *ptr, const int retries)
{
	int len = ptr - buffer;
	int j, k, r, result;
	unsigned int pattern = 0x0000ffff;
	struct scsi_sense_hdr sshdr;

	const char spi_write_buffer[] = {
		WRITE_BUFFER, 0x0a, 0, 0, 0, 0, 0, len >> 8, len & 0xff, 0
	};
	const char spi_read_buffer[] = {
		READ_BUFFER, 0x0a, 0, 0, 0, 0, 0, len >> 8, len & 0xff, 0
	};

	/* set up the pattern buffer.  Doesn't matter if we spill
	 * slightly beyond since that's where the read buffer is */
	for (j = 0; j < len; ) {

		/* fill the buffer with counting (test a) */
		for ( ; j < FUNC2(len, 32); j++)
			buffer[j] = j;
		k = j;
		/* fill the buffer with alternating words of 0x0 and
		 * 0xffff (test b) */
		for ( ; j < FUNC2(len, k + 32); j += 2) {
			u16 *word = (u16 *)&buffer[j];
			
			*word = (j & 0x02) ? 0x0000 : 0xffff;
		}
		k = j;
		/* fill with crosstalk (alternating 0x5555 0xaaa)
                 * (test c) */
		for ( ; j < FUNC2(len, k + 32); j += 2) {
			u16 *word = (u16 *)&buffer[j];

			*word = (j & 0x02) ? 0x5555 : 0xaaaa;
		}
		k = j;
		/* fill with shifting bits (test d) */
		for ( ; j < FUNC2(len, k + 32); j += 4) {
			u32 *word = (unsigned int *)&buffer[j];
			u32 roll = (pattern & 0x80000000) ? 1 : 0;
			
			*word = pattern;
			pattern = (pattern << 1) | roll;
		}
		/* don't bother with random data (test e) */
	}

	for (r = 0; r < retries; r++) {
		result = FUNC7(sdev, spi_write_buffer, DMA_TO_DEVICE,
				     buffer, len, &sshdr);
		if(result || !FUNC3(sdev)) {

			FUNC4(sdev, SDEV_QUIESCE);
			if (FUNC5(&sshdr)
			    && sshdr.sense_key == ILLEGAL_REQUEST
			    /* INVALID FIELD IN CDB */
			    && sshdr.asc == 0x24 && sshdr.ascq == 0x00)
				/* This would mean that the drive lied
				 * to us about supporting an echo
				 * buffer (unfortunately some Western
				 * Digital drives do precisely this)
				 */
				return SPI_COMPARE_SKIP_TEST;


			FUNC6(KERN_ERR, sdev, "Write Buffer failure %x\n", result);
			return SPI_COMPARE_FAILURE;
		}

		FUNC1(ptr, 0, len);
		FUNC7(sdev, spi_read_buffer, DMA_FROM_DEVICE,
			    ptr, len, NULL);
		FUNC4(sdev, SDEV_QUIESCE);

		if (FUNC0(buffer, ptr, len) != 0)
			return SPI_COMPARE_FAILURE;
	}
	return SPI_COMPARE_SUCCESS;
}