#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u32 ;
typedef  unsigned int u16 ;
typedef  int rounding ;
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ hrz_dev ;

/* Variables and functions */
 unsigned long BR_HRZ ; 
 unsigned long BR_ULT ; 
 unsigned int CLOCK_SELECT_SHIFT ; 
 unsigned int CR_MAXD ; 
 unsigned int CR_MAXPEXP ; 
 unsigned int CR_MIND ; 
 int DBG_ERR ; 
 int DBG_FLOW ; 
 int DBG_QOS ; 
 unsigned int FUNC0 (unsigned long const,unsigned int) ; 
 unsigned int FUNC1 (unsigned long const,unsigned int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
#define  round_down 129 
#define  round_nearest 128 
 int round_up ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ultra ; 

__attribute__((used)) static int FUNC4 (const hrz_dev * dev, u32 c, rounding r,
		      u16 * bits, unsigned int * actual)
{
	// note: rounding the rate down means rounding 'p' up
	const unsigned long br = FUNC3(ultra, &dev->flags) ? BR_ULT : BR_HRZ;
  
	u32 div = CR_MIND;
	u32 pre;
  
	// br_exp and br_man are used to avoid overflowing (c*maxp*2^d) in
	// the tests below. We could think harder about exact possibilities
	// of failure...
  
	unsigned long br_man = br;
	unsigned int br_exp = 0;
  
	FUNC2 (DBG_QOS|DBG_FLOW, "make_rate b=%lu, c=%u, %s", br, c,
		r == round_up ? "up" : r == round_down ? "down" : "nearest");
  
	// avoid div by zero
	if (!c) {
		FUNC2 (DBG_QOS|DBG_ERR, "zero rate is not allowed!");
		return -EINVAL;
	}
  
	while (br_exp < CR_MAXPEXP + CR_MIND && (br_man % 2 == 0)) {
		br_man = br_man >> 1;
		++br_exp;
	}
	// (br >>br_exp) <<br_exp == br and
	// br_exp <= CR_MAXPEXP+CR_MIND
  
	if (br_man <= (c << (CR_MAXPEXP+CR_MIND-br_exp))) {
		// Equivalent to: B <= (c << (MAXPEXP+MIND))
		// take care of rounding
		switch (r) {
			case round_down:
				pre = FUNC1(br, c<<div);
				// but p must be non-zero
				if (!pre)
					pre = 1;
				break;
			case round_nearest:
				pre = FUNC0(br, c<<div);
				// but p must be non-zero
				if (!pre)
					pre = 1;
				break;
			default:	/* round_up */
				pre = br/(c<<div);
				// but p must be non-zero
				if (!pre)
					return -EINVAL;
		}
		FUNC2 (DBG_QOS, "A: p=%u, d=%u", pre, div);
		goto got_it;
	}
  
	// at this point we have
	// d == MIND and (c << (MAXPEXP+MIND)) < B
	while (div < CR_MAXD) {
		div++;
		if (br_man <= (c << (CR_MAXPEXP+div-br_exp))) {
			// Equivalent to: B <= (c << (MAXPEXP+d))
			// c << (MAXPEXP+d-1) < B <= c << (MAXPEXP+d)
			// 1 << (MAXPEXP-1) < B/2^d/c <= 1 << MAXPEXP
			// MAXP/2 < B/c2^d <= MAXP
			// take care of rounding
			switch (r) {
				case round_down:
					pre = FUNC1(br, c<<div);
					break;
				case round_nearest:
					pre = FUNC0(br, c<<div);
					break;
				default: /* round_up */
					pre = br/(c<<div);
			}
			FUNC2 (DBG_QOS, "B: p=%u, d=%u", pre, div);
			goto got_it;
		}
	}
	// at this point we have
	// d == MAXD and (c << (MAXPEXP+MAXD)) < B
	// but we cannot go any higher
	// take care of rounding
	if (r == round_down)
		return -EINVAL;
	pre = 1 << CR_MAXPEXP;
	FUNC2 (DBG_QOS, "C: p=%u, d=%u", pre, div);
got_it:
	// paranoia
	if (div > CR_MAXD || (!pre) || pre > 1<<CR_MAXPEXP) {
		FUNC2 (DBG_QOS, "set_cr internal failure: d=%u p=%u",
			div, pre);
		return -EINVAL;
	} else {
		if (bits)
			*bits = (div<<CLOCK_SELECT_SHIFT) | (pre-1);
		if (actual) {
			*actual = FUNC1(br, pre<<div);
			FUNC2 (DBG_QOS, "actual rate: %u", *actual);
		}
		return 0;
	}
}