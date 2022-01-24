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
struct fc_rport_priv {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  disc_mutex; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* rport_logoff ) (struct fc_rport_priv*) ;} ;
struct fc_lport {TYPE_2__ disc; TYPE_1__ tt; } ;
struct bnx2fc_rport {int /*<<< orphan*/  tgt_lock; int /*<<< orphan*/  flags; struct fc_rport_priv* rdata; } ;
struct bnx2fc_cmd {int wait_for_comp; int /*<<< orphan*/  refcount; int /*<<< orphan*/  tm_done; struct bnx2fc_rport* tgt; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2FC_FLAG_EXPL_LOGO ; 
 int /*<<< orphan*/  BNX2FC_FLAG_SESSION_READY ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2fc_cmd*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BNX2FC_RELOGIN_WAIT_CNT ; 
 int /*<<< orphan*/  BNX2FC_RELOGIN_WAIT_TIME ; 
 int FAILED ; 
 int SUCCESS ; 
 int /*<<< orphan*/  bnx2fc_cmd_release ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2fc_cmd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct fc_rport_priv*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

int FUNC13(struct fc_lport *lport, struct bnx2fc_cmd *io_req)
{
	struct bnx2fc_rport *tgt = io_req->tgt;
	struct fc_rport_priv *rdata = tgt->rdata;
	int logo_issued;
	int rc = SUCCESS;
	int wait_cnt = 0;

	FUNC0(io_req, "Expl logo - tgt flags = 0x%lx\n",
		      tgt->flags);
	logo_issued = FUNC10(BNX2FC_FLAG_EXPL_LOGO,
				       &tgt->flags);
	io_req->wait_for_comp = 1;
	FUNC1(io_req);

	FUNC8(&tgt->tgt_lock);

	FUNC12(&io_req->tm_done);

	io_req->wait_for_comp = 0;
	/*
	 * release the reference taken in eh_abort to allow the
	 * target to re-login after flushing IOs
	 */
	 FUNC3(&io_req->refcount, bnx2fc_cmd_release);

	if (!logo_issued) {
		FUNC2(BNX2FC_FLAG_SESSION_READY, &tgt->flags);
		FUNC5(&lport->disc.disc_mutex);
		lport->tt.rport_logoff(rdata);
		FUNC6(&lport->disc.disc_mutex);
		do {
			FUNC4(BNX2FC_RELOGIN_WAIT_TIME);
			if (wait_cnt++ > BNX2FC_RELOGIN_WAIT_CNT) {
				rc = FAILED;
				break;
			}
		} while (!FUNC11(BNX2FC_FLAG_SESSION_READY, &tgt->flags));
	}
	FUNC7(&tgt->tgt_lock);
	return rc;
}