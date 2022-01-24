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
struct io_thread_req {int cow_offset; int /*<<< orphan*/ * fds; int /*<<< orphan*/  bitmap_words; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 

__attribute__((used)) static int FUNC3(struct io_thread_req *req)
{
	int n;

	if(req->cow_offset == -1)
		return 0;

	n = FUNC0(req->fds[1], req->cow_offset);
	if(n < 0){
		FUNC2("do_io - bitmap lseek failed : err = %d\n", -n);
		return 1;
	}

	n = FUNC1(req->fds[1], &req->bitmap_words,
			  sizeof(req->bitmap_words));
	if(n != sizeof(req->bitmap_words)){
		FUNC2("do_io - bitmap update failed, err = %d fd = %d\n", -n,
		       req->fds[1]);
		return 1;
	}

	return 0;
}