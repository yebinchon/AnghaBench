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
struct iscsi_endpoint {struct cxgbi_endpoint* dd_data; } ;
struct cxgbi_sock {scalar_t__ state; int /*<<< orphan*/  callback_lock; int /*<<< orphan*/ * user_data; int /*<<< orphan*/  flags; } ;
struct cxgbi_endpoint {struct cxgbi_sock* csk; struct cxgbi_conn* cconn; } ;
struct cxgbi_conn {int /*<<< orphan*/ * cep; scalar_t__ iconn; } ;

/* Variables and functions */
 scalar_t__ CTP_ESTABLISHED ; 
 int CXGBI_DBG_ISCSI ; 
 int CXGBI_DBG_SOCK ; 
 int /*<<< orphan*/  FUNC0 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct iscsi_endpoint*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,struct iscsi_endpoint*,struct cxgbi_endpoint*,struct cxgbi_conn*,struct cxgbi_sock*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct iscsi_endpoint *ep)
{
	struct cxgbi_endpoint *cep = ep->dd_data;
	struct cxgbi_conn *cconn = cep->cconn;
	struct cxgbi_sock *csk = cep->csk;

	FUNC5(1 << CXGBI_DBG_ISCSI | 1 << CXGBI_DBG_SOCK,
		"ep 0x%p, cep 0x%p, cconn 0x%p, csk 0x%p,%u,0x%lx.\n",
		ep, cep, cconn, csk, csk->state, csk->flags);

	if (cconn && cconn->iconn) {
		FUNC3(cconn->iconn);
		FUNC7(&csk->callback_lock);
		cep->csk->user_data = NULL;
		cconn->cep = NULL;
		FUNC8(&csk->callback_lock);
	}
	FUNC2(ep);

	if (FUNC4(csk->state >= CTP_ESTABLISHED))
		FUNC6(csk);
	else
		FUNC0(csk);

	FUNC1(csk);
}