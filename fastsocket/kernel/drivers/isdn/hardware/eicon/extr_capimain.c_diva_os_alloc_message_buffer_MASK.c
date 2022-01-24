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
typedef  int /*<<< orphan*/  diva_os_message_buffer_s ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/ * FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

diva_os_message_buffer_s *FUNC2(unsigned long size,
						       void **data_buf)
{
	diva_os_message_buffer_s *dmb = FUNC0(size, GFP_ATOMIC);
	if (dmb) {
		*data_buf = FUNC1(dmb, size);
	}
	return (dmb);
}