#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  char u_char ;
struct TYPE_8__ {int /*<<< orphan*/  (* statcallb ) (TYPE_3__*) ;} ;
struct TYPE_9__ {char* omsg; size_t optr; TYPE_1__ interface; int /*<<< orphan*/  myid; } ;
typedef  TYPE_2__ isdnloop_card ;
struct TYPE_10__ {int arg; int /*<<< orphan*/  driver; int /*<<< orphan*/  command; } ;
typedef  TYPE_3__ isdn_ctrl ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  ISDN_STAT_STAVAIL ; 
 scalar_t__ FUNC0 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 

__attribute__((used)) static int
FUNC5(const u_char * buf, int len, int user, isdnloop_card * card)
{
	int xcount = 0;
	int ocount = 1;
	isdn_ctrl cmd;

	while (len) {
		int count = len;
		u_char *p;
		u_char msg[0x100];

		if (count > 255)
			count = 255;
		if (user) {
			if (FUNC0(msg, buf, count))
				return -EFAULT;
		} else
			FUNC3(msg, buf, count);
		FUNC2(card, '>');
		for (p = msg; count > 0; count--, p++) {
			len--;
			xcount++;
			FUNC2(card, *p);
			card->omsg[card->optr] = *p;
			if (*p == '\n') {
				card->omsg[card->optr] = '\0';
				card->optr = 0;
				FUNC1(card);
				if (len) {
					FUNC2(card, '>');
					ocount++;
				}
			} else {
				if (card->optr < 59)
					card->optr++;
			}
			ocount++;
		}
	}
	cmd.command = ISDN_STAT_STAVAIL;
	cmd.driver = card->myid;
	cmd.arg = ocount;
	card->interface.statcallb(&cmd);
	return xcount;
}