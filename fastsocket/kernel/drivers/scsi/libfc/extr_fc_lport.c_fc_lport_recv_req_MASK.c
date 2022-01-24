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
struct fc_seq {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* exch_done ) (struct fc_seq*) ;} ;
struct fc_lport {TYPE_1__ tt; } ;
struct fc_frame_header {size_t fh_type; } ;
struct fc_frame {int dummy; } ;
struct fc4_prov {int /*<<< orphan*/  module; int /*<<< orphan*/  (* recv ) (struct fc_lport*,struct fc_frame*) ;} ;

/* Variables and functions */
 size_t FC_FC4_PROV_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct fc_lport*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct fc_frame*) ; 
 struct fc_frame_header* FUNC2 (struct fc_frame*) ; 
 int /*<<< orphan*/ * fc_passive_prov ; 
 struct fc_seq* FUNC3 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct fc4_prov* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct fc_lport*,struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC9 (struct fc_seq*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct fc_lport *lport,
			      struct fc_frame *fp)
{
	struct fc_frame_header *fh = FUNC2(fp);
	struct fc_seq *sp = FUNC3(fp);
	struct fc4_prov *prov;

	/*
	 * Use RCU read lock and module_lock to be sure module doesn't
	 * deregister and get unloaded while we're calling it.
	 * try_module_get() is inlined and accepts a NULL parameter.
	 * Only ELSes and FCP target ops should come through here.
	 * The locking is unfortunate, and a better scheme is being sought.
	 */

	FUNC6();
	if (fh->fh_type >= FC_FC4_PROV_SIZE)
		goto drop;
	prov = FUNC5(fc_passive_prov[fh->fh_type]);
	if (!prov || !FUNC10(prov->module))
		goto drop;
	FUNC7();
	prov->recv(lport, fp);
	FUNC4(prov->module);
	return;
drop:
	FUNC7();
	FUNC0(lport, "dropping unexpected frame type %x\n", fh->fh_type);
	FUNC1(fp);
	lport->tt.exch_done(sp);
}