#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct scatterlist {int dummy; } ;
struct TYPE_13__ {scalar_t__ len; scalar_t__ va; scalar_t__ rkey; scalar_t__ lkey; scalar_t__ is_fmr; } ;
struct iser_regd_buf {TYPE_6__ reg; } ;
struct iser_device {TYPE_2__* mr; struct ib_device* ib_device; } ;
struct iser_data_buf {int dma_nents; scalar_t__ buf; int /*<<< orphan*/  size; } ;
struct iser_conn {TYPE_5__* page_vec; int /*<<< orphan*/  fmr_pool; struct iser_device* device; } ;
struct TYPE_10__ {int /*<<< orphan*/  dlength; } ;
struct TYPE_11__ {TYPE_3__ iscsi_header; } ;
struct iscsi_iser_task {TYPE_4__ desc; struct iser_data_buf* data_copy; struct iser_regd_buf* rdma_regd; struct iser_data_buf* data; TYPE_1__* iser_conn; } ;
struct iscsi_conn {int /*<<< orphan*/  fmr_unalign_cnt; } ;
struct ib_device {int dummy; } ;
typedef  enum iser_data_dir { ____Placeholder_iser_data_dir } iser_data_dir ;
struct TYPE_12__ {int length; scalar_t__* pages; int /*<<< orphan*/  offset; int /*<<< orphan*/  data_size; } ;
struct TYPE_9__ {scalar_t__ rkey; scalar_t__ lkey; } ;
struct TYPE_8__ {struct iser_conn* ib_conn; struct iscsi_conn* iscsi_conn; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct ib_device*,struct scatterlist*) ; 
 scalar_t__ FUNC1 (struct ib_device*,struct scatterlist*) ; 
 int FUNC2 (struct iser_data_buf*,struct ib_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct iser_data_buf*,struct ib_device*) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned int,unsigned int,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct iscsi_iser_task*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,unsigned long long,...) ; 
 int /*<<< orphan*/  FUNC7 (struct iser_data_buf*,TYPE_5__*,struct ib_device*) ; 
 int FUNC8 (struct iser_conn*,TYPE_5__*,TYPE_6__*) ; 
 scalar_t__ FUNC9 (struct iscsi_iser_task*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,int /*<<< orphan*/ ) ; 
 unsigned long long FUNC11 (int /*<<< orphan*/ ) ; 

int FUNC12(struct iscsi_iser_task *iser_task,
		      enum   iser_data_dir        cmd_dir)
{
	struct iscsi_conn    *iscsi_conn = iser_task->iser_conn->iscsi_conn;
	struct iser_conn     *ib_conn = iser_task->iser_conn->ib_conn;
	struct iser_device   *device = ib_conn->device;
	struct ib_device     *ibdev = device->ib_device;
	struct iser_data_buf *mem = &iser_task->data[cmd_dir];
	struct iser_regd_buf *regd_buf;
	int aligned_len;
	int err;
	int i;
	struct scatterlist *sg;

	regd_buf = &iser_task->rdma_regd[cmd_dir];

	aligned_len = FUNC2(mem, ibdev);
	if (aligned_len != mem->dma_nents ||
	    (!ib_conn->fmr_pool && mem->dma_nents > 1)) {
		iscsi_conn->fmr_unalign_cnt++;
		FUNC10("rdma alignment violation (%d/%d aligned) or FMR not supported\n",
			  aligned_len, mem->size);
		FUNC3(mem, ibdev);

		/* unmap the command data before accessing it */
		FUNC5(iser_task);

		/* allocate copy buf, if we are writing, copy the */
		/* unaligned scatterlist, dma map the copy        */
		if (FUNC9(iser_task, cmd_dir) != 0)
				return -ENOMEM;
		mem = &iser_task->data_copy[cmd_dir];
	}

	/* if there a single dma entry, FMR is not needed */
	if (mem->dma_nents == 1) {
		sg = (struct scatterlist *)mem->buf;

		regd_buf->reg.lkey = device->mr->lkey;
		regd_buf->reg.rkey = device->mr->rkey;
		regd_buf->reg.len  = FUNC1(ibdev, &sg[0]);
		regd_buf->reg.va   = FUNC0(ibdev, &sg[0]);
		regd_buf->reg.is_fmr = 0;

		FUNC4("PHYSICAL Mem.register: lkey: 0x%08X rkey: 0x%08X  "
			 "va: 0x%08lX sz: %ld]\n",
			 (unsigned int)regd_buf->reg.lkey,
			 (unsigned int)regd_buf->reg.rkey,
			 (unsigned long)regd_buf->reg.va,
			 (unsigned long)regd_buf->reg.len);
	} else { /* use FMR for multiple dma entries */
		FUNC7(mem, ib_conn->page_vec, ibdev);
		err = FUNC8(ib_conn, ib_conn->page_vec, &regd_buf->reg);
		if (err && err != -EAGAIN) {
			FUNC3(mem, ibdev);
			FUNC6("mem->dma_nents = %d (dlength = 0x%x)\n",
				 mem->dma_nents,
				 FUNC11(iser_task->desc.iscsi_header.dlength));
			FUNC6("page_vec: data_size = 0x%x, length = %d, offset = 0x%x\n",
				 ib_conn->page_vec->data_size, ib_conn->page_vec->length,
				 ib_conn->page_vec->offset);
			for (i=0 ; i<ib_conn->page_vec->length ; i++)
				FUNC6("page_vec[%d] = 0x%llx\n", i,
					 (unsigned long long) ib_conn->page_vec->pages[i]);
		}
		if (err)
			return err;
	}
	return 0;
}