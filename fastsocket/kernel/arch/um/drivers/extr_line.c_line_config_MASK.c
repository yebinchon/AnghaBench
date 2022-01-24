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
struct line {int /*<<< orphan*/  init_str; } ;
struct chan_opts {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 char* FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct line*,unsigned int,char*,char**) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct line*,int,struct chan_opts const*,char**) ; 

int FUNC3(struct line *lines, unsigned int num, char *str,
		const struct chan_opts *opts, char **error_out)
{
	struct line *line;
	char *new;
	int n;

	if (*str == '=') {
		*error_out = "Can't configure all devices from mconsole";
		return -EINVAL;
	}

	new = FUNC0(str, GFP_KERNEL);
	if (new == NULL) {
		*error_out = "Failed to allocate memory";
		return -ENOMEM;
	}
	n = FUNC1(lines, num, new, error_out);
	if (n < 0)
		return n;

	line = &lines[n];
	return FUNC2(line->init_str, line, n, opts, error_out);
}