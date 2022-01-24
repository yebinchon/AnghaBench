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
struct bfa_s {int dummy; } ;
struct bfa_fcport_s {void (* event_cbfn ) (void*,int) ;void* event_cbarg; } ;

/* Variables and functions */
 struct bfa_fcport_s* FUNC0 (struct bfa_s*) ; 

void
FUNC1(struct bfa_s *bfa,
				void (*cbfn) (void *cbarg,
				enum bfa_port_linkstate event),
				void *cbarg)
{
	struct bfa_fcport_s *fcport = FUNC0(bfa);

	fcport->event_cbfn = cbfn;
	fcport->event_cbarg = cbarg;
}