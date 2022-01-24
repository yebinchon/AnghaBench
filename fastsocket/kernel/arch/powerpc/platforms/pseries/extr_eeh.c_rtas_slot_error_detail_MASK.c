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
struct pci_dn {int eeh_config_addr; int eeh_pe_config_addr; TYPE_1__* phb; } ;
struct TYPE_2__ {int /*<<< orphan*/  buid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_TYPE_RTAS_LOG ; 
 int /*<<< orphan*/  eeh_error_buf_size ; 
 int /*<<< orphan*/  ibm_slot_error_detail ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 char* slot_errbuf ; 
 int /*<<< orphan*/  slot_errbuf_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(struct pci_dn *pdn, int severity,
                                   char *driver_log, size_t loglen)
{
	int config_addr;
	unsigned long flags;
	int rc;

	/* Log the error with the rtas logger */
	FUNC5(&slot_errbuf_lock, flags);
	FUNC3(slot_errbuf, 0, eeh_error_buf_size);

	/* Use PE configuration address, if present */
	config_addr = pdn->eeh_config_addr;
	if (pdn->eeh_pe_config_addr)
		config_addr = pdn->eeh_pe_config_addr;

	rc = FUNC4(ibm_slot_error_detail,
	               8, 1, NULL, config_addr,
	               FUNC0(pdn->phb->buid),
	               FUNC1(pdn->phb->buid),
	               FUNC7(driver_log), loglen,
	               FUNC7(slot_errbuf),
	               eeh_error_buf_size,
	               severity);

	if (rc == 0)
		FUNC2(slot_errbuf, ERR_TYPE_RTAS_LOG, 0);
	FUNC6(&slot_errbuf_lock, flags);
}