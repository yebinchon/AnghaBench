#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int* mdmreg; } ;
struct TYPE_8__ {TYPE_2__ emu; } ;
typedef  TYPE_1__ modem_info ;
typedef  TYPE_2__ atemu ;

/* Variables and functions */
 int ISDN_MODEM_NUMREG ; 
 int /*<<< orphan*/  PARSE_ERROR1 ; 
 int FUNC0 (char**) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int,int,TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC4(char **p, modem_info * info)
{
	atemu *m = &info->emu;
	int bitpos;
	int mreg;
	int mval;
	int bval;

	mreg = FUNC0(p);
	if (mreg < 0 || mreg >= ISDN_MODEM_NUMREG)
		PARSE_ERROR1;
	switch (*p[0]) {
		case '=':
			p[0]++;
			mval = FUNC0(p);
			if (mval < 0 || mval > 255)
				PARSE_ERROR1;
			if (FUNC2(mreg, mval, info, m))
				PARSE_ERROR1;
			m->mdmreg[mreg] = mval;
			break;
		case '.':
			/* Set/Clear a single bit */
			p[0]++;
			bitpos = FUNC0(p);
			if ((bitpos < 0) || (bitpos > 7))
				PARSE_ERROR1;
			switch (*p[0]) {
				case '=':
					p[0]++;
					bval = FUNC0(p);
					if (bval < 0 || bval > 1)
						PARSE_ERROR1;
					if (bval)
						mval = m->mdmreg[mreg] | (1 << bitpos);
					else
						mval = m->mdmreg[mreg] & ~(1 << bitpos);
					if (FUNC2(mreg, mval, info, m))
						PARSE_ERROR1;
					m->mdmreg[mreg] = mval;
					break;
				case '?':
					p[0]++;
					FUNC1("\r\n", info);
					FUNC1((m->mdmreg[mreg] & (1 << bitpos)) ? "1" : "0",
							 info);
					break;
				default:
					PARSE_ERROR1;
			}
			break;
		case '?':
			p[0]++;
			FUNC3(mreg, info);
			break;
		default:
			PARSE_ERROR1;
			break;
	}
	return 0;
}