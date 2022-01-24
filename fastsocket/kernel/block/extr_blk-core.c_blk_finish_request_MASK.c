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
struct request {scalar_t__ cmd_type; int cmd_flags; int /*<<< orphan*/  q; struct request* next_rq; int /*<<< orphan*/  (* end_io ) (struct request*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int REQ_DONTPREP ; 
 scalar_t__ REQ_TYPE_FS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct request*) ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 
 scalar_t__ FUNC3 (struct request*) ; 
 int /*<<< orphan*/  FUNC4 (struct request*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct request*) ; 
 int /*<<< orphan*/  FUNC6 (struct request*) ; 
 scalar_t__ FUNC7 (struct request*) ; 
 int /*<<< orphan*/  FUNC8 (struct request*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  laptop_mode ; 
 int /*<<< orphan*/  FUNC10 (struct request*,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct request *req, int error)
{
	if (FUNC7(req))
		FUNC5(req->q, req);

	FUNC0(FUNC6(req));

	if (FUNC11(laptop_mode) && req->cmd_type == REQ_TYPE_FS)
		FUNC9();

	FUNC4(req);

	if (req->cmd_flags & REQ_DONTPREP)
		FUNC8(req);


	FUNC2(req);

	if (req->end_io)
		req->end_io(req, error);
	else {
		if (FUNC3(req))
			FUNC1(req->next_rq->q, req->next_rq);

		FUNC1(req->q, req);
	}
}