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
typedef  int /*<<< orphan*/  FDFSMultiIP ;

/* Variables and functions */
 int FUNC0 (char*,int /*<<< orphan*/ *,char*,int const,int const) ; 

__attribute__((used)) static inline int FUNC1(char *ip_str, FDFSMultiIP *ip_addrs,
        char *error_info, const int error_size)
{
    const bool resolve = true;
    return FUNC0(ip_str, ip_addrs,
            error_info, error_size, resolve);
}