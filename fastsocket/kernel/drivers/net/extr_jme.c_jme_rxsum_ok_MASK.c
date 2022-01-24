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
typedef  int u16 ;
struct jme_adapter {int dummy; } ;

/* Variables and functions */
 int RXWBFLAG_IPCS ; 
 int RXWBFLAG_IPV4 ; 
 int RXWBFLAG_MF ; 
 int RXWBFLAG_TCPCS ; 
 int RXWBFLAG_TCPON ; 
 int RXWBFLAG_UDPCS ; 
 int RXWBFLAG_UDPON ; 
 int /*<<< orphan*/  FUNC0 (struct jme_adapter*,char*) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static int
FUNC2(struct jme_adapter *jme, u16 flags)
{
	if (!(flags & (RXWBFLAG_TCPON | RXWBFLAG_UDPON | RXWBFLAG_IPV4)))
		return false;

	if (FUNC1((flags & (RXWBFLAG_MF | RXWBFLAG_TCPON | RXWBFLAG_TCPCS))
			== RXWBFLAG_TCPON)) {
		if (flags & RXWBFLAG_IPV4)
			FUNC0(jme, "TCP Checksum error\n");
		return false;
	}

	if (FUNC1((flags & (RXWBFLAG_MF | RXWBFLAG_UDPON | RXWBFLAG_UDPCS))
			== RXWBFLAG_UDPON)) {
		if (flags & RXWBFLAG_IPV4)
			FUNC0(jme, "UDP Checksum error.\n");
		return false;
	}

	if (FUNC1((flags & (RXWBFLAG_IPV4 | RXWBFLAG_IPCS))
			== RXWBFLAG_IPV4)) {
		FUNC0(jme, "IPv4 Checksum error.\n");
		return false;
	}

	return true;
}