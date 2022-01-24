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
struct csr1212_csr {int bus_info_len; int crc_len; TYPE_2__* cache_head; int /*<<< orphan*/ * bus_info_data; int /*<<< orphan*/  private; TYPE_1__* ops; } ;
struct csr1212_cache_region {int offset_end; scalar_t__ offset_start; int /*<<< orphan*/ * prev; int /*<<< orphan*/ * next; } ;
struct csr1212_bus_info_block_img {int /*<<< orphan*/  crc; int /*<<< orphan*/  crc_length; int /*<<< orphan*/  data; } ;
struct TYPE_4__ {struct csr1212_cache_region* filled_tail; struct csr1212_cache_region* filled_head; int /*<<< orphan*/ * data; } ;
struct TYPE_3__ {int (* bus_read ) (struct csr1212_csr*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ CSR1212_CONFIG_ROM_SPACE_BASE ; 
 struct csr1212_cache_region* FUNC0 (int) ; 
 int CSR1212_SUCCESS ; 
 int EINVAL ; 
 int ENOMEM ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct csr1212_csr*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct csr1212_csr*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct csr1212_csr *csr)
{
	struct csr1212_bus_info_block_img *bi;
	struct csr1212_cache_region *cr;
	int i;
	int ret;

	for (i = 0; i < csr->bus_info_len; i += sizeof(u32)) {
		ret = csr->ops->bus_read(csr, CSR1212_CONFIG_ROM_SPACE_BASE + i,
				&csr->cache_head->data[FUNC2(i)],
				csr->private);
		if (ret != CSR1212_SUCCESS)
			return ret;

		/* check ROM header's info_length */
		if (i == 0 &&
		    FUNC1(csr->cache_head->data[0]) >> 24 !=
		    FUNC2(csr->bus_info_len) - 1)
			return -EINVAL;
	}

	bi = (struct csr1212_bus_info_block_img*)csr->cache_head->data;
	csr->crc_len = FUNC4(bi->crc_length);

	/* IEEE 1212 recommends that crc_len be equal to bus_info_len, but that
	 * is not always the case, so read the rest of the crc area 1 quadlet at
	 * a time. */
	for (i = csr->bus_info_len; i <= csr->crc_len; i += sizeof(u32)) {
		ret = csr->ops->bus_read(csr, CSR1212_CONFIG_ROM_SPACE_BASE + i,
				&csr->cache_head->data[FUNC2(i)],
				csr->private);
		if (ret != CSR1212_SUCCESS)
			return ret;
	}

	FUNC3(bi->data, bi->crc_length, bi->crc,
			  &csr->bus_info_data[3]);

	cr = FUNC0(sizeof(*cr));
	if (!cr)
		return -ENOMEM;

	cr->next = NULL;
	cr->prev = NULL;
	cr->offset_start = 0;
	cr->offset_end = csr->crc_len + 4;

	csr->cache_head->filled_head = cr;
	csr->cache_head->filled_tail = cr;

	return CSR1212_SUCCESS;
}