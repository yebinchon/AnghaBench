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
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int S_IRGRP ; 
 int S_IRUSR ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 struct dentry** FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct dentry* FUNC2 (char*,int /*<<< orphan*/ *) ; 
 struct dentry* FUNC3 (char*,int,struct dentry*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  tpm_ascii_bios_measurements_ops ; 
 int /*<<< orphan*/  tpm_binary_bios_measurements_ops ; 

struct dentry **FUNC5(char *name)
{
	struct dentry **ret = NULL, *tpm_dir, *bin_file, *ascii_file;

	tpm_dir = FUNC2(name, NULL);
	if (FUNC0(tpm_dir))
		goto out;

	bin_file =
	    FUNC3("binary_bios_measurements",
				   S_IRUSR | S_IRGRP, tpm_dir, NULL,
				   &tpm_binary_bios_measurements_ops);
	if (FUNC0(bin_file))
		goto out_tpm;

	ascii_file =
	    FUNC3("ascii_bios_measurements",
				   S_IRUSR | S_IRGRP, tpm_dir, NULL,
				   &tpm_ascii_bios_measurements_ops);
	if (FUNC0(ascii_file))
		goto out_bin;

	ret = FUNC1(3 * sizeof(struct dentry *), GFP_KERNEL);
	if (!ret)
		goto out_ascii;

	ret[0] = ascii_file;
	ret[1] = bin_file;
	ret[2] = tpm_dir;

	return ret;

out_ascii:
	FUNC4(ascii_file);
out_bin:
	FUNC4(bin_file);
out_tpm:
	FUNC4(tpm_dir);
out:
	return NULL;
}