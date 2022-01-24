#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_3__* dentry; } ;
struct file {TYPE_4__ f_path; } ;
struct TYPE_7__ {TYPE_2__* d_parent; } ;
struct TYPE_5__ {unsigned char* name; } ;
struct TYPE_6__ {TYPE_1__ d_name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned char const*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline int FUNC1(struct file *file)
{
	const unsigned char *name = file->f_path.dentry->d_parent->d_name.name;

	return (int)FUNC0(name, NULL, 10);
}