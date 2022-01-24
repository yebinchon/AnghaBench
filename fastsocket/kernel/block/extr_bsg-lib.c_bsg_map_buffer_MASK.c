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
struct scatterlist {int dummy; } ;
struct request {int nr_phys_segments; int /*<<< orphan*/  q; } ;
struct bsg_buffer {int /*<<< orphan*/  payload_len; int /*<<< orphan*/  sg_list; int /*<<< orphan*/  sg_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct bsg_buffer *buf, struct request *req)
{
	size_t sz = (sizeof(struct scatterlist) * req->nr_phys_segments);

	FUNC0(!req->nr_phys_segments);

	buf->sg_list = FUNC3(sz, GFP_KERNEL);
	if (!buf->sg_list)
		return -ENOMEM;
	FUNC4(buf->sg_list, req->nr_phys_segments);
	buf->sg_cnt = FUNC2(req->q, req, buf->sg_list);
	buf->payload_len = FUNC1(req);
	return 0;
}