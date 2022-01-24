#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct ifreq {int /*<<< orphan*/  ifr_flags; int /*<<< orphan*/  ifr_name; int /*<<< orphan*/  ifr_addr; } ;
typedef  int /*<<< orphan*/  ifr ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  IFF_UP ; 
 int /*<<< orphan*/  SIOCSIFADDR ; 
 int /*<<< orphan*/  SIOCSIFFLAGS ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,struct ifreq*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifreq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static void FUNC5(int fd, const char *tapif, u32 ipaddr)
{
	struct ifreq ifr;
	struct sockaddr_in *sin = (struct sockaddr_in *)&ifr.ifr_addr;

	FUNC3(&ifr, 0, sizeof(ifr));
	FUNC4(ifr.ifr_name, tapif);

	/* Don't read these incantations.  Just cut & paste them like I did! */
	sin->sin_family = AF_INET;
	sin->sin_addr.s_addr = FUNC1(ipaddr);
	if (FUNC2(fd, SIOCSIFADDR, &ifr) != 0)
		FUNC0(1, "Setting %s interface address", tapif);
	ifr.ifr_flags = IFF_UP;
	if (FUNC2(fd, SIOCSIFFLAGS, &ifr) != 0)
		FUNC0(1, "Bringing interface %s up", tapif);
}