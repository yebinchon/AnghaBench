#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  sbal; } ;
struct TYPE_3__ {int /*<<< orphan*/  sbal; } ;
struct zfcp_qdio {TYPE_2__ resp_q; TYPE_1__ req_q; } ;
struct qdio_initialize {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct qdio_initialize*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qdio_initialize*,struct zfcp_qdio*) ; 

__attribute__((used)) static int FUNC3(struct zfcp_qdio *qdio)
{
	struct qdio_initialize init_data;

	if (FUNC1(qdio->req_q.sbal) ||
	    FUNC1(qdio->resp_q.sbal))
		return -ENOMEM;

	FUNC2(&init_data, qdio);

	return FUNC0(&init_data);
}