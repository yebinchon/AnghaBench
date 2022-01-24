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
struct request_queue {int dummy; } ;
struct request {int dummy; } ;
struct _osd_io_info {scalar_t__ bio; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct request* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  READ ; 
 int /*<<< orphan*/  WRITE ; 
 int __GFP_WAIT ; 
 struct request* FUNC1 (struct request_queue*,int /*<<< orphan*/ ,int) ; 
 struct request* FUNC2 (struct request_queue*,scalar_t__,int) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static struct request *FUNC4(struct request_queue *q, bool has_write,
			      struct _osd_io_info *oii, gfp_t flags)
{
	if (oii->bio)
		return FUNC2(q, oii->bio, flags);
	else {
		struct request *req;

		req = FUNC1(q, has_write ? WRITE : READ, flags);
		if (FUNC3(!req))
			return (flags & __GFP_WAIT) ? FUNC0(-ENODEV) :
						      FUNC0(-ENOMEM);

		return req;
	}
}