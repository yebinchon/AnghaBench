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
struct TYPE_3__ {struct bfad_im_port_s* im_port; } ;
struct bfad_s {int /*<<< orphan*/  pci_name; int /*<<< orphan*/  port_name; int /*<<< orphan*/  adapter_name; int /*<<< orphan*/  bfad_lock; TYPE_1__ pport; int /*<<< orphan*/  inst_no; int /*<<< orphan*/  bfa; } ;
struct bfad_im_port_s {TYPE_2__* shost; } ;
struct bfa_port_attr_s {int /*<<< orphan*/  factorypwwn; int /*<<< orphan*/  factorynwwn; int /*<<< orphan*/  pwwn; int /*<<< orphan*/  nwwn; } ;
struct bfa_bsg_ioc_info_s {char* name; char* port_name; char* hwpath; char* adapter_hwpath; int /*<<< orphan*/  status; int /*<<< orphan*/  host; int /*<<< orphan*/  bfad_num; int /*<<< orphan*/  factorypwwn; int /*<<< orphan*/  factorynwwn; int /*<<< orphan*/  serialnum; int /*<<< orphan*/  factory_mac; int /*<<< orphan*/  mac; int /*<<< orphan*/  ioc_type; int /*<<< orphan*/  pwwn; int /*<<< orphan*/  nwwn; } ;
struct TYPE_4__ {int /*<<< orphan*/  host_no; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_STATUS_OK ; 
 int BFA_STRING_32 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct bfa_port_attr_s*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct bfad_s *bfad, void *cmd)
{
	int	i;
	struct bfa_bsg_ioc_info_s *iocmd = (struct bfa_bsg_ioc_info_s *)cmd;
	struct bfad_im_port_s	*im_port;
	struct bfa_port_attr_s	pattr;
	unsigned long	flags;

	FUNC5(&bfad->bfad_lock, flags);
	FUNC0(&bfad->bfa, &pattr);
	iocmd->nwwn = pattr.nwwn;
	iocmd->pwwn = pattr.pwwn;
	iocmd->ioc_type = FUNC4(&bfad->bfa);
	iocmd->mac = FUNC2(&bfad->bfa);
	iocmd->factory_mac = FUNC3(&bfad->bfa);
	FUNC1(&bfad->bfa, iocmd->serialnum);
	iocmd->factorynwwn = pattr.factorynwwn;
	iocmd->factorypwwn = pattr.factorypwwn;
	iocmd->bfad_num = bfad->inst_no;
	im_port = bfad->pport.im_port;
	iocmd->host = im_port->shost->host_no;
	FUNC6(&bfad->bfad_lock, flags);

	FUNC7(iocmd->name, bfad->adapter_name);
	FUNC7(iocmd->port_name, bfad->port_name);
	FUNC7(iocmd->hwpath, bfad->pci_name);

	/* set adapter hw path */
	FUNC7(iocmd->adapter_hwpath, bfad->pci_name);
	for (i = 0; iocmd->adapter_hwpath[i] != ':' && i < BFA_STRING_32; i++)
		;
	for (; iocmd->adapter_hwpath[++i] != ':' && i < BFA_STRING_32; )
		;
	iocmd->adapter_hwpath[i] = '\0';
	iocmd->status = BFA_STATUS_OK;
	return 0;
}