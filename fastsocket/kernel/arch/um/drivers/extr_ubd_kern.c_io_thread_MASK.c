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
struct io_thread_req {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct io_thread_req*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  io_count ; 
 int /*<<< orphan*/  kernel_fd ; 
 int FUNC2 (int /*<<< orphan*/ ,struct io_thread_req**,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct io_thread_req**,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 

int FUNC5(void *arg)
{
	struct io_thread_req *req;
	int n;

	FUNC1();
	while(1){
		n = FUNC2(kernel_fd, &req,
				 sizeof(struct io_thread_req *));
		if(n != sizeof(struct io_thread_req *)){
			if(n < 0)
				FUNC4("io_thread - read failed, fd = %d, "
				       "err = %d\n", kernel_fd, -n);
			else {
				FUNC4("io_thread - short read, fd = %d, "
				       "length = %d\n", kernel_fd, n);
			}
			continue;
		}
		io_count++;
		FUNC0(req);
		n = FUNC3(kernel_fd, &req,
				  sizeof(struct io_thread_req *));
		if(n != sizeof(struct io_thread_req *))
			FUNC4("io_thread - write failed, fd = %d, err = %d\n",
			       kernel_fd, -n);
	}

	return 0;
}