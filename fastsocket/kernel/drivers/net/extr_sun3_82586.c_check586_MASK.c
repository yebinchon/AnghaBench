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
struct scp_struct {scalar_t__ sysbus; int /*<<< orphan*/  iscp; } ;
struct priv {unsigned long base; char* memtop; struct iscp_struct* iscp; struct scp_struct* scp; } ;
struct net_device {int dummy; } ;
struct iscp_struct {int busy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ SCP_DEFAULT_ADDRESS ; 
 scalar_t__ SYSBUSVAL ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct iscp_struct*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct net_device *dev,char *where,unsigned size)
{
	struct priv pb;
	struct priv *p = &pb;
	char *iscp_addr;
	int i;

	p->base = (unsigned long) FUNC1(0);
	p->memtop = (char *)FUNC1((unsigned long)where);
	p->scp = (struct scp_struct *)(p->base + SCP_DEFAULT_ADDRESS);
	FUNC3((char *)p->scp,0, sizeof(struct scp_struct));
	for(i=0;i<sizeof(struct scp_struct);i++) /* memory was writeable? */
		if(((char *)p->scp)[i])
			return 0;
	p->scp->sysbus = SYSBUSVAL;				/* 1 = 8Bit-Bus, 0 = 16 Bit */
	if(p->scp->sysbus != SYSBUSVAL)
		return 0;

	iscp_addr = (char *)FUNC1((unsigned long)where);

	p->iscp = (struct iscp_struct *) iscp_addr;
	FUNC3((char *)p->iscp,0, sizeof(struct iscp_struct));

	p->scp->iscp = FUNC2(p->iscp);
	p->iscp->busy = 1;

	FUNC5();
	FUNC4();
	FUNC0(1);	/* wait a while... */

	if(p->iscp->busy) /* i82586 clears 'busy' after successful init */
		return 0;

	return 1;
}