#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct airo_info {char* proc_name; TYPE_1__* proc_entry; } ;
struct TYPE_3__ {int /*<<< orphan*/  namelen; } ;

/* Variables and functions */
 TYPE_1__* airo_entry ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC1( struct net_device *dev,
				struct airo_info *apriv ) {
	if ( !apriv->proc_entry->namelen ) return 0;
	FUNC0("Stats",apriv->proc_entry);
	FUNC0("StatsDelta",apriv->proc_entry);
	FUNC0("Status",apriv->proc_entry);
	FUNC0("Config",apriv->proc_entry);
	FUNC0("SSID",apriv->proc_entry);
	FUNC0("APList",apriv->proc_entry);
	FUNC0("BSSList",apriv->proc_entry);
	FUNC0("WepKey",apriv->proc_entry);
	FUNC0(apriv->proc_name,airo_entry);
	return 0;
}