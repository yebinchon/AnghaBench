#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct zfcp_fsf_req {scalar_t__ fsf_command; struct fsf_qtcb* qtcb; TYPE_3__* adapter; } ;
struct zfcp_dbf {int dummy; } ;
struct TYPE_5__ {scalar_t__ fsf_status; scalar_t__ log_length; } ;
struct TYPE_4__ {scalar_t__ prot_status; } ;
struct fsf_qtcb {TYPE_2__ header; TYPE_1__ prefix; } ;
struct TYPE_6__ {struct zfcp_dbf* dbf; } ;

/* Variables and functions */
 scalar_t__ FSF_GOOD ; 
 scalar_t__ FSF_PROT_FSF_STATUS_PRESENTED ; 
 scalar_t__ FSF_PROT_GOOD ; 
 scalar_t__ FSF_QTCB_OPEN_LUN ; 
 scalar_t__ FSF_QTCB_OPEN_PORT_WITH_DID ; 
 int /*<<< orphan*/  FUNC0 (char*,int,struct zfcp_fsf_req*,struct zfcp_dbf*) ; 

__attribute__((used)) static inline void FUNC1(struct zfcp_fsf_req *req)
{
	struct zfcp_dbf *dbf = req->adapter->dbf;
	struct fsf_qtcb *qtcb = req->qtcb;

	if ((qtcb->prefix.prot_status != FSF_PROT_GOOD) &&
	    (qtcb->prefix.prot_status != FSF_PROT_FSF_STATUS_PRESENTED)) {
		FUNC0("perr", 1, req, dbf);

	} else if (qtcb->header.fsf_status != FSF_GOOD) {
		FUNC0("ferr", 1, req, dbf);

	} else if ((req->fsf_command == FSF_QTCB_OPEN_PORT_WITH_DID) ||
		   (req->fsf_command == FSF_QTCB_OPEN_LUN)) {
		FUNC0("open", 4, req, dbf);

	} else if (qtcb->header.log_length) {
		FUNC0("qtcb", 5, req, dbf);

	} else {
		FUNC0("norm", 6, req, dbf);
	}
 }