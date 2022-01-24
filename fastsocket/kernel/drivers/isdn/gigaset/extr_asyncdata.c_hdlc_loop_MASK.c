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
struct sk_buff {int len; int tail; } ;
struct inbuf_t {int inputstate; struct bc_state* bcs; struct cardstate* cs; } ;
struct cardstate {scalar_t__ dle; int /*<<< orphan*/  dev; } ;
struct bc_state {int inputstate; scalar_t__ fcs; unsigned char emptycount; int ignore; struct sk_buff* skb; } ;
typedef  scalar_t__ __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_HDLC ; 
 unsigned char DLE_FLAG ; 
 scalar_t__ HW_HDR_LEN ; 
 int INS_DLE_char ; 
 int INS_DLE_command ; 
 int INS_byte_stuff ; 
 int INS_have_data ; 
 int INS_skip_frame ; 
 unsigned char PPP_ESCAPE ; 
 unsigned char PPP_FLAG ; 
 scalar_t__ PPP_GOODFCS ; 
 scalar_t__ PPP_INITFCS ; 
 unsigned char PPP_TRANS ; 
 int SBUFSIZE ; 
 unsigned char* FUNC0 (struct sk_buff*,int) ; 
 scalar_t__ FUNC1 (scalar_t__,unsigned char) ; 
 struct sk_buff* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,struct cardstate*,struct bc_state*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,struct cardstate*,struct bc_state*) ; 
 scalar_t__ FUNC10 (int) ; 
 int FUNC11 (unsigned char) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC13 (int) ; 

__attribute__((used)) static inline int FUNC14(unsigned char c, unsigned char *src, int numbytes,
			    struct inbuf_t *inbuf)
{
	struct cardstate *cs = inbuf->cs;
	struct bc_state *bcs = inbuf->bcs;
	int inputstate = bcs->inputstate;
	__u16 fcs = bcs->fcs;
	struct sk_buff *skb = bcs->skb;
	unsigned char error;
	struct sk_buff *compskb;
	int startbytes = numbytes;
	int l;

	if (FUNC13(inputstate & INS_byte_stuff)) {
		inputstate &= ~INS_byte_stuff;
		goto byte_stuff;
	}
	for (;;) {
		if (FUNC13(c == PPP_ESCAPE)) {
			if (FUNC13(!numbytes)) {
				inputstate |= INS_byte_stuff;
				break;
			}
			c = *src++;
			--numbytes;
			if (FUNC13(c == DLE_FLAG &&
				     (cs->dle ||
				      inbuf->inputstate & INS_DLE_command))) {
				inbuf->inputstate |= INS_DLE_char;
				inputstate |= INS_byte_stuff;
				break;
			}
byte_stuff:
			c ^= PPP_TRANS;
			if (FUNC13(!FUNC11(c)))
				FUNC7(DEBUG_HDLC, "byte stuffed: 0x%02x", c);
		} else if (FUNC13(c == PPP_FLAG)) {
			if (FUNC13(inputstate & INS_skip_frame)) {
#ifdef CONFIG_GIGASET_DEBUG
				if (!(inputstate & INS_have_data)) { /* 7E 7E */
					++bcs->emptycount;
				} else
					gig_dbg(DEBUG_HDLC,
					    "7e----------------------------");
#endif

				/* end of frame */
				error = 1;
				FUNC8(NULL, cs, bcs);
			} else if (!(inputstate & INS_have_data)) { /* 7E 7E */
#ifdef CONFIG_GIGASET_DEBUG
				++bcs->emptycount;
#endif
				break;
			} else {
				FUNC7(DEBUG_HDLC,
					"7e----------------------------");

				/* end of frame */
				error = 0;

				if (FUNC13(fcs != PPP_GOODFCS)) {
					FUNC3(cs->dev,
				"Checksum failed, %u bytes corrupted!\n",
						skb->len);
					compskb = NULL;
					FUNC8(compskb, cs, bcs);
					error = 1;
				} else {
					if (FUNC10((l = skb->len) > 2)) {
						skb->tail -= 2;
						skb->len -= 2;
					} else {
						FUNC4(skb);
						skb = NULL;
						inputstate |= INS_skip_frame;
						if (l == 1) {
							FUNC3(cs->dev,
						  "invalid packet size (1)!\n");
							error = 1;
							FUNC8(NULL,
								cs, bcs);
						}
					}
					if (FUNC10(!(error ||
						     (inputstate &
						      INS_skip_frame)))) {
						FUNC9(skb, cs, bcs);
					}
				}
			}

			if (FUNC13(error))
				if (skb)
					FUNC4(skb);

			fcs = PPP_INITFCS;
			inputstate &= ~(INS_have_data | INS_skip_frame);
			if (FUNC13(bcs->ignore)) {
				inputstate |= INS_skip_frame;
				skb = NULL;
			} else if (FUNC10((skb = FUNC2(SBUFSIZE + HW_HDR_LEN)) != NULL)) {
				FUNC12(skb, HW_HDR_LEN);
			} else {
				FUNC6(cs->dev,
					 "could not allocate new skb\n");
				inputstate |= INS_skip_frame;
			}

			break;
		} else if (FUNC13(FUNC11(c))) {
			/* Should not happen. Possible after ZDLE=1<CR><LF>. */
			FUNC7(DEBUG_HDLC, "not byte stuffed: 0x%02x", c);
		}

		/* add character */

#ifdef CONFIG_GIGASET_DEBUG
		if (unlikely(!(inputstate & INS_have_data))) {
			gig_dbg(DEBUG_HDLC, "7e (%d x) ================",
				bcs->emptycount);
			bcs->emptycount = 0;
		}
#endif

		inputstate |= INS_have_data;

		if (FUNC10(!(inputstate & INS_skip_frame))) {
			if (FUNC13(skb->len == SBUFSIZE)) {
				FUNC6(cs->dev, "received packet too long\n");
				FUNC5(skb);
				skb = NULL;
				inputstate |= INS_skip_frame;
				break;
			}
			*FUNC0(skb, 1) = c;
			fcs = FUNC1(fcs, c);
		}

		if (FUNC13(!numbytes))
			break;
		c = *src++;
		--numbytes;
		if (FUNC13(c == DLE_FLAG &&
			     (cs->dle ||
			      inbuf->inputstate & INS_DLE_command))) {
			inbuf->inputstate |= INS_DLE_char;
			break;
		}
	}
	bcs->inputstate = inputstate;
	bcs->fcs = fcs;
	bcs->skb = skb;
	return startbytes - numbytes;
}