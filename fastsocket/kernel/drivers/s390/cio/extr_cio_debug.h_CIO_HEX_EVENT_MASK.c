#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ buf_size; } ;

/* Variables and functions */
 TYPE_1__* cio_debug_trace_id ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,void*,int) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static inline void FUNC2(int level, void *data, int length)
{
	if (FUNC1(!cio_debug_trace_id))
		return;
	while (length > 0) {
		FUNC0(cio_debug_trace_id, level, data, length);
		length -= cio_debug_trace_id->buf_size;
		data += cio_debug_trace_id->buf_size;
	}
}