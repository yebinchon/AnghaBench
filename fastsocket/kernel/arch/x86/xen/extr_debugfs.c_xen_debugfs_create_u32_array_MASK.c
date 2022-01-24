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
typedef  int /*<<< orphan*/  u32 ;
struct dentry {int dummy; } ;
struct array_data {unsigned int elements; int /*<<< orphan*/ * array; } ;
typedef  int /*<<< orphan*/  mode_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct dentry* FUNC0 (char const*,int /*<<< orphan*/ ,struct dentry*,struct array_data*,int /*<<< orphan*/ *) ; 
 struct array_data* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  u32_array_fops ; 

struct dentry *FUNC2(const char *name, mode_t mode,
					    struct dentry *parent,
					    u32 *array, unsigned elements)
{
	struct array_data *data = FUNC1(sizeof(*data), GFP_KERNEL);

	if (data == NULL)
		return NULL;

	data->array = array;
	data->elements = elements;

	return FUNC0(name, mode, parent, data, &u32_array_fops);
}