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
 int /*<<< orphan*/  FUNC0 (struct tpm_bios_log*) ; 
 int FUNC1 (struct inode*,struct file*) ; 

__attribute__((used)) static int FUNC2(struct inode *inode,
					 struct file *file)
{
	struct seq_file *seq = file->private_data;
	struct tpm_bios_log *log = seq->private;

	if (log) {
		FUNC0(log->bios_event_log);
		FUNC0(log);
	}

	return FUNC1(inode, file);
}