#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u_char ;
struct sk_buff {int len; int* data; } ;
struct hfcsx_extra {unsigned short* marker; } ;
struct TYPE_3__ {int b_fifo_size; scalar_t__ base; scalar_t__ extra; } ;
struct TYPE_4__ {TYPE_1__ hfcsx; } ;
struct IsdnCardState {int debug; TYPE_2__ hw; } ;

/* Variables and functions */
 int D_FIFO_SIZE ; 
 int /*<<< orphan*/  HFCSX_FIF_DWR ; 
 int /*<<< orphan*/  HFCSX_FIF_F1 ; 
 int /*<<< orphan*/  HFCSX_FIF_F2 ; 
 int /*<<< orphan*/  HFCSX_FIF_INCF1 ; 
 int /*<<< orphan*/  HFCSX_FIF_Z1H ; 
 int /*<<< orphan*/  HFCSX_FIF_Z1L ; 
 int /*<<< orphan*/  HFCSX_FIF_Z2H ; 
 int /*<<< orphan*/  HFCSX_FIF_Z2L ; 
 int L1_DEB_ISAC_FIFO ; 
 int MAX_B_FRAMES ; 
 int MAX_D_FRAMES ; 
 int FUNC0 (struct IsdnCardState*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct IsdnCardState*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct IsdnCardState*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (struct IsdnCardState*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int
FUNC6(struct IsdnCardState *cs, struct sk_buff *skb, u_char fifo, int trans_max)
{
       unsigned short *msp;
        int fifo_size, count, z1, z2;
	u_char f_msk, f1, f2, *src;

	if (skb->len <= 0) return(0);
        if (fifo & 1) return(0); /* no write fifo */

	FUNC4(cs, fifo);
	if (fifo & 4) {
	  fifo_size = D_FIFO_SIZE; /* D-channel */
	  f_msk = MAX_D_FRAMES;
	  if (trans_max) return(0); /* only HDLC */
	}
	else {
	  fifo_size = cs->hw.hfcsx.b_fifo_size; /* B-channel */
	  f_msk = MAX_B_FRAMES;
	}

        z1 = FUNC0(cs, HFCSX_FIF_Z1H);
	z1 = ((z1 << 8) | FUNC0(cs, HFCSX_FIF_Z1L));

	/* Check for transparent mode */
	if (trans_max) {
	  z2 = FUNC0(cs, HFCSX_FIF_Z2H);
	  z2 = ((z2 << 8) | FUNC0(cs, HFCSX_FIF_Z2L));
	  count = z2 - z1;
	  if (count <= 0)
	    count += fifo_size; /* free bytes */
	  if (count < skb->len+1) return(0); /* no room */
	  count = fifo_size - count; /* bytes still not send */
	  if (count > 2 * trans_max) return(0); /* delay to long */
	  count = skb->len;
	  src = skb->data;
	  while (count--)
	    FUNC1(cs, HFCSX_FIF_DWR, *src++);
	  return(1); /* success */
	}

        msp = ((struct hfcsx_extra *)(cs->hw.hfcsx.extra))->marker;
	msp += (((fifo >> 1) & 3) * (MAX_B_FRAMES+1));
	f1 = FUNC0(cs, HFCSX_FIF_F1) & f_msk;
	f2 = FUNC0(cs, HFCSX_FIF_F2) & f_msk;

	count = f1 - f2; /* frame count actually buffered */
	if (count < 0)
		count += (f_msk + 1);	/* if wrap around */
	if (count > f_msk-1) {
	  if (cs->debug & L1_DEB_ISAC_FIFO)
	    FUNC3(cs, "hfcsx_write_fifo %d more as %d frames",fifo,f_msk-1);
	  return(0);
	}

	*(msp + f1) = z1; /* remember marker */

	if (cs->debug & L1_DEB_ISAC_FIFO)
		FUNC3(cs, "hfcsx_write_fifo %d f1(%x) f2(%x) z1(f1)(%x)",
			fifo, f1, f2, z1);
	/* now determine free bytes in FIFO buffer */
	count = *(msp + f2) - z1;
	if (count <= 0)
	  count += fifo_size;	/* count now contains available bytes */

	if (cs->debug & L1_DEB_ISAC_FIFO)
	  FUNC3(cs, "hfcsx_write_fifo %d count(%ld/%d)",
		  fifo, skb->len, count);
	if (count < skb->len) {
	  if (cs->debug & L1_DEB_ISAC_FIFO)
	    FUNC3(cs, "hfcsx_write_fifo %d no fifo mem", fifo);
	  return(0);
	}
	
	count = skb->len; /* get frame len */
	src = skb->data;	/* source pointer */
	while (count--)
	  FUNC1(cs, HFCSX_FIF_DWR, *src++);
	
	FUNC0(cs, HFCSX_FIF_INCF1); /* increment F1 */
	FUNC5(1);
	while (FUNC2(cs->hw.hfcsx.base+1) & 1); /* wait for busy */
	return(1);
}