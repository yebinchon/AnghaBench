#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct files_struct {int dummy; } ;
struct file {int dummy; } ;
struct fdtable {int max_fds; int /*<<< orphan*/ * fd; TYPE_1__* open_fds; } ;
struct TYPE_4__ {struct files_struct* files; } ;
struct TYPE_3__ {unsigned long* fds_bits; } ;

/* Variables and functions */
 int __NFDBITS ; 
 TYPE_2__* current ; 
 struct fdtable* FUNC0 (struct files_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,struct files_struct*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct file* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void)
{
	struct files_struct *files = current->files;
	int i, j;
	struct fdtable *fdt;

	j = 0;

	/*
	 * It is safe to dereference the fd table without RCU or
	 * ->file_lock
	 */
	fdt = FUNC0(files);
	for (;;) {
		unsigned long set;
		i = j * __NFDBITS;
		if (i >= fdt->max_fds)
			break;
		set = fdt->open_fds->fds_bits[j++];
		while (set) {
			if (set & 1) {
				struct file * file = FUNC3(&fdt->fd[i], NULL);
				if (file)
					FUNC1(file, files);
			}
			i++;
			set >>= 1;
		}
	}

	/* Put daemon cwd back to root to avoid umount problems */
	FUNC2("/");
}