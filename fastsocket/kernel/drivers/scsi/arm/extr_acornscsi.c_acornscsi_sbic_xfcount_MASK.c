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
typedef  int /*<<< orphan*/  AS_Host ;

/* Variables and functions */
 int /*<<< orphan*/  SBIC_TRANSCNTH ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static
unsigned long FUNC2(AS_Host *host)
{
    unsigned long length;

    length = FUNC0(host, SBIC_TRANSCNTH) << 16;
    length |= FUNC1(host) << 8;
    length |= FUNC1(host);

    return length;
}