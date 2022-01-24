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
struct fd_chan {int fd; char* str; int /*<<< orphan*/  tt; scalar_t__ raw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int FUNC4 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(int input, int output, int primary, void *d, char **dev_out)
{
	struct fd_chan *data = d;
	int err;

	if (data->raw && FUNC1(data->fd)) {
		FUNC0(err = FUNC4(data->fd, &data->tt));
		if (err)
			return err;

		err = FUNC2(data->fd);
		if (err)
			return err;
	}
	FUNC3(data->str, "%d", data->fd);
	*dev_out = data->str;
	return data->fd;
}