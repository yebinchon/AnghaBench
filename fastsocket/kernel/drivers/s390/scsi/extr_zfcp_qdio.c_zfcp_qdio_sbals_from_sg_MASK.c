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
typedef  int /*<<< orphan*/  u8 ;
struct zfcp_queue_req {int dummy; } ;
struct zfcp_qdio {int dummy; } ;
struct scatterlist {int /*<<< orphan*/  length; } ;
struct qdio_buffer_element {int /*<<< orphan*/  sflags; } ;

/* Variables and functions */
 struct scatterlist* FUNC0 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC1 (struct scatterlist*) ; 
 int FUNC2 (struct zfcp_qdio*,struct zfcp_queue_req*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct zfcp_qdio*,struct zfcp_queue_req*,int) ; 
 struct qdio_buffer_element* FUNC4 (struct zfcp_qdio*,struct zfcp_queue_req*) ; 

int FUNC5(struct zfcp_qdio *qdio,
			    struct zfcp_queue_req *q_req,
			    u8 sbtype, struct scatterlist *sg,
			    int max_sbals)
{
	struct qdio_buffer_element *sbale;
	int retval;

#if 1 /* FIXME */
	/* figure out last allowed SBAL */
	FUNC3(qdio, q_req, max_sbals);
#endif

	/* set storage-block type for this request */
	sbale = FUNC4(qdio, q_req);
	sbale->sflags |= sbtype;

	for (; sg; sg = FUNC0(sg)) {
		retval = FUNC2(qdio, q_req, sbtype,
					      FUNC1(sg), sg->length);
		if (retval < 0)
			return retval;
	}

	return 0;
}