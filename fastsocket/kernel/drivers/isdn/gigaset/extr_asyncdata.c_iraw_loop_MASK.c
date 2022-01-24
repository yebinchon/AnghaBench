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
struct sk_buff {scalar_t__ len; } ;
struct inbuf_t {int inputstate; struct bc_state* bcs; struct cardstate* cs; } ;
struct cardstate {int /*<<< orphan*/  dev; scalar_t__ dle; } ;
struct bc_state {int inputstate; int ignore; struct sk_buff* skb; } ;

/* Variables and functions */
 unsigned char DLE_FLAG ; 
 scalar_t__ HW_HDR_LEN ; 
 int INS_DLE_char ; 
 int INS_DLE_command ; 
 int INS_have_data ; 
 int INS_skip_frame ; 
 scalar_t__ SBUFSIZE ; 
 int /*<<< orphan*/ * FUNC0 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char) ; 
 struct sk_buff* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct cardstate*,struct bc_state*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static inline int FUNC9(unsigned char c, unsigned char *src, int numbytes,
			    struct inbuf_t *inbuf)
{
	struct cardstate *cs = inbuf->cs;
	struct bc_state *bcs = inbuf->bcs;
	int inputstate = bcs->inputstate;
	struct sk_buff *skb = bcs->skb;
	int startbytes = numbytes;

	for (;;) {
		/* add character */
		inputstate |= INS_have_data;

		if (FUNC6(!(inputstate & INS_skip_frame))) {
			if (FUNC8(skb->len == SBUFSIZE)) {
				//FIXME just pass skb up and allocate a new one
				FUNC4(cs->dev, "received packet too long\n");
				FUNC3(skb);
				skb = NULL;
				inputstate |= INS_skip_frame;
				break;
			}
			*FUNC0(skb, 1) = FUNC1(c);
		}

		if (FUNC8(!numbytes))
			break;
		c = *src++;
		--numbytes;
		if (FUNC8(c == DLE_FLAG &&
			     (cs->dle ||
			      inbuf->inputstate & INS_DLE_command))) {
			inbuf->inputstate |= INS_DLE_char;
			break;
		}
	}

	/* pass data up */
	if (FUNC6(inputstate & INS_have_data)) {
		if (FUNC6(!(inputstate & INS_skip_frame))) {
			FUNC5(skb, cs, bcs);
		}
		inputstate &= ~(INS_have_data | INS_skip_frame);
		if (FUNC8(bcs->ignore)) {
			inputstate |= INS_skip_frame;
			skb = NULL;
		} else if (FUNC6((skb = FUNC2(SBUFSIZE + HW_HDR_LEN))
				  != NULL)) {
			FUNC7(skb, HW_HDR_LEN);
		} else {
			FUNC4(cs->dev, "could not allocate new skb\n");
			inputstate |= INS_skip_frame;
		}
	}

	bcs->inputstate = inputstate;
	bcs->skb = skb;
	return startbytes - numbytes;
}