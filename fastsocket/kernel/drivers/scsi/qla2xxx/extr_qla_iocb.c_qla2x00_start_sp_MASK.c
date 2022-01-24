#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct qla_hw_data {int /*<<< orphan*/  hardware_lock; int /*<<< orphan*/ * req_q_map; } ;
struct TYPE_22__ {int type; TYPE_1__* fcport; } ;
typedef  TYPE_2__ srb_t ;
struct TYPE_23__ {struct qla_hw_data* hw; } ;
struct TYPE_21__ {TYPE_7__* vha; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct qla_hw_data*) ; 
 int QLA_FUNCTION_FAILED ; 
 int QLA_SUCCESS ; 
#define  SRB_ABT_CMD 137 
#define  SRB_ADISC_CMD 136 
#define  SRB_CT_CMD 135 
#define  SRB_ELS_CMD_HST 134 
#define  SRB_ELS_CMD_RPT 133 
#define  SRB_FXIOCB_BCMD 132 
#define  SRB_FXIOCB_DCMD 131 
#define  SRB_LOGIN_CMD 130 
#define  SRB_LOGOUT_CMD 129 
#define  SRB_TM_CMD 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_7__*,int,char*) ; 
 int /*<<< orphan*/  ql_log_warn ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,void*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,void*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,void*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,void*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,void*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,void*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,void*) ; 
 void* FUNC10 (TYPE_7__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,void*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,void*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,void*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,void*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,void*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,void*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC20 () ; 

int
FUNC21(srb_t *sp)
{
	int rval;
	struct qla_hw_data *ha = sp->fcport->vha->hw;
	void *pkt;
	unsigned long flags;

	rval = QLA_FUNCTION_FAILED;
	FUNC18(&ha->hardware_lock, flags);
	pkt = FUNC10(sp->fcport->vha, sp);
	if (!pkt) {
		FUNC2(ql_log_warn, sp->fcport->vha, 0x700c,
		    "qla2x00_alloc_iocbs failed.\n");
		goto done;
	}

	rval = QLA_SUCCESS;
	switch (sp->type) {
	case SRB_LOGIN_CMD:
		FUNC0(ha) ?
		    FUNC6(sp, pkt):
		    FUNC12(sp, pkt);
		break;
	case SRB_LOGOUT_CMD:
		FUNC0(ha) ?
		    FUNC7(sp, pkt):
		    FUNC13(sp, pkt);
		break;
	case SRB_ELS_CMD_RPT:
	case SRB_ELS_CMD_HST:
		FUNC5(sp, pkt);
		break;
	case SRB_CT_CMD:
		FUNC0(ha) ?
		    FUNC4(sp, pkt) :
		    FUNC11(sp, pkt);
		break;
	case SRB_ADISC_CMD:
		FUNC0(ha) ?
		    FUNC3(sp, pkt):
		    FUNC9(sp, pkt);
		break;
	case SRB_TM_CMD:
		FUNC1(ha) ?
		    FUNC17(sp, pkt) :
		    FUNC8(sp, pkt);
		break;
	case SRB_FXIOCB_DCMD:
	case SRB_FXIOCB_BCMD:
		FUNC16(sp, pkt);
		break;
	case SRB_ABT_CMD:
		FUNC15(sp, pkt);
		break;
	default:
		break;
	}

	FUNC20();
	FUNC14(sp->fcport->vha, ha->req_q_map[0]);
done:
	FUNC19(&ha->hardware_lock, flags);
	return rval;
}