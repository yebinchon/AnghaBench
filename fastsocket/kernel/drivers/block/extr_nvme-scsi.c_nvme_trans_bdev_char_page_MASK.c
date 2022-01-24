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
struct sg_io_hdr {int dummy; } ;
struct nvme_ns {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  EXTENDED_INQUIRY_DATA_PAGE_LENGTH ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int INQ_BDEV_CHARACTERISTICS_PAGE ; 
 int SNTI_TRANSLATION_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sg_io_hdr*,int*,int) ; 

__attribute__((used)) static int FUNC4(struct nvme_ns *ns, struct sg_io_hdr *hdr,
					int alloc_len)
{
	u8 *inq_response;
	int res = SNTI_TRANSLATION_SUCCESS;
	int xfer_len;

	inq_response = FUNC1(EXTENDED_INQUIRY_DATA_PAGE_LENGTH, GFP_KERNEL);
	if (inq_response == NULL) {
		res = -ENOMEM;
		goto out_mem;
	}

	inq_response[1] = INQ_BDEV_CHARACTERISTICS_PAGE;    /* Page Code */
	inq_response[2] = 0x00;    /* Page Length MSB */
	inq_response[3] = 0x3C;    /* Page Length LSB */
	inq_response[4] = 0x00;    /* Medium Rotation Rate MSB */
	inq_response[5] = 0x01;    /* Medium Rotation Rate LSB */
	inq_response[6] = 0x00;    /* Form Factor */

	xfer_len = FUNC2(alloc_len, EXTENDED_INQUIRY_DATA_PAGE_LENGTH);
	res = FUNC3(hdr, inq_response, xfer_len);

	FUNC0(inq_response);
 out_mem:
	return res;
}