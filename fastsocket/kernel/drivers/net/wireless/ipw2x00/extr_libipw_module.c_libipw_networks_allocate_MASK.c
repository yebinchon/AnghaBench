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
struct libipw_network {int dummy; } ;
struct libipw_device {int /*<<< orphan*/ * networks; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int MAX_NETWORK_COUNT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct libipw_device *ieee)
{
	int i, j;

	for (i = 0; i < MAX_NETWORK_COUNT; i++) {
		ieee->networks[i] = FUNC2(sizeof(struct libipw_network),
					    GFP_KERNEL);
		if (!ieee->networks[i]) {
			FUNC0("Out of memory allocating beacons\n");
			for (j = 0; j < i; j++)
				FUNC1(ieee->networks[j]);
			return -ENOMEM;
		}
	}

	return 0;
}