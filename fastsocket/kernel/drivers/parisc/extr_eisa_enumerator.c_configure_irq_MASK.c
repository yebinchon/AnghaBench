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
typedef  int u_int8_t ;

/* Variables and functions */
 int HPEE_IRQ_CHANNEL_MASK ; 
 int HPEE_IRQ_MAX_ENT ; 
 int HPEE_IRQ_MORE ; 
 int HPEE_IRQ_TRIG_LEVEL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (unsigned char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

__attribute__((used)) static int FUNC4(const unsigned char *buf)
{
	int len;
	u_int8_t c;
	int i;
	
	len=0;
	
	for (i=0;i<HPEE_IRQ_MAX_ENT;i++) {
		c = FUNC2(buf+len);
		
		FUNC3("IRQ %d ", c & HPEE_IRQ_CHANNEL_MASK);
		if (c & HPEE_IRQ_TRIG_LEVEL) {
			FUNC1(c & HPEE_IRQ_CHANNEL_MASK);
		} else {
			FUNC0(c & HPEE_IRQ_CHANNEL_MASK);
		}
		
		len+=2; 
		/* hpux seems to allow for
		 * two bytes of irq data but only defines one of
		 * them, I think */
		if  (!(c & HPEE_IRQ_MORE)) {
			break;
		}
	}
	
	return len;
}