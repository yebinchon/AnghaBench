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
struct concap_proto {int dummy; } ;

/* Variables and functions */
#define  ISDN_NET_ENCAP_X25IFACE 128 
 struct concap_proto* FUNC0 () ; 

struct concap_proto * FUNC1( int encap )
{
	switch ( encap ) {
	case ISDN_NET_ENCAP_X25IFACE:
		return FUNC0();
	}
	return NULL;
}