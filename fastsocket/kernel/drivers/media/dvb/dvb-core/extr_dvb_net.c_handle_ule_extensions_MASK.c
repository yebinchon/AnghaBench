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
struct dvb_net_priv {int ule_sndu_type; int /*<<< orphan*/  ule_next_hdr; TYPE_1__* ule_skb; } ;
struct TYPE_2__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC1 (struct dvb_net_priv*) ; 

__attribute__((used)) static int FUNC2( struct dvb_net_priv *p )
{
	int total_ext_len = 0, l;

	p->ule_next_hdr = p->ule_skb->data;
	do {
		l = FUNC1( p );
		if (l < 0)
			return l;	/* Stop extension header processing and discard SNDU. */
		total_ext_len += l;
#ifdef ULE_DEBUG
		dprintk("handle_ule_extensions: ule_next_hdr=%p, ule_sndu_type=%i, "
			"l=%i, total_ext_len=%i\n", p->ule_next_hdr,
			(int) p->ule_sndu_type, l, total_ext_len);
#endif

	} while (p->ule_sndu_type < 1536);

	return total_ext_len;
}