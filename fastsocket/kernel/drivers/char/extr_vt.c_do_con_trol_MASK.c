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
struct vc_data {int vc_pos; int vc_x; int* vc_tab_stop; int vc_charset; int vc_disp_ctrl; int vc_state; size_t vc_npar; int* vc_par; int* vc_palette; int vc_ques; int vc_cursor_type; int vc_complement_mask; int vc_s_complement_mask; int vc_y; int vc_rows; int vc_bottom; int vc_utf; int vc_video_erase_char; int vc_screenbuf_size; void* vc_G1_charset; void* vc_translate; void* vc_G0_charset; int /*<<< orphan*/  vc_origin; int /*<<< orphan*/  vc_top; scalar_t__ vc_num; int /*<<< orphan*/  vc_cols; int /*<<< orphan*/  vc_bell_duration; int /*<<< orphan*/  vc_bell_pitch; } ;
struct tty_struct {int dummy; } ;

/* Variables and functions */
 int CUR_DEFAULT ; 
#define  ESesc 138 
#define  ESfunckey 137 
#define  ESgetpars 136 
#define  ESgotpars 135 
#define  EShash 134 
#define  ESnonstd 133 
 void* ESnormal ; 
#define  ESpalette 132 
#define  ESpercent 131 
#define  ESsetG0 130 
#define  ESsetG1 129 
#define  ESsquare 128 
 void* GRAF_MAP ; 
 void* IBMPC_MAP ; 
 void* LAT1_MAP ; 
 size_t NPAR ; 
 void* USER_MAP ; 
 int /*<<< orphan*/  FUNC0 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct vc_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct vc_data*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct vc_data*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct vc_data*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct vc_data*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct vc_data*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct vc_data*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct vc_data*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC12 (struct vc_data*,struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC13 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC14 (struct vc_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct vc_data*,int,int) ; 
 int /*<<< orphan*/  FUNC16 (struct vc_data*,int,int) ; 
 int /*<<< orphan*/  FUNC17 (struct vc_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ kbd_table ; 
 int /*<<< orphan*/  kbdapplic ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct vc_data*) ; 
 int /*<<< orphan*/  lnm ; 
 int /*<<< orphan*/  FUNC20 (struct vc_data*,char) ; 
 int /*<<< orphan*/  FUNC21 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC22 (struct vc_data*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC24 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC25 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC26 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC27 (struct vc_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (struct vc_data*,int) ; 
 int /*<<< orphan*/  FUNC29 (struct vc_data*) ; 
 void* FUNC30 (void*,struct vc_data*) ; 
 int /*<<< orphan*/  FUNC31 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC32 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC33 (struct tty_struct*) ; 

__attribute__((used)) static void FUNC34(struct tty_struct *tty, struct vc_data *vc, int c)
{
	/*
	 *  Control characters can be used in the _middle_
	 *  of an escape sequence.
	 */
	switch (c) {
	case 0:
		return;
	case 7:
		if (vc->vc_bell_duration)
			FUNC18(vc->vc_bell_pitch, vc->vc_bell_duration);
		return;
	case 8:
		FUNC0(vc);
		return;
	case 9:
		vc->vc_pos -= (vc->vc_x << 1);
		while (vc->vc_x < vc->vc_cols - 1) {
			vc->vc_x++;
			if (vc->vc_tab_stop[vc->vc_x >> 5] & (1 << (vc->vc_x & 31)))
				break;
		}
		vc->vc_pos += (vc->vc_x << 1);
		FUNC20(vc, '\t');
		return;
	case 10: case 11: case 12:
		FUNC19(vc);
		if (!FUNC17(vc, lnm))
			return;
	case 13:
		FUNC3(vc);
		return;
	case 14:
		vc->vc_charset = 1;
		vc->vc_translate = FUNC30(vc->vc_G1_charset, vc);
		vc->vc_disp_ctrl = 1;
		return;
	case 15:
		vc->vc_charset = 0;
		vc->vc_translate = FUNC30(vc->vc_G0_charset, vc);
		vc->vc_disp_ctrl = 0;
		return;
	case 24: case 26:
		vc->vc_state = ESnormal;
		return;
	case 27:
		vc->vc_state = ESesc;
		return;
	case 127:
		FUNC13(vc);
		return;
	case 128+27:
		vc->vc_state = ESsquare;
		return;
	}
	switch(vc->vc_state) {
	case ESesc:
		vc->vc_state = ESnormal;
		switch (c) {
		case '[':
			vc->vc_state = ESsquare;
			return;
		case ']':
			vc->vc_state = ESnonstd;
			return;
		case '%':
			vc->vc_state = ESpercent;
			return;
		case 'E':
			FUNC3(vc);
			FUNC19(vc);
			return;
		case 'M':
			FUNC25(vc);
			return;
		case 'D':
			FUNC19(vc);
			return;
		case 'H':
			vc->vc_tab_stop[vc->vc_x >> 5] |= (1 << (vc->vc_x & 31));
			return;
		case 'Z':
			FUNC23(tty);
			return;
		case '7':
			FUNC26(vc);
			return;
		case '8':
			FUNC24(vc);
			return;
		case '(':
			vc->vc_state = ESsetG0;
			return;
		case ')':
			vc->vc_state = ESsetG1;
			return;
		case '#':
			vc->vc_state = EShash;
			return;
		case 'c':
			FUNC22(vc, 1);
			return;
		case '>':  /* Numeric keypad */
			FUNC2(vc, kbdapplic);
			return;
		case '=':  /* Appl. keypad */
			FUNC27(vc, kbdapplic);
			return;
		}
		return;
	case ESnonstd:
		if (c=='P') {   /* palette escape sequence */
			for (vc->vc_npar = 0; vc->vc_npar < NPAR; vc->vc_npar++)
				vc->vc_par[vc->vc_npar] = 0;
			vc->vc_npar = 0;
			vc->vc_state = ESpalette;
			return;
		} else if (c=='R') {   /* reset palette */
			FUNC21(vc);
			vc->vc_state = ESnormal;
		} else
			vc->vc_state = ESnormal;
		return;
	case ESpalette:
		if ( (c>='0'&&c<='9') || (c>='A'&&c<='F') || (c>='a'&&c<='f') ) {
			vc->vc_par[vc->vc_npar++] = (c > '9' ? (c & 0xDF) - 'A' + 10 : c - '0');
			if (vc->vc_npar == 7) {
				int i = vc->vc_par[0] * 3, j = 1;
				vc->vc_palette[i] = 16 * vc->vc_par[j++];
				vc->vc_palette[i++] += vc->vc_par[j++];
				vc->vc_palette[i] = 16 * vc->vc_par[j++];
				vc->vc_palette[i++] += vc->vc_par[j++];
				vc->vc_palette[i] = 16 * vc->vc_par[j++];
				vc->vc_palette[i] += vc->vc_par[j];
				FUNC29(vc);
				vc->vc_state = ESnormal;
			}
		} else
			vc->vc_state = ESnormal;
		return;
	case ESsquare:
		for (vc->vc_npar = 0; vc->vc_npar < NPAR; vc->vc_npar++)
			vc->vc_par[vc->vc_npar] = 0;
		vc->vc_npar = 0;
		vc->vc_state = ESgetpars;
		if (c == '[') { /* Function key */
			vc->vc_state=ESfunckey;
			return;
		}
		vc->vc_ques = (c == '?');
		if (vc->vc_ques)
			return;
	case ESgetpars:
		if (c == ';' && vc->vc_npar < NPAR - 1) {
			vc->vc_npar++;
			return;
		} else if (c>='0' && c<='9') {
			vc->vc_par[vc->vc_npar] *= 10;
			vc->vc_par[vc->vc_npar] += c - '0';
			return;
		} else
			vc->vc_state = ESgotpars;
	case ESgotpars:
		vc->vc_state = ESnormal;
		switch(c) {
		case 'h':
			FUNC28(vc, 1);
			return;
		case 'l':
			FUNC28(vc, 0);
			return;
		case 'c':
			if (vc->vc_ques) {
				if (vc->vc_par[0])
					vc->vc_cursor_type = vc->vc_par[0] | (vc->vc_par[1] << 8) | (vc->vc_par[2] << 16);
				else
					vc->vc_cursor_type = CUR_DEFAULT;
				return;
			}
			break;
		case 'm':
			if (vc->vc_ques) {
				FUNC1();
				if (vc->vc_par[0])
					vc->vc_complement_mask = vc->vc_par[0] << 8 | vc->vc_par[1];
				else
					vc->vc_complement_mask = vc->vc_s_complement_mask;
				return;
			}
			break;
		case 'n':
			if (!vc->vc_ques) {
				if (vc->vc_par[0] == 5)
					FUNC33(tty);
				else if (vc->vc_par[0] == 6)
					FUNC12(vc, tty);
			}
			return;
		}
		if (vc->vc_ques) {
			vc->vc_ques = 0;
			return;
		}
		switch(c) {
		case 'G': case '`':
			if (vc->vc_par[0])
				vc->vc_par[0]--;
			FUNC16(vc, vc->vc_par[0], vc->vc_y);
			return;
		case 'A':
			if (!vc->vc_par[0])
				vc->vc_par[0]++;
			FUNC16(vc, vc->vc_x, vc->vc_y - vc->vc_par[0]);
			return;
		case 'B': case 'e':
			if (!vc->vc_par[0])
				vc->vc_par[0]++;
			FUNC16(vc, vc->vc_x, vc->vc_y + vc->vc_par[0]);
			return;
		case 'C': case 'a':
			if (!vc->vc_par[0])
				vc->vc_par[0]++;
			FUNC16(vc, vc->vc_x + vc->vc_par[0], vc->vc_y);
			return;
		case 'D':
			if (!vc->vc_par[0])
				vc->vc_par[0]++;
			FUNC16(vc, vc->vc_x - vc->vc_par[0], vc->vc_y);
			return;
		case 'E':
			if (!vc->vc_par[0])
				vc->vc_par[0]++;
			FUNC16(vc, 0, vc->vc_y + vc->vc_par[0]);
			return;
		case 'F':
			if (!vc->vc_par[0])
				vc->vc_par[0]++;
			FUNC16(vc, 0, vc->vc_y - vc->vc_par[0]);
			return;
		case 'd':
			if (vc->vc_par[0])
				vc->vc_par[0]--;
			FUNC15(vc, vc->vc_x ,vc->vc_par[0]);
			return;
		case 'H': case 'f':
			if (vc->vc_par[0])
				vc->vc_par[0]--;
			if (vc->vc_par[1])
				vc->vc_par[1]--;
			FUNC15(vc, vc->vc_par[1], vc->vc_par[0]);
			return;
		case 'J':
			FUNC4(vc, vc->vc_par[0]);
			return;
		case 'K':
			FUNC5(vc, vc->vc_par[0]);
			return;
		case 'L':
			FUNC6(vc, vc->vc_par[0]);
			return;
		case 'M':
			FUNC7(vc, vc->vc_par[0]);
			return;
		case 'P':
			FUNC8(vc, vc->vc_par[0]);
			return;
		case 'c':
			if (!vc->vc_par[0])
				FUNC23(tty);
			return;
		case 'g':
			if (!vc->vc_par[0])
				vc->vc_tab_stop[vc->vc_x >> 5] &= ~(1 << (vc->vc_x & 31));
			else if (vc->vc_par[0] == 3) {
				vc->vc_tab_stop[0] =
					vc->vc_tab_stop[1] =
					vc->vc_tab_stop[2] =
					vc->vc_tab_stop[3] =
					vc->vc_tab_stop[4] =
					vc->vc_tab_stop[5] =
					vc->vc_tab_stop[6] =
					vc->vc_tab_stop[7] = 0;
			}
			return;
		case 'm':
			FUNC11(vc);
			return;
		case 'q': /* DECLL - but only 3 leds */
			/* map 0,1,2,3 to 0,1,2,4 */
			if (vc->vc_par[0] < 4)
				FUNC31(kbd_table + vc->vc_num,
					    (vc->vc_par[0] < 3) ? vc->vc_par[0] : 4);
			return;
		case 'r':
			if (!vc->vc_par[0])
				vc->vc_par[0]++;
			if (!vc->vc_par[1])
				vc->vc_par[1] = vc->vc_rows;
			/* Minimum allowed region is 2 lines */
			if (vc->vc_par[0] < vc->vc_par[1] &&
			    vc->vc_par[1] <= vc->vc_rows) {
				vc->vc_top = vc->vc_par[0] - 1;
				vc->vc_bottom = vc->vc_par[1];
				FUNC15(vc, 0, 0);
			}
			return;
		case 's':
			FUNC26(vc);
			return;
		case 'u':
			FUNC24(vc);
			return;
		case 'X':
			FUNC9(vc, vc->vc_par[0]);
			return;
		case '@':
			FUNC10(vc, vc->vc_par[0]);
			return;
		case ']': /* setterm functions */
			FUNC32(vc);
			return;
		}
		return;
	case ESpercent:
		vc->vc_state = ESnormal;
		switch (c) {
		case '@':  /* defined in ISO 2022 */
			vc->vc_utf = 0;
			return;
		case 'G':  /* prelim official escape code */
		case '8':  /* retained for compatibility */
			vc->vc_utf = 1;
			return;
		}
		return;
	case ESfunckey:
		vc->vc_state = ESnormal;
		return;
	case EShash:
		vc->vc_state = ESnormal;
		if (c == '8') {
			/* DEC screen alignment test. kludge :-) */
			vc->vc_video_erase_char =
				(vc->vc_video_erase_char & 0xff00) | 'E';
			FUNC4(vc, 2);
			vc->vc_video_erase_char =
				(vc->vc_video_erase_char & 0xff00) | ' ';
			FUNC14(vc, vc->vc_origin, vc->vc_screenbuf_size / 2);
		}
		return;
	case ESsetG0:
		if (c == '0')
			vc->vc_G0_charset = GRAF_MAP;
		else if (c == 'B')
			vc->vc_G0_charset = LAT1_MAP;
		else if (c == 'U')
			vc->vc_G0_charset = IBMPC_MAP;
		else if (c == 'K')
			vc->vc_G0_charset = USER_MAP;
		if (vc->vc_charset == 0)
			vc->vc_translate = FUNC30(vc->vc_G0_charset, vc);
		vc->vc_state = ESnormal;
		return;
	case ESsetG1:
		if (c == '0')
			vc->vc_G1_charset = GRAF_MAP;
		else if (c == 'B')
			vc->vc_G1_charset = LAT1_MAP;
		else if (c == 'U')
			vc->vc_G1_charset = IBMPC_MAP;
		else if (c == 'K')
			vc->vc_G1_charset = USER_MAP;
		if (vc->vc_charset == 1)
			vc->vc_translate = FUNC30(vc->vc_G1_charset, vc);
		vc->vc_state = ESnormal;
		return;
	default:
		vc->vc_state = ESnormal;
	}
}