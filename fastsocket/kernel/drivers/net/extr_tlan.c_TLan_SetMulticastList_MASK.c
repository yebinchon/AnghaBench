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
typedef  int u32 ;
struct net_device {int flags; int mc_count; int /*<<< orphan*/  base_addr; struct dev_mc_list* mc_list; } ;
struct dev_mc_list {struct dev_mc_list* next; int /*<<< orphan*/  dmi_addr; } ;

/* Variables and functions */
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  TLAN_HASH_1 ; 
 int /*<<< orphan*/  TLAN_HASH_2 ; 
 int /*<<< orphan*/  TLAN_NET_CMD ; 
 int TLAN_NET_CMD_CAF ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int,char*) ; 

__attribute__((used)) static void FUNC5( struct net_device *dev )
{
	struct dev_mc_list	*dmi = dev->mc_list;
	u32			hash1 = 0;
	u32			hash2 = 0;
	int			i;
	u32			offset;
	u8			tmp;

	if ( dev->flags & IFF_PROMISC ) {
		tmp = FUNC0( dev->base_addr, TLAN_NET_CMD );
		FUNC2( dev->base_addr,
				TLAN_NET_CMD, tmp | TLAN_NET_CMD_CAF );
	} else {
		tmp = FUNC0( dev->base_addr, TLAN_NET_CMD );
		FUNC2( dev->base_addr,
				TLAN_NET_CMD, tmp & ~TLAN_NET_CMD_CAF );
		if ( dev->flags & IFF_ALLMULTI ) {
			for ( i = 0; i < 3; i++ )
				FUNC4( dev, i + 1, NULL );
			FUNC1( dev->base_addr, TLAN_HASH_1, 0xFFFFFFFF );
			FUNC1( dev->base_addr, TLAN_HASH_2, 0xFFFFFFFF );
		} else {
			for ( i = 0; i < dev->mc_count; i++ ) {
				if ( i < 3 ) {
					FUNC4( dev, i + 1,
						     (char *) &dmi->dmi_addr );
				} else {
					offset = FUNC3( (u8 *) &dmi->dmi_addr );
					if ( offset < 32 )
						hash1 |= ( 1 << offset );
					else
						hash2 |= ( 1 << ( offset - 32 ) );
				}
				dmi = dmi->next;
			}
			for ( ; i < 3; i++ )
				FUNC4( dev, i + 1, NULL );
			FUNC1( dev->base_addr, TLAN_HASH_1, hash1 );
			FUNC1( dev->base_addr, TLAN_HASH_2, hash2 );
		}
	}

}