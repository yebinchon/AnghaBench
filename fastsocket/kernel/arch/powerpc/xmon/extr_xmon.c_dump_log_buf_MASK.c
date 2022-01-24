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

/* Variables and functions */
 int CONFIG_LOG_BUF_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  bus_error_jmp ; 
 int catch_memory_errors ; 
 unsigned long FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned char*,unsigned long const) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned long const FUNC5 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

void
FUNC7(void)
{
        const unsigned long size = 128;
        unsigned long end, addr;
        unsigned char buf[size + 1];

        addr = 0;
        buf[size] = '\0';

        if (FUNC4(bus_error_jmp) != 0) {
                FUNC3("Unable to lookup symbol __log_buf!\n");
                return;
        }

        catch_memory_errors = 1;
        FUNC6();
        addr = FUNC1("__log_buf");

        if (! addr)
                FUNC3("Symbol __log_buf not found!\n");
        else {
                end = addr + (1 << CONFIG_LOG_BUF_SHIFT);
                while (addr < end) {
                        if (! FUNC2(addr, buf, size)) {
                                FUNC3("Can't read memory at address 0x%lx\n", addr);
                                break;
                        }

                        FUNC3("%s", buf);

                        if (FUNC5(buf) < size)
                                break;

                        addr += size;
                }
        }

        FUNC6();
        /* wait a little while to see if we get a machine check */
        FUNC0(200);
        catch_memory_errors = 0;
}