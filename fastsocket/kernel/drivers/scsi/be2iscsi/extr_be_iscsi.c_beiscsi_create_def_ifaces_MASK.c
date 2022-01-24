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
struct beiscsi_hba {int dummy; } ;
struct be_cmd_get_if_info_resp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BE2_IPV4 ; 
 int /*<<< orphan*/  BE2_IPV6 ; 
 int /*<<< orphan*/  FUNC0 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC1 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC2 (struct beiscsi_hba*,int /*<<< orphan*/ ,struct be_cmd_get_if_info_resp*) ; 

void FUNC3(struct beiscsi_hba *phba)
{
	struct be_cmd_get_if_info_resp if_info;

	if (!FUNC2(phba, BE2_IPV4, &if_info))
		FUNC0(phba);

	if (!FUNC2(phba, BE2_IPV6, &if_info))
		FUNC1(phba);
}