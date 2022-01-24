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
struct proc_dir_entry {int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FLASH_AUTH ; 
 int FLASH_NO_OP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int RTAS_UNKNOWN_SERVICE ; 
 int /*<<< orphan*/ * FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct proc_dir_entry*) ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static int FUNC3(const char *rtas_call_name,
				     size_t buf_size,
				     struct proc_dir_entry *dp)
{
	int *status;
	int token;

	dp->data = FUNC0(buf_size, GFP_KERNEL);
	if (dp->data == NULL) {
		FUNC1(dp);
		return -ENOMEM;
	}

	/*
	 * This code assumes that the status int is the first member of the
	 * struct 
	 */
	status = (int *) dp->data;
	token = FUNC2(rtas_call_name);
	if (token == RTAS_UNKNOWN_SERVICE)
		*status = FLASH_AUTH;
	else
		*status = FLASH_NO_OP;

	return 0;
}