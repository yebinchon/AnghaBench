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
typedef  enum qeth_prot_versions { ____Placeholder_qeth_prot_versions } qeth_prot_versions ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int EINVAL ; 
 int QETH_PROT_IPV4 ; 
 int QETH_PROT_IPV6 ; 
 int FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ *) ; 

int FUNC2(const char *buf, enum qeth_prot_versions proto,
				__u8 *addr)
{
	if (proto == QETH_PROT_IPV4)
		return FUNC0(buf, addr);
	else if (proto == QETH_PROT_IPV6)
		return FUNC1(buf, addr);
	else
		return -EINVAL;
}