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
struct seq_file {struct ap_data* private; } ;
struct ap_data {int /*<<< orphan*/  sta_list; int /*<<< orphan*/  sta_table_lock; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *FUNC2(struct seq_file *m, loff_t *_pos)
{
	struct ap_data *ap = m->private;
	FUNC1(&ap->sta_table_lock);
	return FUNC0(&ap->sta_list, *_pos);
}