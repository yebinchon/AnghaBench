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
typedef  int /*<<< orphan*/  umode_t ;
struct rchan_buf {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 struct dentry* FUNC0 (char const*,int /*<<< orphan*/ ,struct dentry*,struct rchan_buf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  relay_file_operations ; 

__attribute__((used)) static struct dentry *FUNC1(const char *filename,
					      struct dentry *parent,
					      umode_t mode,
					      struct rchan_buf *buf,
					      int *is_global)
{
	struct dentry *buf_file;

	buf_file = FUNC0(filename, mode, parent, buf,
				       &relay_file_operations);
	*is_global = 1;
	return buf_file;
}