#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vio_port {int /*<<< orphan*/  riobn; int /*<<< orphan*/  liobn; } ;
struct srp_target {int dummy; } ;
struct srp_direct_buf {unsigned int len; scalar_t__ va; } ;
struct TYPE_2__ {scalar_t__ ptr; } ;
struct scsi_cmnd {TYPE_1__ SCp; } ;
struct scatterlist {int dummy; } ;
struct iu_entry {struct srp_target* target; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int DMA_TO_DEVICE ; 
 int EIO ; 
 long H_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 long FUNC1 (int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 void* FUNC2 (int,unsigned int) ; 
 scalar_t__ FUNC3 (struct scatterlist*) ; 
 int FUNC4 (struct scatterlist*) ; 
 struct vio_port* FUNC5 (struct srp_target*) ; 

__attribute__((used)) static int FUNC6(struct scsi_cmnd *sc, struct scatterlist *sg, int nsg,
			 struct srp_direct_buf *md, int nmd,
			 enum dma_data_direction dir, unsigned int rest)
{
	struct iu_entry *iue = (struct iu_entry *) sc->SCp.ptr;
	struct srp_target *target = iue->target;
	struct vio_port *vport = FUNC5(target);
	dma_addr_t token;
	long err;
	unsigned int done = 0;
	int i, sidx, soff;

	sidx = soff = 0;
	token = FUNC3(sg + sidx);

	for (i = 0; i < nmd && rest; i++) {
		unsigned int mdone, mlen;

		mlen = FUNC2(rest, md[i].len);
		for (mdone = 0; mlen;) {
			int slen = FUNC2(FUNC4(sg + sidx) - soff, mlen);

			if (dir == DMA_TO_DEVICE)
				err = FUNC1(slen,
						  vport->riobn,
						  md[i].va + mdone,
						  vport->liobn,
						  token + soff);
			else
				err = FUNC1(slen,
						  vport->liobn,
						  token + soff,
						  vport->riobn,
						  md[i].va + mdone);

			if (err != H_SUCCESS) {
				FUNC0("rdma error %d %d %ld\n", dir, slen, err);
				return -EIO;
			}

			mlen -= slen;
			mdone += slen;
			soff += slen;
			done += slen;

			if (soff == FUNC4(sg + sidx)) {
				sidx++;
				soff = 0;
				token = FUNC3(sg + sidx);

				if (sidx > nsg) {
					FUNC0("out of sg %p %d %d\n",
						iue, sidx, nsg);
					return -EIO;
				}
			}
		};

		rest -= mlen;
	}
	return 0;
}