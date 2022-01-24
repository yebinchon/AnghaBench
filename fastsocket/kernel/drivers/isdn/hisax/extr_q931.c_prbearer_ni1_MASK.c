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
typedef  int u_char ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

__attribute__((used)) static
int
FUNC2(char *dest, u_char * p)
{
	char *dp = dest;
	u_char len;

	p++;
	len = *p++;
	dp += FUNC1(dp, "    octet 3  ");
	dp += FUNC0(dp, *p, 8, 8);
	switch (*p++) {
		case 0x80:
			dp += FUNC1(dp, " Speech");
			break;
		case 0x88:
			dp += FUNC1(dp, " Unrestricted digital information");
			break;
		case 0x90:
			dp += FUNC1(dp, " 3.1 kHz audio");
			break;
		default:
			dp += FUNC1(dp, " Unknown information-transfer capability");
	}
	*dp++ = '\n';
	dp += FUNC1(dp, "    octet 4  ");
	dp += FUNC0(dp, *p, 8, 8);
	switch (*p++) {
		case 0x90:
			dp += FUNC1(dp, " 64 kbps, circuit mode");
			break;
		case 0xc0:
			dp += FUNC1(dp, " Packet mode");
			break;
		default:
			dp += FUNC1(dp, " Unknown transfer mode");
	}
	*dp++ = '\n';
	if (len > 2) {
		dp += FUNC1(dp, "    octet 5  ");
		dp += FUNC0(dp, *p, 8, 8);
		switch (*p++) {
			case 0x21:
				dp += FUNC1(dp, " Rate adaption\n");
				dp += FUNC1(dp, "    octet 5a ");
				dp += FUNC0(dp, *p, 8, 8);
				break;
			case 0xa2:
				dp += FUNC1(dp, " u-law");
				break;
			default:
				dp += FUNC1(dp, " Unknown UI layer 1 protocol");
		}
		*dp++ = '\n';
	}
	return (dp - dest);
}