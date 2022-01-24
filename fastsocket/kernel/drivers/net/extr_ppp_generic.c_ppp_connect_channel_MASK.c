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
struct ppp_net {int /*<<< orphan*/  all_ppp_mutex; } ;
struct TYPE_6__ {scalar_t__ hdrlen; int /*<<< orphan*/  refcnt; } ;
struct ppp {TYPE_3__ file; int /*<<< orphan*/  n_channels; int /*<<< orphan*/  channels; TYPE_2__* dev; } ;
struct TYPE_4__ {scalar_t__ hdrlen; } ;
struct channel {int /*<<< orphan*/  upl; struct ppp* ppp; int /*<<< orphan*/  clist; TYPE_1__ file; int /*<<< orphan*/  chan_net; } ;
struct TYPE_5__ {int hard_header_len; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct ppp* FUNC4 (struct ppp_net*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ppp*) ; 
 struct ppp_net* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ppp*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(struct channel *pch, int unit)
{
	struct ppp *ppp;
	struct ppp_net *pn;
	int ret = -ENXIO;
	int hdrlen;

	pn = FUNC6(pch->chan_net);

	FUNC2(&pn->all_ppp_mutex);
	ppp = FUNC4(pn, unit);
	if (!ppp)
		goto out;
	FUNC8(&pch->upl);
	ret = -EINVAL;
	if (pch->ppp)
		goto outl;

	FUNC5(ppp);
	if (pch->file.hdrlen > ppp->file.hdrlen)
		ppp->file.hdrlen = pch->file.hdrlen;
	hdrlen = pch->file.hdrlen + 2;	/* for protocol bytes */
	if (hdrlen > ppp->dev->hard_header_len)
		ppp->dev->hard_header_len = hdrlen;
	FUNC1(&pch->clist, &ppp->channels);
	++ppp->n_channels;
	pch->ppp = ppp;
	FUNC0(&ppp->file.refcnt);
	FUNC7(ppp);
	ret = 0;

 outl:
	FUNC9(&pch->upl);
 out:
	FUNC3(&pn->all_ppp_mutex);
	return ret;
}