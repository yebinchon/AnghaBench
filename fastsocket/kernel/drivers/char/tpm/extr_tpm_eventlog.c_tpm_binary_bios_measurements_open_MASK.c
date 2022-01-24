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
struct tpm_bios_log {struct tpm_bios_log* bios_event_log; } ;
struct seq_file {struct tpm_bios_log* private; } ;
struct inode {int dummy; } ;
struct file {struct seq_file* private_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct tpm_bios_log*) ; 
 struct tpm_bios_log* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct tpm_bios_log*) ; 
 int FUNC3 (struct file*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tpm_binary_b_measurments_seqops ; 

__attribute__((used)) static int FUNC4(struct inode *inode,
					     struct file *file)
{
	int err;
	struct tpm_bios_log *log;
	struct seq_file *seq;

	log = FUNC1(sizeof(struct tpm_bios_log), GFP_KERNEL);
	if (!log)
		return -ENOMEM;

	if ((err = FUNC2(log)))
		goto out_free;

	/* now register seq file */
	err = FUNC3(file, &tpm_binary_b_measurments_seqops);
	if (!err) {
		seq = file->private_data;
		seq->private = log;
	} else {
		goto out_free;
	}

out:
	return err;
out_free:
	FUNC0(log->bios_event_log);
	FUNC0(log);
	goto out;
}