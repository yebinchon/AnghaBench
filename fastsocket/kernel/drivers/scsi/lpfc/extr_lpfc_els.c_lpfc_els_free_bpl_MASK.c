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
struct lpfc_hba {int dummy; } ;
struct lpfc_dmabuf {int /*<<< orphan*/  phys; int /*<<< orphan*/  virt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lpfc_dmabuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct lpfc_hba *phba, struct lpfc_dmabuf *buf_ptr)
{
	FUNC1(phba, buf_ptr->virt, buf_ptr->phys);
	FUNC0(buf_ptr);
	return 0;
}