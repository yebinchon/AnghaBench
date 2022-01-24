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
struct serio {int dummy; } ;
struct i8042_port {scalar_t__ exists; struct serio* serio; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int HZ ; 
 unsigned int I8042_AUX_PORT_NO ; 
 unsigned int I8042_KBD_PORT_NO ; 
 unsigned char I8042_MUX_PORT_NO ; 
 unsigned char I8042_STR_AUXDATA ; 
 unsigned char I8042_STR_MUXERR ; 
 unsigned char I8042_STR_OBF ; 
 unsigned char I8042_STR_PARITY ; 
 unsigned char I8042_STR_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int SERIO_PARITY ; 
 unsigned int SERIO_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned char,...) ; 
 int FUNC2 (unsigned char,unsigned char,struct serio*) ; 
 int /*<<< orphan*/  i8042_lock ; 
 scalar_t__ i8042_mux_present ; 
 struct i8042_port* i8042_ports ; 
 unsigned char FUNC3 () ; 
 unsigned char FUNC4 () ; 
 unsigned long jiffies ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct serio*,unsigned char,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC10 (unsigned char) ; 

__attribute__((used)) static irqreturn_t FUNC11(int irq, void *dev_id)
{
	struct i8042_port *port;
	struct serio *serio;
	unsigned long flags;
	unsigned char str, data;
	unsigned int dfl;
	unsigned int port_no;
	bool filtered;
	int ret = 1;

	FUNC7(&i8042_lock, flags);

	str = FUNC4();
	if (FUNC10(~str & I8042_STR_OBF)) {
		FUNC8(&i8042_lock, flags);
		if (irq) FUNC1("Interrupt %d, without any data", irq);
		ret = 0;
		goto out;
	}

	data = FUNC3();

	if (i8042_mux_present && (str & I8042_STR_AUXDATA)) {
		static unsigned long last_transmit;
		static unsigned char last_str;

		dfl = 0;
		if (str & I8042_STR_MUXERR) {
			FUNC1("MUX error, status is %02x, data is %02x", str, data);
/*
 * When MUXERR condition is signalled the data register can only contain
 * 0xfd, 0xfe or 0xff if implementation follows the spec. Unfortunately
 * it is not always the case. Some KBCs also report 0xfc when there is
 * nothing connected to the port while others sometimes get confused which
 * port the data came from and signal error leaving the data intact. They
 * _do not_ revert to legacy mode (actually I've never seen KBC reverting
 * to legacy mode yet, when we see one we'll add proper handling).
 * Anyway, we process 0xfc, 0xfd, 0xfe and 0xff as timeouts, and for the
 * rest assume that the data came from the same serio last byte
 * was transmitted (if transmission happened not too long ago).
 */

			switch (data) {
				default:
					if (FUNC9(jiffies, last_transmit + HZ/10)) {
						str = last_str;
						break;
					}
					/* fall through - report timeout */
				case 0xfc:
				case 0xfd:
				case 0xfe: dfl = SERIO_TIMEOUT; data = 0xfe; break;
				case 0xff: dfl = SERIO_PARITY;  data = 0xfe; break;
			}
		}

		port_no = I8042_MUX_PORT_NO + ((str >> 6) & 3);
		last_str = str;
		last_transmit = jiffies;
	} else {

		dfl = ((str & I8042_STR_PARITY) ? SERIO_PARITY : 0) |
		      ((str & I8042_STR_TIMEOUT) ? SERIO_TIMEOUT : 0);

		port_no = (str & I8042_STR_AUXDATA) ?
				I8042_AUX_PORT_NO : I8042_KBD_PORT_NO;
	}

	port = &i8042_ports[port_no];
	serio = port->exists ? port->serio : NULL;

	FUNC1("%02x <- i8042 (interrupt, %d, %d%s%s)",
	    data, port_no, irq,
	    dfl & SERIO_PARITY ? ", bad parity" : "",
	    dfl & SERIO_TIMEOUT ? ", timeout" : "");

	filtered = FUNC2(data, str, serio);

	FUNC8(&i8042_lock, flags);

	if (FUNC5(port->exists && !filtered))
		FUNC6(serio, data, dfl);

 out:
	return FUNC0(ret);
}