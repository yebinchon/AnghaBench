#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* create_files ) (struct super_block*,struct dentry*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BUFFER_SIZE_DEFAULT ; 
 int /*<<< orphan*/  BUFFER_WATERSHED_DEFAULT ; 
 int /*<<< orphan*/  CPU_BUFFER_SIZE_DEFAULT ; 
 int /*<<< orphan*/  TIME_SLICE_DEFAULT ; 
 int /*<<< orphan*/  cpu_type_fops ; 
 int /*<<< orphan*/  depth_fops ; 
 int /*<<< orphan*/  dump_fops ; 
 int /*<<< orphan*/  enable_fops ; 
 int /*<<< orphan*/  event_buffer_fops ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  oprofile_buffer_size ; 
 int /*<<< orphan*/  oprofile_buffer_watershed ; 
 int /*<<< orphan*/  oprofile_cpu_buffer_size ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*,struct dentry*) ; 
 TYPE_1__ oprofile_ops ; 
 int /*<<< orphan*/  oprofile_time_slice ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,struct dentry*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,struct dentry*,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*,struct dentry*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pointer_size_fops ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,struct dentry*) ; 
 int /*<<< orphan*/  timeout_fops ; 

void FUNC6(struct super_block *sb, struct dentry *root)
{
	/* reinitialize default values */
	oprofile_buffer_size =		BUFFER_SIZE_DEFAULT;
	oprofile_cpu_buffer_size =	CPU_BUFFER_SIZE_DEFAULT;
	oprofile_buffer_watershed =	BUFFER_WATERSHED_DEFAULT;
	oprofile_time_slice =		FUNC0(TIME_SLICE_DEFAULT);

	FUNC2(sb, root, "enable", &enable_fops);
	FUNC3(sb, root, "dump", &dump_fops, 0666);
	FUNC2(sb, root, "buffer", &event_buffer_fops);
	FUNC4(sb, root, "buffer_size", &oprofile_buffer_size);
	FUNC4(sb, root, "buffer_watershed", &oprofile_buffer_watershed);
	FUNC4(sb, root, "cpu_buffer_size", &oprofile_cpu_buffer_size);
	FUNC2(sb, root, "cpu_type", &cpu_type_fops);
	FUNC2(sb, root, "backtrace_depth", &depth_fops);
	FUNC2(sb, root, "pointer_size", &pointer_size_fops);
#ifdef CONFIG_OPROFILE_EVENT_MULTIPLEX
	oprofilefs_create_file(sb, root, "time_slice", &timeout_fops);
#endif
	FUNC1(sb, root);
	if (oprofile_ops.create_files)
		oprofile_ops.create_files(sb, root);
}