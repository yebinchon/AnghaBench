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
struct io_thread_req {int length; int sectorsize; char* buffer; int error; scalar_t__ op; int /*<<< orphan*/ * fds; scalar_t__* offsets; scalar_t__ offset; int /*<<< orphan*/  sector_mask; } ;
typedef  scalar_t__ __u64 ;

/* Variables and functions */
 scalar_t__ UBD_READ ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,unsigned long) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,...) ; 
 int FUNC5 (int,unsigned char*) ; 
 int FUNC6 (struct io_thread_req*) ; 

__attribute__((used)) static void FUNC7(struct io_thread_req *req)
{
	char *buf;
	unsigned long len;
	int n, nsectors, start, end, bit;
	int err;
	__u64 off;

	nsectors = req->length / req->sectorsize;
	start = 0;
	do {
		bit = FUNC5(start, (unsigned char *) &req->sector_mask);
		end = start;
		while((end < nsectors) &&
		      (FUNC5(end, (unsigned char *)
				    &req->sector_mask) == bit))
			end++;

		off = req->offset + req->offsets[bit] +
			start * req->sectorsize;
		len = (end - start) * req->sectorsize;
		buf = &req->buffer[start * req->sectorsize];

		err = FUNC2(req->fds[bit], off);
		if(err < 0){
			FUNC4("do_io - lseek failed : err = %d\n", -err);
			req->error = 1;
			return;
		}
		if(req->op == UBD_READ){
			n = 0;
			do {
				buf = &buf[n];
				len -= n;
				n = FUNC1(req->fds[bit], buf, len);
				if (n < 0) {
					FUNC4("do_io - read failed, err = %d "
					       "fd = %d\n", -n, req->fds[bit]);
					req->error = 1;
					return;
				}
			} while((n < len) && (n != 0));
			if (n < len) FUNC0(&buf[n], 0, len - n);
		} else {
			n = FUNC3(req->fds[bit], buf, len);
			if(n != len){
				FUNC4("do_io - write failed err = %d "
				       "fd = %d\n", -n, req->fds[bit]);
				req->error = 1;
				return;
			}
		}

		start = end;
	} while(start < nsectors);

	req->error = FUNC6(req);
}