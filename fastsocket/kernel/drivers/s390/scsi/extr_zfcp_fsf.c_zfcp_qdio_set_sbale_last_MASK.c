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
struct zfcp_queue_req {int dummy; } ;
struct zfcp_qdio {int dummy; } ;
struct qdio_buffer_element {int /*<<< orphan*/  eflags; } ;

/* Variables and functions */
 int /*<<< orphan*/  SBAL_EFLAGS_LAST_ENTRY ; 
 struct qdio_buffer_element* FUNC0 (struct zfcp_qdio*,struct zfcp_queue_req*) ; 

__attribute__((used)) static inline
void FUNC1(struct zfcp_qdio *qdio,
			      struct zfcp_queue_req *q_req)
{
	struct qdio_buffer_element *sbale;

	sbale = FUNC0(qdio, q_req);
	sbale->eflags |= SBAL_EFLAGS_LAST_ENTRY;
}