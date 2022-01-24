#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_7__ {scalar_t__ isac; scalar_t__ cfg_reg; } ;
struct TYPE_8__ {TYPE_3__ avm; } ;
struct IsdnCardState {int debug; scalar_t__ subtyp; TYPE_4__ hw; } ;
struct TYPE_5__ {scalar_t__ rcvidx; int /*<<< orphan*/ * rcvbuf; } ;
struct TYPE_6__ {TYPE_1__ hdlc; } ;
struct BCState {char* blog; scalar_t__ channel; TYPE_2__ hw; struct IsdnCardState* cs; } ;

/* Variables and functions */
 scalar_t__ AVM_FRITZ_PCI ; 
 scalar_t__ AVM_FRITZ_PNP ; 
 int /*<<< orphan*/  AVM_HDLC_1 ; 
 int /*<<< orphan*/  AVM_HDLC_2 ; 
 scalar_t__ HSCX_BUFMAX ; 
 int L1_DEB_HSCX ; 
 int L1_DEB_HSCX_FIFO ; 
 int L1_DEB_WARN ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ _IO_BASE ; 
 int /*<<< orphan*/  FUNC1 (struct IsdnCardState*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char,int) ; 

__attribute__((used)) static inline void
FUNC8(struct BCState *bcs, int count)
{
	register u_int *ptr;
	u_char *p;
	u_char idx = bcs->channel ? AVM_HDLC_2 : AVM_HDLC_1;
	int cnt=0;
	struct IsdnCardState *cs = bcs->cs;

	if ((cs->debug & L1_DEB_HSCX) && !(cs->debug & L1_DEB_HSCX_FIFO))
		FUNC1(cs, "hdlc_empty_fifo %d", count);
	if (bcs->hw.hdlc.rcvidx + count > HSCX_BUFMAX) {
		if (cs->debug & L1_DEB_WARN)
			FUNC1(cs, "hdlc_empty_fifo: incoming packet too large");
		return;
	}
	p = bcs->hw.hdlc.rcvbuf + bcs->hw.hdlc.rcvidx;
	ptr = (u_int *)p;
	bcs->hw.hdlc.rcvidx += count;
	if (cs->subtyp == AVM_FRITZ_PCI) {
		FUNC6(idx, cs->hw.avm.cfg_reg + 4);
		while (cnt < count) {
#ifdef __powerpc__
			*ptr++ = in_be32((unsigned *)(cs->hw.avm.isac +_IO_BASE));
#else
			*ptr++ = FUNC4(cs->hw.avm.isac);
#endif /* __powerpc__ */
			cnt += 4;
		}
	} else {
		FUNC5(idx, cs->hw.avm.cfg_reg + 4);
		while (cnt < count) {
			*p++ = FUNC3(cs->hw.avm.isac);
			cnt++;
		}
	}
	if (cs->debug & L1_DEB_HSCX_FIFO) {
		char *t = bcs->blog;

		if (cs->subtyp == AVM_FRITZ_PNP)
			p = (u_char *) ptr;
		t += FUNC7(t, "hdlc_empty_fifo %c cnt %d",
			     bcs->channel ? 'B' : 'A', count);
		FUNC0(t, p, count);
		FUNC1(cs, bcs->blog);
	}
}