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
struct selector {int /*<<< orphan*/  valid_paths; } ;
struct path_selector {struct selector* context; } ;
struct path_info {unsigned int repeat_count; int /*<<< orphan*/  list; int /*<<< orphan*/  qlen; struct dm_path* path; } ;
struct dm_path {struct path_info* pscontext; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int QL_MIN_IO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct path_info* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (char*,char*,unsigned int*,char*) ; 

__attribute__((used)) static int FUNC4(struct path_selector *ps, struct dm_path *path,
		       int argc, char **argv, char **error)
{
	struct selector *s = ps->context;
	struct path_info *pi;
	unsigned repeat_count = QL_MIN_IO;
	char dummy;

	/*
	 * Arguments: [<repeat_count>]
	 * 	<repeat_count>: The number of I/Os before switching path.
	 * 			If not given, default (QL_MIN_IO) is used.
	 */
	if (argc > 1) {
		*error = "queue-length ps: incorrect number of arguments";
		return -EINVAL;
	}

	if ((argc == 1) && (FUNC3(argv[0], "%u%c", &repeat_count, &dummy) != 1)) {
		*error = "queue-length ps: invalid repeat count";
		return -EINVAL;
	}

	/* Allocate the path information structure */
	pi = FUNC1(sizeof(*pi), GFP_KERNEL);
	if (!pi) {
		*error = "queue-length ps: Error allocating path information";
		return -ENOMEM;
	}

	pi->path = path;
	pi->repeat_count = repeat_count;
	FUNC0(&pi->qlen, 0);

	path->pscontext = pi;

	FUNC2(&pi->list, &s->valid_paths);

	return 0;
}