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
struct srp_direct_buf {int len; } ;
struct TYPE_3__ {scalar_t__ ptr; } ;
struct scsi_cmnd {TYPE_1__ SCp; } ;
struct scatterlist {int dummy; } ;
struct iu_entry {TYPE_2__* target; } ;
typedef  int (* srp_rdma_t ) (struct scsi_cmnd*,struct scatterlist*,int,struct srp_direct_buf*,int,int,int) ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int FUNC0 (int /*<<< orphan*/ ,struct scatterlist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct scatterlist*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct iu_entry*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct iu_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_cmnd*) ; 
 struct scatterlist* FUNC7 (struct scsi_cmnd*) ; 

__attribute__((used)) static int FUNC8(struct scsi_cmnd *sc, struct srp_direct_buf *md,
			   enum dma_data_direction dir, srp_rdma_t rdma_io,
			   int dma_map, int ext_desc)
{
	struct iu_entry *iue = NULL;
	struct scatterlist *sg = NULL;
	int err, nsg = 0, len;

	if (dma_map) {
		iue = (struct iu_entry *) sc->SCp.ptr;
		sg = FUNC7(sc);

		FUNC2("%p %u %u %d\n", iue, FUNC5(sc),
			md->len, FUNC6(sc));

		nsg = FUNC0(iue->target->dev, sg, FUNC6(sc),
				 DMA_BIDIRECTIONAL);
		if (!nsg) {
			FUNC4("fail to map %p %d\n", iue, FUNC6(sc));
			return 0;
		}
		len = FUNC3(FUNC5(sc), md->len);
	} else
		len = md->len;

	err = rdma_io(sc, sg, nsg, md, 1, dir, len);

	if (dma_map)
		FUNC1(iue->target->dev, sg, nsg, DMA_BIDIRECTIONAL);

	return err;
}