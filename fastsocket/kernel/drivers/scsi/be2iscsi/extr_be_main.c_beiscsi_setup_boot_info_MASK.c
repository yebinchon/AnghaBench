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
struct iscsi_boot_kobj {int dummy; } ;
struct beiscsi_hba {int /*<<< orphan*/  boot_kset; TYPE_1__* shost; } ;
struct TYPE_3__ {int /*<<< orphan*/  host_no; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  beiscsi_boot_release ; 
 int /*<<< orphan*/  beiscsi_eth_get_attr_visibility ; 
 scalar_t__ FUNC0 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  beiscsi_ini_get_attr_visibility ; 
 int /*<<< orphan*/  beiscsi_show_boot_eth_info ; 
 int /*<<< orphan*/  beiscsi_show_boot_ini_info ; 
 int /*<<< orphan*/  beiscsi_show_boot_tgt_info ; 
 int /*<<< orphan*/  beiscsi_tgt_get_attr_visibility ; 
 struct iscsi_boot_kobj* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct beiscsi_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct iscsi_boot_kobj* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct beiscsi_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct iscsi_boot_kobj* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct beiscsi_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC8(struct beiscsi_hba *phba)
{
	struct iscsi_boot_kobj *boot_kobj;

	/* get boot info using mgmt cmd */
	if (FUNC0(phba))
		/* Try to see if we can carry on without this */
		return 0;

	phba->boot_kset = FUNC2(phba->shost->host_no);
	if (!phba->boot_kset)
		return -ENOMEM;

	/* get a ref because the show function will ref the phba */
	if (!FUNC6(phba->shost))
		goto free_kset;
	boot_kobj = FUNC4(phba->boot_kset, 0, phba,
					     beiscsi_show_boot_tgt_info,
					     beiscsi_tgt_get_attr_visibility,
					     beiscsi_boot_release);
	if (!boot_kobj)
		goto put_shost;

	if (!FUNC6(phba->shost))
		goto free_kset;
	boot_kobj = FUNC3(phba->boot_kset, 0, phba,
						beiscsi_show_boot_ini_info,
						beiscsi_ini_get_attr_visibility,
						beiscsi_boot_release);
	if (!boot_kobj)
		goto put_shost;

	if (!FUNC6(phba->shost))
		goto free_kset;
	boot_kobj = FUNC1(phba->boot_kset, 0, phba,
					       beiscsi_show_boot_eth_info,
					       beiscsi_eth_get_attr_visibility,
					       beiscsi_boot_release);
	if (!boot_kobj)
		goto put_shost;
	return 0;

put_shost:
	FUNC7(phba->shost);
free_kset:
	FUNC5(phba->boot_kset);
	return -ENOMEM;
}