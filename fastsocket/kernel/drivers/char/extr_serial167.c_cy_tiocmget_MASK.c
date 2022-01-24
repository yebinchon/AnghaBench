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
typedef  unsigned char u_char ;
struct tty_struct {struct cyclades_port* driver_data; } ;
struct file {int dummy; } ;
struct cyclades_port {int line; } ;

/* Variables and functions */
 scalar_t__ BASE_ADDR ; 
 size_t CyCAR ; 
 unsigned char CyCTS ; 
 unsigned char CyDCD ; 
 unsigned char CyDSR ; 
 unsigned char CyDTR ; 
 size_t CyMSVR1 ; 
 size_t CyMSVR2 ; 
 unsigned char CyRTS ; 
 int TIOCM_CAR ; 
 int TIOCM_CTS ; 
 int TIOCM_DSR ; 
 int TIOCM_DTR ; 
 int TIOCM_RTS ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 

__attribute__((used)) static int FUNC2(struct tty_struct *tty, struct file *file)
{
	struct cyclades_port *info = tty->driver_data;
	int channel;
	volatile unsigned char *base_addr = (u_char *) BASE_ADDR;
	unsigned long flags;
	unsigned char status;

	channel = info->line;

	FUNC1(flags);
	base_addr[CyCAR] = (u_char) channel;
	status = base_addr[CyMSVR1] | base_addr[CyMSVR2];
	FUNC0(flags);

	return ((status & CyRTS) ? TIOCM_RTS : 0)
	    | ((status & CyDTR) ? TIOCM_DTR : 0)
	    | ((status & CyDCD) ? TIOCM_CAR : 0)
	    | ((status & CyDSR) ? TIOCM_DSR : 0)
	    | ((status & CyCTS) ? TIOCM_CTS : 0);
}