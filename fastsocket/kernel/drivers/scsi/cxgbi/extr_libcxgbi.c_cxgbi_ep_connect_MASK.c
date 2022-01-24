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
struct sockaddr {int dummy; } ;
struct iscsi_endpoint {struct cxgbi_endpoint* dd_data; } ;
struct cxgbi_sock {size_t port_id; TYPE_1__* cdev; } ;
struct cxgbi_hba {TYPE_2__* ndev; } ;
struct cxgbi_endpoint {struct cxgbi_hba* chba; struct cxgbi_sock* csk; } ;
struct Scsi_Host {int /*<<< orphan*/  host_no; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int (* csk_init_act_open ) (struct cxgbi_sock*) ;struct cxgbi_hba** hbas; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTP_CONNECTING ; 
 int CXGBI_DBG_ISCSI ; 
 int CXGBI_DBG_SOCK ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ENOSPC ; 
 struct iscsi_endpoint* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct cxgbi_sock*) ; 
 struct cxgbi_sock* FUNC2 (struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC3 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct cxgbi_sock*) ; 
 scalar_t__ FUNC5 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct cxgbi_sock*,int /*<<< orphan*/ ) ; 
 struct iscsi_endpoint* FUNC8 (int) ; 
 struct cxgbi_hba* FUNC9 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int FUNC12 (struct cxgbi_sock*) ; 
 int FUNC13 (struct cxgbi_sock*) ; 

struct iscsi_endpoint *FUNC14(struct Scsi_Host *shost,
					struct sockaddr *dst_addr,
					int non_blocking)
{
	struct iscsi_endpoint *ep;
	struct cxgbi_endpoint *cep;
	struct cxgbi_hba *hba = NULL;
	struct cxgbi_sock *csk;
	int err = -EINVAL;

	FUNC10(1 << CXGBI_DBG_ISCSI | 1 << CXGBI_DBG_SOCK,
		"shost 0x%p, non_blocking %d, dst_addr 0x%p.\n",
		shost, non_blocking, dst_addr);

	if (shost) {
		hba = FUNC9(shost);
		if (!hba) {
			FUNC11("shost 0x%p, priv NULL.\n", shost);
			goto err_out;
		}
	}

	csk = FUNC2(dst_addr);
	if (FUNC1(csk))
		return (struct iscsi_endpoint *)csk;
	FUNC4(csk);

	if (!hba)
		hba = csk->cdev->hbas[csk->port_id];
	else if (hba != csk->cdev->hbas[csk->port_id]) {
		FUNC11("Could not connect through requested host %u"
			"hba 0x%p != 0x%p (%u).\n",
			shost->host_no, hba,
			csk->cdev->hbas[csk->port_id], csk->port_id);
		err = -ENOSPC;
		goto release_conn;
	}

	err = FUNC12(csk);
	if (err)
		goto release_conn;

	FUNC7(csk, CTP_CONNECTING);
	err = csk->cdev->csk_init_act_open(csk);
	if (err)
		goto release_conn;

	if (FUNC5(csk)) {
		err = -ENOSPC;
		FUNC11("csk 0x%p is closing.\n", csk);
		goto release_conn;
	}

	ep = FUNC8(sizeof(*cep));
	if (!ep) {
		err = -ENOMEM;
		FUNC11("iscsi alloc ep, OOM.\n");
		goto release_conn;
	}

	cep = ep->dd_data;
	cep->csk = csk;
	cep->chba = hba;

	FUNC10(1 << CXGBI_DBG_ISCSI | 1 << CXGBI_DBG_SOCK,
		"ep 0x%p, cep 0x%p, csk 0x%p, hba 0x%p,%s.\n",
		ep, cep, csk, hba, hba->ndev->name);
	return ep;

release_conn:
	FUNC6(csk);
	FUNC3(csk);
err_out:
	return FUNC0(err);
}