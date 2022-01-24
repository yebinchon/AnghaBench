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
 int /*<<< orphan*/  ISA_PORT_SDO ; 
 int /*<<< orphan*/  ISA_PORT_SOS ; 
 int ISA_SOS_READY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int
FUNC3(act2000_card * card, u_char data)
{
        u_char timeout = 40;

        while (timeout) {
                if (FUNC0(ISA_PORT_SOS) & ISA_SOS_READY) {
                        FUNC1(data, ISA_PORT_SDO);
                        return 0;
                } else {
                        timeout--;
                        FUNC2(10);
                }
        }
        return 1;
}