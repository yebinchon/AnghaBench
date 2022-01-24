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
struct proc_dir_entry {scalar_t__ size; } ;

/* Variables and functions */
 int /*<<< orphan*/  S_IWUSR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ofdt_fops ; 
 struct proc_dir_entry* FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pseries ; 

__attribute__((used)) static int FUNC2(void)
{
	struct proc_dir_entry *ent;

	if (!FUNC0(pseries))
		return 0;

	ent = FUNC1("ppc64/ofdt", S_IWUSR, NULL, &ofdt_fops);
	if (ent)
		ent->size = 0;

	return 0;
}