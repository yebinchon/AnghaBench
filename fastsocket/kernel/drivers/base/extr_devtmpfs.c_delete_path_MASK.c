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

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 char* FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char const*,char) ; 

__attribute__((used)) static int FUNC4(const char *nodepath)
{
	const char *path;
	int err = 0;

	path = FUNC2(nodepath, GFP_KERNEL);
	if (!path)
		return -ENOMEM;

	while (1) {
		char *base;

		base = FUNC3(path, '/');
		if (!base)
			break;
		base[0] = '\0';
		err = FUNC0(path);
		if (err)
			break;
	}

	FUNC1(path);
	return err;
}