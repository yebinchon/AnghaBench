#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct work_struct {int dummy; } ;
typedef  TYPE_4__* i2ChanStrPtr ;
struct TYPE_16__ {unsigned char real_raw; TYPE_3__* termios; TYPE_2__* ldisc; int /*<<< orphan*/  read_wait; } ;
struct TYPE_15__ {int flags; TYPE_5__* pTTY; int /*<<< orphan*/  open_wait; scalar_t__ wopen; int /*<<< orphan*/  delta_msr_wait; } ;
struct TYPE_14__ {int c_cflag; } ;
struct TYPE_12__ {int /*<<< orphan*/  (* receive_buf ) (TYPE_5__*,unsigned char*,char*,int) ;} ;
struct TYPE_13__ {TYPE_1__ ops; } ;

/* Variables and functions */
 int ASYNC_CHECK_CD ; 
 int /*<<< orphan*/  CHANN ; 
 int CLOCAL ; 
 int I2_BRK ; 
 int I2_DCD ; 
 int I2_DCTS ; 
 int I2_DDCD ; 
 int I2_DDSR ; 
 int I2_DRI ; 
 int I2_FRA ; 
 int I2_OVR ; 
 int I2_PAR ; 
 int /*<<< orphan*/  ITRC_STATUS ; 
 scalar_t__ FUNC0 (TYPE_5__*) ; 
 scalar_t__ FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  SIGINT ; 
 char TTY_BREAK ; 
 char TTY_FRAME ; 
 char TTY_NORMAL ; 
 char TTY_OVERRUN ; 
 char TTY_PARITY ; 
 TYPE_4__* FUNC2 (struct work_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  i2ChanStr ; 
 int FUNC3 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,unsigned char*,char*,int) ; 
 unsigned char the_char ; 
 int /*<<< orphan*/  tqueue_status ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct work_struct *work)
{
	i2ChanStrPtr pCh = FUNC2(work, i2ChanStr, tqueue_status);
	int status;

	status =  FUNC3( pCh, (I2_BRK|I2_PAR|I2_FRA|I2_OVR) );

	FUNC4 (CHANN, ITRC_STATUS, 21, 1, status );

	if (pCh->pTTY && (status & (I2_BRK|I2_PAR|I2_FRA|I2_OVR)) ) {
		if ( (status & I2_BRK) ) {
			// code duplicated from n_tty (ldisc)
			if (FUNC1(pCh->pTTY))
				goto skip_this;
			if (FUNC0(pCh->pTTY)) {
				FUNC5(SIGINT, pCh->pTTY, 1);
				goto skip_this;
			}
			FUNC8(&pCh->pTTY->read_wait);
		}
#ifdef NEVER_HAPPENS_AS_SETUP_XXX
	// and can't work because we don't know the_char
	// as the_char is reported on a separate path
	// The intelligent board does this stuff as setup
	{
	char brkf = TTY_NORMAL;
	unsigned char brkc = '\0';
	unsigned char tmp;
		if ( (status & I2_BRK) ) {
			brkf = TTY_BREAK;
			brkc = '\0';
		} 
		else if (status & I2_PAR) {
			brkf = TTY_PARITY;
			brkc = the_char;
		} else if (status & I2_FRA) {
			brkf = TTY_FRAME;
			brkc = the_char;
		} else if (status & I2_OVR) {
			brkf = TTY_OVERRUN;
			brkc = the_char;
		}
		tmp = pCh->pTTY->real_raw;
		pCh->pTTY->real_raw = 0;
		pCh->pTTY->ldisc->ops.receive_buf( pCh->pTTY, &brkc, &brkf, 1 );
		pCh->pTTY->real_raw = tmp;
	}
#endif /* NEVER_HAPPENS_AS_SETUP_XXX */
	}
skip_this:

	if ( status & (I2_DDCD | I2_DDSR | I2_DCTS | I2_DRI) ) {
		FUNC8(&pCh->delta_msr_wait);

		if ( (pCh->flags & ASYNC_CHECK_CD) && (status & I2_DDCD) ) {
			if ( status & I2_DCD ) {
				if ( pCh->wopen ) {
					FUNC8 ( &pCh->open_wait );
				}
			} else {
				if (pCh->pTTY &&  (!(pCh->pTTY->termios->c_cflag & CLOCAL)) ) {
					FUNC7( pCh->pTTY );
				}
			}
		}
	}

	FUNC4 (CHANN, ITRC_STATUS, 26, 0 );
}