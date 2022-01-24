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
struct kobject {int dummy; } ;
struct mem_ctl_info {struct kobject edac_mci_kobj; } ;
struct csrow_info {int nr_channels; struct kobject kobj; struct mem_ctl_info* mci; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  KOBJ_ADD ; 
 int FUNC0 (struct kobject*,int) ; 
 struct kobject* FUNC1 (struct kobject*) ; 
 int FUNC2 (struct kobject*,int /*<<< orphan*/ *,struct kobject*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC4 (struct kobject*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ktype_csrow ; 
 int /*<<< orphan*/  FUNC5 (struct kobject*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct mem_ctl_info *mci,
					struct csrow_info *csrow, int index)
{
	struct kobject *kobj_mci = &mci->edac_mci_kobj;
	struct kobject *kobj;
	int chan;
	int err;

	/* generate ..../edac/mc/mc<id>/csrow<index>   */
	FUNC5(&csrow->kobj, 0, sizeof(csrow->kobj));
	csrow->mci = mci;	/* include container up link */

	/* bump the mci instance's kobject's ref count */
	kobj = FUNC1(&mci->edac_mci_kobj);
	if (!kobj) {
		err = -ENODEV;
		goto err_out;
	}

	/* Instanstiate the csrow object */
	err = FUNC2(&csrow->kobj, &ktype_csrow, kobj_mci,
				   "csrow%d", index);
	if (err)
		goto err_release_top_kobj;

	/* At this point, to release a csrow kobj, one must
	 * call the kobject_put and allow that tear down
	 * to work the releasing
	 */

	/* Create the dyanmic attribute files on this csrow,
	 * namely, the DIMM labels and the channel ce_count
	 */
	for (chan = 0; chan < csrow->nr_channels; chan++) {
		err = FUNC0(&csrow->kobj, chan);
		if (err) {
			/* special case the unregister here */
			FUNC3(&csrow->kobj);
			goto err_out;
		}
	}
	FUNC4(&csrow->kobj, KOBJ_ADD);
	return 0;

	/* error unwind stack */
err_release_top_kobj:
	FUNC3(&mci->edac_mci_kobj);

err_out:
	return err;
}