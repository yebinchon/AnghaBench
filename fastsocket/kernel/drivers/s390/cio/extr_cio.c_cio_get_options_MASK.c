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
struct TYPE_2__ {scalar_t__ inter; scalar_t__ prefetch; scalar_t__ suspend; } ;
struct subchannel {TYPE_1__ options; } ;

/* Variables and functions */
 int DOIO_ALLOW_SUSPEND ; 
 int DOIO_DENY_PREFETCH ; 
 int DOIO_SUPPRESS_INTER ; 

int
FUNC0 (struct subchannel *sch)
{
       int flags;

       flags = 0;
       if (sch->options.suspend)
		flags |= DOIO_ALLOW_SUSPEND;
       if (sch->options.prefetch)
		flags |= DOIO_DENY_PREFETCH;
       if (sch->options.inter)
		flags |= DOIO_SUPPRESS_INTER;
       return flags;
}