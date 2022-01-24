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
struct net_device {int dummy; } ;
struct conncmd {int /*<<< orphan*/  WS_name; int /*<<< orphan*/  host_name; } ;
struct clawctl {int /*<<< orphan*/  correlator; int /*<<< orphan*/  linkid; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  DISCONNECT ; 
 int FUNC1 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  setup ; 

__attribute__((used)) static int
FUNC2(struct net_device *dev, struct clawctl * p_ctl)
{
        int rc;
        struct conncmd *  p_connect;

	FUNC0(2, setup, "snd_dsc");
        p_connect=(struct conncmd *)&p_ctl->data;

        rc=FUNC1(dev, DISCONNECT, p_ctl->linkid,
		p_ctl->correlator, 0,
                p_connect->host_name, p_connect->WS_name);
        return rc;
}