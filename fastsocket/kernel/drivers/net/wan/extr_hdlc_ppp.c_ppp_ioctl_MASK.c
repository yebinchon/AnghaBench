#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ppp {int req_timeout; int cr_retries; int term_retries; int keepalive_interval; int keepalive_timeout; int /*<<< orphan*/  lock; } ;
struct net_device {int flags; int hard_header_len; int /*<<< orphan*/  type; int /*<<< orphan*/ * header_ops; } ;
struct TYPE_4__ {int type; } ;
struct ifreq {TYPE_1__ ifr_settings; } ;
struct hdlc_header {int dummy; } ;
struct TYPE_5__ {int (* attach ) (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/ * proto; } ;
typedef  TYPE_2__ hdlc_device ;

/* Variables and functions */
 int /*<<< orphan*/  ARPHRD_PPP ; 
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  ENCODING_NRZ ; 
 int EPERM ; 
 int IFF_UP ; 
#define  IF_GET_PROTO 129 
#define  IF_PROTO_PPP 128 
 int /*<<< orphan*/  PARITY_CRC16_PR1_CCITT ; 
 int FUNC0 (struct net_device*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (struct net_device*) ; 
 struct ppp* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  ppp_header_ops ; 
 int /*<<< orphan*/  proto ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev, struct ifreq *ifr)
{
	hdlc_device *hdlc = FUNC2(dev);
	struct ppp *ppp;
	int result;

	switch (ifr->ifr_settings.type) {
	case IF_GET_PROTO:
		if (FUNC2(dev)->proto != &proto)
			return -EINVAL;
		ifr->ifr_settings.type = IF_PROTO_PPP;
		return 0; /* return protocol only, no settable parameters */

	case IF_PROTO_PPP:
		if (!FUNC1(CAP_NET_ADMIN))
			return -EPERM;

		if (dev->flags & IFF_UP)
			return -EBUSY;

		/* no settable parameters */

		result = hdlc->attach(dev, ENCODING_NRZ,PARITY_CRC16_PR1_CCITT);
		if (result)
			return result;

		result = FUNC0(dev, &proto, sizeof(struct ppp));
		if (result)
			return result;

		ppp = FUNC3(dev);
		FUNC5(&ppp->lock);
		ppp->req_timeout = 2;
		ppp->cr_retries = 10;
		ppp->term_retries = 2;
		ppp->keepalive_interval = 10;
		ppp->keepalive_timeout = 60;

		dev->hard_header_len = sizeof(struct hdlc_header);
		dev->header_ops = &ppp_header_ops;
		dev->type = ARPHRD_PPP;
		FUNC4(dev);
		return 0;
	}

	return -EINVAL;
}