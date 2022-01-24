#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct seq_file {scalar_t__ private; } ;
struct ide_proc_devset {int (* mulf ) (TYPE_1__*) ;int (* divf ) (TYPE_1__*) ;int min; int max; struct ide_devset* setting; scalar_t__ name; } ;
struct ide_devset {scalar_t__ set; scalar_t__ get; } ;
struct TYPE_5__ {struct ide_proc_devset* settings; } ;
typedef  TYPE_1__ ide_drive_t ;

/* Variables and functions */
 struct ide_proc_devset* ide_generic_settings ; 
 int FUNC0 (TYPE_1__*,struct ide_proc_devset const*) ; 
 int /*<<< orphan*/  ide_setting_mtx ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*,...) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 
 int FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC8(struct seq_file *m, void *v)
{
	const struct ide_proc_devset *setting, *g, *d;
	const struct ide_devset *ds;
	ide_drive_t	*drive = (ide_drive_t *) m->private;
	int		rc, mul_factor, div_factor;

	FUNC3();

	FUNC1(&ide_setting_mtx);
	g = ide_generic_settings;
	d = drive->settings;
	FUNC4(m, "name\t\t\tvalue\t\tmin\t\tmax\t\tmode\n");
	FUNC4(m, "----\t\t\t-----\t\t---\t\t---\t\t----\n");
	while (g->name || (d && d->name)) {
		/* read settings in the alphabetical order */
		if (g->name && d && d->name) {
			if (FUNC5(d->name, g->name) < 0)
				setting = d++;
			else
				setting = g++;
		} else if (d && d->name) {
			setting = d++;
		} else
			setting = g++;
		mul_factor = setting->mulf ? setting->mulf(drive) : 1;
		div_factor = setting->divf ? setting->divf(drive) : 1;
		FUNC4(m, "%-24s", setting->name);
		rc = FUNC0(drive, setting);
		if (rc >= 0)
			FUNC4(m, "%-16d", rc * mul_factor / div_factor);
		else
			FUNC4(m, "%-16s", "write-only");
		FUNC4(m, "%-16d%-16d", (setting->min * mul_factor + div_factor - 1) / div_factor, setting->max * mul_factor / div_factor);
		ds = setting->setting;
		if (ds->get)
			FUNC4(m, "r");
		if (ds->set)
			FUNC4(m, "w");
		FUNC4(m, "\n");
	}
	FUNC2(&ide_setting_mtx);
	return 0;
}