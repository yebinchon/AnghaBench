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
struct ppp_net {int /*<<< orphan*/  all_ppp_mutex; int /*<<< orphan*/  units_idr; } ;
struct TYPE_2__ {int dead; int /*<<< orphan*/  rwait; int /*<<< orphan*/  index; } ;
struct ppp {int closing; TYPE_1__ file; int /*<<< orphan*/ * owner; int /*<<< orphan*/  dev; int /*<<< orphan*/  ppp_net; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ppp*) ; 
 struct ppp_net* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ppp*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct ppp *ppp)
{
	struct ppp_net *pn;

	pn = FUNC3(ppp->ppp_net);
	FUNC0(&pn->all_ppp_mutex);

	/* This will call dev_close() for us. */
	FUNC2(ppp);
	if (!ppp->closing) {
		ppp->closing = 1;
		FUNC4(ppp);
		FUNC6(ppp->dev);
	} else
		FUNC4(ppp);

	FUNC5(&pn->units_idr, ppp->file.index);
	ppp->file.dead = 1;
	ppp->owner = NULL;
	FUNC7(&ppp->file.rwait);

	FUNC1(&pn->all_ppp_mutex);
}