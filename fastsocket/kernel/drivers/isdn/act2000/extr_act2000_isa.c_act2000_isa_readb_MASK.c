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
typedef  int /*<<< orphan*/  act2000_card ;

/* Variables and functions */
 int /*<<< orphan*/  ISA_PORT_SDI ; 
 int /*<<< orphan*/  ISA_PORT_SIS ; 
 int ISA_SIS_READY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int
FUNC2(act2000_card * card, u_char * data)
{
        u_char timeout = 40;

        while (timeout) {
                if (FUNC0(ISA_PORT_SIS) & ISA_SIS_READY) {
                        *data = FUNC0(ISA_PORT_SDI);
                        return 0;
                } else {
                        timeout--;
                        FUNC1(10);
                }
        }
        return 1;
}