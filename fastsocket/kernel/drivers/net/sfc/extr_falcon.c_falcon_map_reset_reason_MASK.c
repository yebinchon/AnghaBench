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
typedef  enum reset_type { ____Placeholder_reset_type } reset_type ;

/* Variables and functions */
 int RESET_TYPE_ALL ; 
 int RESET_TYPE_INVISIBLE ; 
#define  RESET_TYPE_RX_DESC_FETCH 131 
#define  RESET_TYPE_RX_RECOVERY 130 
#define  RESET_TYPE_TX_DESC_FETCH 129 
#define  RESET_TYPE_TX_SKIP 128 

__attribute__((used)) static enum reset_type FUNC0(enum reset_type reason)
{
	switch (reason) {
	case RESET_TYPE_RX_RECOVERY:
	case RESET_TYPE_RX_DESC_FETCH:
	case RESET_TYPE_TX_DESC_FETCH:
	case RESET_TYPE_TX_SKIP:
		/* These can occasionally occur due to hardware bugs.
		 * We try to reset without disrupting the link.
		 */
		return RESET_TYPE_INVISIBLE;
	default:
		return RESET_TYPE_ALL;
	}
}