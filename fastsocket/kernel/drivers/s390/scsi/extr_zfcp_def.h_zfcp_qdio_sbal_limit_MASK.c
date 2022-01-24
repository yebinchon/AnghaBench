#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct zfcp_queue_req {int sbal_limit; int sbal_first; } ;
struct TYPE_2__ {int /*<<< orphan*/  count; } ;
struct zfcp_qdio {TYPE_1__ req_q; } ;

/* Variables and functions */
 int QDIO_MAX_BUFFERS_PER_Q ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int,int) ; 

__attribute__((used)) static inline void FUNC2(struct zfcp_qdio *qdio,
				 struct zfcp_queue_req *q_req, int max_sbals)
{
	int count = FUNC0(&qdio->req_q.count);
	count = FUNC1(count, max_sbals);
	q_req->sbal_limit = (q_req->sbal_first + count - 1)
					% QDIO_MAX_BUFFERS_PER_Q;
}