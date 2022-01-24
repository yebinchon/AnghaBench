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
typedef  int u8 ;
struct efx_filter_spec {int flags; scalar_t__ type; } ;
typedef  scalar_t__ __be32 ;
typedef  scalar_t__ __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EFX_FILTER_FLAG_RX ; 
 scalar_t__ EFX_FILTER_TCP_WILD ; 
 scalar_t__ EFX_FILTER_UDP_WILD ; 
 scalar_t__ EFX_FILTER_UNSPEC ; 
 int EINVAL ; 
 int EPROTONOSUPPORT ; 
#define  IPPROTO_TCP 129 
#define  IPPROTO_UDP 128 
 int /*<<< orphan*/  FUNC1 (struct efx_filter_spec*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 

int FUNC2(struct efx_filter_spec *spec, u8 proto,
			      __be32 host, __be16 port)
{
	__be32 host1;
	__be16 port1;

	FUNC0(!(spec->flags & EFX_FILTER_FLAG_RX));

	/* This cannot currently be combined with other filtering */
	if (spec->type != EFX_FILTER_UNSPEC)
		return -EPROTONOSUPPORT;

	if (port == 0)
		return -EINVAL;

	switch (proto) {
	case IPPROTO_TCP:
		spec->type = EFX_FILTER_TCP_WILD;
		break;
	case IPPROTO_UDP:
		spec->type = EFX_FILTER_UDP_WILD;
		break;
	default:
		return -EPROTONOSUPPORT;
	}

	/* Filter is constructed in terms of source and destination,
	 * with the odd wrinkle that the ports are swapped in a UDP
	 * wildcard filter.  We need to convert from local and remote
	 * (= zero for wildcard) addresses.
	 */
	host1 = 0;
	if (proto != IPPROTO_UDP) {
		port1 = 0;
	} else {
		port1 = port;
		port = 0;
	}

	FUNC1(spec, host1, port1, host, port);
	return 0;
}