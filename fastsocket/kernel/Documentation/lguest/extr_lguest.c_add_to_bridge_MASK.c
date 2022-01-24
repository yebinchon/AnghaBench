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
struct ifreq {char* ifr_name; int ifr_ifindex; } ;

/* Variables and functions */
 int IFNAMSIZ ; 
 int /*<<< orphan*/  SIOCBRADDIF ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,struct ifreq*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 

__attribute__((used)) static void FUNC5(int fd, const char *if_name, const char *br_name)
{
	int ifidx;
	struct ifreq ifr;

	if (!*br_name)
		FUNC1(1, "must specify bridge name");

	ifidx = FUNC2(if_name);
	if (!ifidx)
		FUNC1(1, "interface %s does not exist!", if_name);

	FUNC4(ifr.ifr_name, br_name, IFNAMSIZ);
	ifr.ifr_name[IFNAMSIZ-1] = '\0';
	ifr.ifr_ifindex = ifidx;
	if (FUNC3(fd, SIOCBRADDIF, &ifr) < 0)
		FUNC0(1, "can't add %s to bridge %s", if_name, br_name);
}