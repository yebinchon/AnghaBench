#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  char u_char ;
struct TYPE_7__ {char* mdmreg; char* mdmcmd; size_t mdmcmdl; } ;
struct TYPE_6__ {TYPE_2__ emu; } ;
typedef  TYPE_1__ modem_info ;
typedef  TYPE_2__ atemu ;

/* Variables and functions */
 int BIT_ECHO ; 
 size_t REG_BS ; 
 size_t REG_CR ; 
 size_t REG_ECHO ; 
 size_t REG_LF ; 
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 char FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC5(const char *p, int count, modem_info * info)
{
	atemu *m = &info->emu;
	int total = 0;
	u_char c;
	char eb[2];
	int cnt;

	for (cnt = count; cnt > 0; p++, cnt--) {
		c = *p;
		total++;
		if (c == m->mdmreg[REG_CR] || c == m->mdmreg[REG_LF]) {
			/* Separator (CR or LF) */
			m->mdmcmd[m->mdmcmdl] = 0;
			if (m->mdmreg[REG_ECHO] & BIT_ECHO) {
				eb[0] = c;
				eb[1] = 0;
				FUNC1(eb, info);
			}
			if ((m->mdmcmdl >= 2) && (!(FUNC4(m->mdmcmd, "AT", 2))))
				FUNC2(info);
			m->mdmcmdl = 0;
			continue;
		}
		if (c == m->mdmreg[REG_BS] && m->mdmreg[REG_BS] < 128) {
			/* Backspace-Function */
			if ((m->mdmcmdl > 2) || (!m->mdmcmdl)) {
				if (m->mdmcmdl)
					m->mdmcmdl--;
				if (m->mdmreg[REG_ECHO] & BIT_ECHO)
					FUNC1("\b", info);
			}
			continue;
		}
		if (FUNC0(c)) {
			if (m->mdmreg[REG_ECHO] & BIT_ECHO) {
				eb[0] = c;
				eb[1] = 0;
				FUNC1(eb, info);
			}
			if (m->mdmcmdl < 255) {
				c = FUNC3(c);
				switch (m->mdmcmdl) {
					case 1:
						if (c == 'T') {
							m->mdmcmd[m->mdmcmdl] = c;
							m->mdmcmd[++m->mdmcmdl] = 0;
							break;
						} else
							m->mdmcmdl = 0;
						/* Fall through, check for 'A' */
					case 0:
						if (c == 'A') {
							m->mdmcmd[m->mdmcmdl] = c;
							m->mdmcmd[++m->mdmcmdl] = 0;
						}
						break;
					default:
						m->mdmcmd[m->mdmcmdl] = c;
						m->mdmcmd[++m->mdmcmdl] = 0;
				}
			}
		}
	}
	return total;
}