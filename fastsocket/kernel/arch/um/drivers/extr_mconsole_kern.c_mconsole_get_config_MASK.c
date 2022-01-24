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
struct mc_request {int dummy; } ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int CONFIG_BUF_SIZE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mc_request*,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,char*,int,char**) ; 

__attribute__((used)) static void FUNC5(int (*get_config)(char *, char *, int,
						  char **),
				struct mc_request *req, char *name)
{
	char default_buf[CONFIG_BUF_SIZE], *error, *buf;
	int n, size;

	if (get_config == NULL) {
		FUNC3(req, "No get_config routine defined", 1, 0);
		return;
	}

	error = NULL;
	size = FUNC0(default_buf);
	buf = default_buf;

	while (1) {
		n = (*get_config)(name, buf, size, &error);
		if (error != NULL) {
			FUNC3(req, error, 1, 0);
			goto out;
		}

		if (n <= size) {
			FUNC3(req, buf, 0, 0);
			goto out;
		}

		if (buf != default_buf)
			FUNC1(buf);

		size = n;
		buf = FUNC2(size, GFP_KERNEL);
		if (buf == NULL) {
			FUNC3(req, "Failed to allocate buffer", 1, 0);
			return;
		}
	}
 out:
	if (buf != default_buf)
		FUNC1(buf);
}