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
struct firmware {scalar_t__ data; } ;
struct builtin_fw {scalar_t__ data; } ;

/* Variables and functions */
 struct builtin_fw* __end_builtin_fw ; 
 struct builtin_fw* __start_builtin_fw ; 
 int /*<<< orphan*/  FUNC0 (struct firmware const*) ; 
 int /*<<< orphan*/  FUNC1 (struct firmware const*) ; 

void
FUNC2(const struct firmware *fw)
{
	struct builtin_fw *builtin;

	if (fw) {
		for (builtin = __start_builtin_fw; builtin != __end_builtin_fw;
		     builtin++) {
			if (fw->data == builtin->data)
				goto free_fw;
		}
		FUNC0(fw);
	free_fw:
		FUNC1(fw);
	}
}