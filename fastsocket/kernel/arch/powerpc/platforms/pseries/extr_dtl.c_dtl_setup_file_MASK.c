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
struct dtl {int cpu; int /*<<< orphan*/  file; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,struct dtl*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dtl_dir ; 
 int /*<<< orphan*/  dtl_fops ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 

__attribute__((used)) static int FUNC2(struct dtl *dtl)
{
	char name[10];

	FUNC1(name, "cpu-%d", dtl->cpu);

	dtl->file = FUNC0(name, 0400, dtl_dir, dtl, &dtl_fops);
	if (!dtl->file)
		return -ENOMEM;

	return 0;
}