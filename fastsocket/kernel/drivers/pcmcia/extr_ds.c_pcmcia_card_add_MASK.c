#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pcmcia_socket {unsigned int functions; int /*<<< orphan*/  dev; int /*<<< orphan*/  resource_setup_done; } ;
struct TYPE_3__ {unsigned int nfn; } ;
typedef  TYPE_1__ cistpl_longlink_mfc_t ;

/* Variables and functions */
 int /*<<< orphan*/  BIND_FN_ALL ; 
 int /*<<< orphan*/  CISTPL_LONGLINK_MFC ; 
 int EAGAIN ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pcmcia_socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC2 (struct pcmcia_socket*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (struct pcmcia_socket*,unsigned int) ; 
 scalar_t__ FUNC4 (struct pcmcia_socket*) ; 

__attribute__((used)) static int FUNC5(struct pcmcia_socket *s)
{
	cistpl_longlink_mfc_t mfc;
	unsigned int no_funcs, i, no_chains;
	int ret = 0;

	if (!(s->resource_setup_done)) {
		FUNC0(3, &s->dev,
			   "no resources available, delaying card_add\n");
		return -EAGAIN; /* try again, but later... */
	}

	if (FUNC4(s)) {
		FUNC0(3, &s->dev, "validating mem resources failed, "
		       "delaying card_add\n");
		return -EAGAIN; /* try again, but later... */
	}

	ret = FUNC2(s, &no_chains);
	if (ret || !no_chains) {
		FUNC0(0, &s->dev, "invalid CIS or invalid resources\n");
		return -ENODEV;
	}

	if (!FUNC1(s, BIND_FN_ALL, CISTPL_LONGLINK_MFC, &mfc))
		no_funcs = mfc.nfn;
	else
		no_funcs = 1;
	s->functions = no_funcs;

	for (i=0; i < no_funcs; i++)
		FUNC3(s, i);

	return (ret);
}