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
struct console {int dummy; } ;
struct TYPE_2__ {int srb_csrb; int rhrb_thrb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__ sio01 ; 

int FUNC1(struct console *co) {

	while(!(sio01.srb_csrb & 1))
		FUNC0();
	return sio01.rhrb_thrb;
}