#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  union c2wr {int dummy; } c2wr ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_5__ {unsigned long context; } ;
struct c2wr_nsmr_register_req {void** paddrs; void* addrs_length; void* fbo; void* pbl_depth; void* length; void* pbe_size; int /*<<< orphan*/  pd_id; void* va; scalar_t__ stag_key; int /*<<< orphan*/  flags; int /*<<< orphan*/  rnic_handle; TYPE_1__ hdr; } ;
struct c2wr_nsmr_register_rep {int /*<<< orphan*/  stag_index; } ;
struct c2_vq_req {unsigned long reply_msg; int /*<<< orphan*/  reply_ready; } ;
struct TYPE_8__ {int lkey; int rkey; } ;
struct c2_mr {TYPE_4__ ibmr; TYPE_3__* pd; } ;
struct TYPE_6__ {int msg_size; } ;
struct c2_dev {TYPE_2__ req_vq; int /*<<< orphan*/  adapter_handle; } ;
typedef  enum c2_acf { ____Placeholder_c2_acf } c2_acf ;
struct TYPE_7__ {int /*<<< orphan*/  pd_id; } ;

/* Variables and functions */
 int C2_PBL_MAX_DEPTH ; 
 int /*<<< orphan*/  CCWR_NSMR_REGISTER ; 
 int EINTR ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MEM_PBL_COMPLETE ; 
 int MEM_REMOTE ; 
 int MEM_VA_BASED ; 
 int /*<<< orphan*/  PBL_PHYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct c2wr_nsmr_register_rep*) ; 
 int /*<<< orphan*/  FUNC3 (struct c2wr_nsmr_register_req*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 void* FUNC5 (int) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct c2wr_nsmr_register_req*) ; 
 struct c2wr_nsmr_register_req* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int FUNC9 (int,int) ; 
 int FUNC10 (struct c2_dev*,void*,unsigned long,int,struct c2_vq_req*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct c2_dev*,struct c2wr_nsmr_register_rep*) ; 
 struct c2_vq_req* FUNC12 (struct c2_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct c2_dev*,struct c2_vq_req*) ; 
 int /*<<< orphan*/  FUNC14 (struct c2_dev*,struct c2_vq_req*) ; 
 int /*<<< orphan*/  FUNC15 (struct c2_dev*,struct c2_vq_req*) ; 
 int FUNC16 (struct c2_dev*,union c2wr*) ; 
 int FUNC17 (struct c2_dev*,struct c2_vq_req*) ; 

int
FUNC18(struct c2_dev *c2dev, u64 *addr_list,
 			   int page_size, int pbl_depth, u32 length,
 			   u32 offset, u64 *va, enum c2_acf acf,
			   struct c2_mr *mr)
{
	struct c2_vq_req *vq_req;
	struct c2wr_nsmr_register_req *wr;
	struct c2wr_nsmr_register_rep *reply;
	u16 flags;
	int i, pbe_count, count;
	int err;

	if (!va || !length || !addr_list || !pbl_depth)
		return -EINTR;

	/*
	 * Verify PBL depth is within rnic max
	 */
	if (pbl_depth > C2_PBL_MAX_DEPTH) {
		return -EINTR;
	}

	/*
	 * allocate verbs request object
	 */
	vq_req = FUNC12(c2dev);
	if (!vq_req)
		return -ENOMEM;

	wr = FUNC8(c2dev->req_vq.msg_size, GFP_KERNEL);
	if (!wr) {
		err = -ENOMEM;
		goto bail0;
	}

	/*
	 * build the WR
	 */
	FUNC3(wr, CCWR_NSMR_REGISTER);
	wr->hdr.context = (unsigned long) vq_req;
	wr->rnic_handle = c2dev->adapter_handle;

	flags = (acf | MEM_VA_BASED | MEM_REMOTE);

	/*
	 * compute how many pbes can fit in the message
	 */
	pbe_count = (c2dev->req_vq.msg_size -
		     sizeof(struct c2wr_nsmr_register_req)) / sizeof(u64);

	if (pbl_depth <= pbe_count) {
		flags |= MEM_PBL_COMPLETE;
	}
	wr->flags = FUNC4(flags);
	wr->stag_key = 0;	//stag_key;
	wr->va = FUNC6(*va);
	wr->pd_id = mr->pd->pd_id;
	wr->pbe_size = FUNC5(page_size);
	wr->length = FUNC5(length);
	wr->pbl_depth = FUNC5(pbl_depth);
	wr->fbo = FUNC5(offset);
	count = FUNC9(pbl_depth, pbe_count);
	wr->addrs_length = FUNC5(count);

	/*
	 * fill out the PBL for this message
	 */
	for (i = 0; i < count; i++) {
		wr->paddrs[i] = FUNC6(addr_list[i]);
	}

	/*
	 * regerence the request struct
	 */
	FUNC14(c2dev, vq_req);

	/*
	 * send the WR to the adapter
	 */
	err = FUNC16(c2dev, (union c2wr *) wr);
	if (err) {
		FUNC15(c2dev, vq_req);
		goto bail1;
	}

	/*
	 * wait for reply from adapter
	 */
	err = FUNC17(c2dev, vq_req);
	if (err) {
		goto bail1;
	}

	/*
	 * process reply
	 */
	reply =
	    (struct c2wr_nsmr_register_rep *) (unsigned long) (vq_req->reply_msg);
	if (!reply) {
		err = -ENOMEM;
		goto bail1;
	}
	if ((err = FUNC2(reply))) {
		goto bail2;
	}
	//*p_pb_entries = be32_to_cpu(reply->pbl_depth);
	mr->ibmr.lkey = mr->ibmr.rkey = FUNC1(reply->stag_index);
	FUNC11(c2dev, reply);

	/*
	 * if there are still more PBEs we need to send them to
	 * the adapter and wait for a reply on the final one.
	 * reuse vq_req for this purpose.
	 */
	pbl_depth -= count;
	if (pbl_depth) {

		vq_req->reply_msg = (unsigned long) NULL;
		FUNC0(&vq_req->reply_ready, 0);
		err = FUNC10(c2dev,
					FUNC5(mr->ibmr.lkey),
					(unsigned long) &addr_list[i],
					pbl_depth, vq_req, PBL_PHYS);
		if (err) {
			goto bail1;
		}
	}

	FUNC13(c2dev, vq_req);
	FUNC7(wr);

	return err;

      bail2:
	FUNC11(c2dev, reply);
      bail1:
	FUNC7(wr);
      bail0:
	FUNC13(c2dev, vq_req);
	return err;
}