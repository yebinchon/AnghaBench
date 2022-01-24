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
struct net_device {int /*<<< orphan*/  type; } ;
struct ifreq {int /*<<< orphan*/  ifr_data; int /*<<< orphan*/  ifr_flags; } ;
struct frad_local {int /*<<< orphan*/  configured; int /*<<< orphan*/  type; int /*<<< orphan*/  initialized; } ;

/* Variables and functions */
#define  ARPHRD_FRAD 138 
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int /*<<< orphan*/  CAP_SYS_RAWIO ; 
 int EALREADY ; 
 int EINVAL ; 
 int ENOPROTOOPT ; 
 int EOPNOTSUPP ; 
 int EPERM ; 
#define  FRAD_GET_CONF 137 
#define  FRAD_SET_CONF 136 
#define  SDLA_CLEARMEM 135 
#define  SDLA_CPUSPEED 134 
#define  SDLA_IDENTIFY 133 
#define  SDLA_PROTOCOL 132 
#define  SDLA_READMEM 131 
#define  SDLA_START 130 
#define  SDLA_STOP 129 
#define  SDLA_WRITEMEM 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct frad_local* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int FUNC3 (struct net_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct net_device*,struct ifreq*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int FUNC7 (struct net_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev, struct ifreq *ifr, int cmd)
{
	struct frad_local *flp;

	if(!FUNC0(CAP_NET_ADMIN))
		return -EPERM;
		
	flp = FUNC1(dev);

	if (!flp->initialized)
		return(-EINVAL);

	switch (cmd)
	{
		case FRAD_GET_CONF:
		case FRAD_SET_CONF:
			return(FUNC3(dev, ifr->ifr_data, cmd == FRAD_GET_CONF));

		case SDLA_IDENTIFY:
			ifr->ifr_flags = flp->type;
			break;

		case SDLA_CPUSPEED:
			return(FUNC4(dev, ifr)); 

/* ==========================================================
NOTE:  This is rather a useless action right now, as the
       current driver does not support protocols other than
       FR.  However, Sangoma has modules for a number of
       other protocols in the works.
============================================================*/
		case SDLA_PROTOCOL:
			if (flp->configured)
				return(-EALREADY);

			switch (ifr->ifr_flags)
			{
				case ARPHRD_FRAD:
					dev->type = ifr->ifr_flags;
					break;
				default:
					return(-ENOPROTOOPT);
			}
			break;

		case SDLA_CLEARMEM:
			FUNC2(dev);
			break;

		case SDLA_WRITEMEM:
		case SDLA_READMEM:
			if(!FUNC0(CAP_SYS_RAWIO))
				return -EPERM;
			return(FUNC7(dev, ifr->ifr_data, cmd == SDLA_READMEM));

		case SDLA_START:
			FUNC5(dev);
			break;

		case SDLA_STOP:
			FUNC6(dev);
			break;

		default:
			return(-EOPNOTSUPP);
	}
	return(0);
}