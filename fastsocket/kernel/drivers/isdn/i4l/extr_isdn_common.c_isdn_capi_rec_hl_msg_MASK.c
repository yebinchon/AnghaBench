#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int Controller; } ;
struct TYPE_6__ {int Command; TYPE_1__ adr; } ;
typedef  TYPE_2__ capi_msg ;

/* Variables and functions */
#define  CAPI_FACILITY 128 
 int FUNC0 (int,int) ; 
 int FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC2(capi_msg *cm) {
	
	int di;
	int ch;
	
	di = (cm->adr.Controller & 0x7f) -1;
	ch = FUNC0(di, (cm->adr.Controller>>8)& 0x7f);
	switch(cm->Command) {
		case CAPI_FACILITY:
			/* in the moment only handled in tty */
			return(FUNC1(cm));
		default:
			return(-1);
	}
}