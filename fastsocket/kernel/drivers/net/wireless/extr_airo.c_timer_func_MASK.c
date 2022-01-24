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
struct net_device {struct airo_info* ml_priv; } ;
struct TYPE_2__ {int authType; } ;
struct airo_info {int /*<<< orphan*/  expires; int /*<<< orphan*/  jobs; int /*<<< orphan*/  sem; int /*<<< orphan*/  flags; TYPE_1__ config; int /*<<< orphan*/  defindex; int /*<<< orphan*/  keyindex; } ;

/* Variables and functions */
#define  AUTH_ENCRYPT 129 
 int AUTH_OPEN ; 
#define  AUTH_SHAREDKEY 128 
 int /*<<< orphan*/  FLAG_COMMIT ; 
 int HZ ; 
 int /*<<< orphan*/  JOB_AUTOWEP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  auto_wep ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct airo_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct airo_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct airo_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct airo_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct airo_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9( struct net_device *dev ) {
	struct airo_info *apriv = dev->ml_priv;

/* We don't have a link so try changing the authtype */
	FUNC4(apriv, 0);
	FUNC2(apriv, 0);
	switch(apriv->config.authType) {
		case AUTH_ENCRYPT:
/* So drop to OPEN */
			apriv->config.authType = AUTH_OPEN;
			break;
		case AUTH_SHAREDKEY:
			if (apriv->keyindex < auto_wep) {
				FUNC6(apriv, apriv->keyindex, 0, 0);
				apriv->config.authType = AUTH_SHAREDKEY;
				apriv->keyindex++;
			} else {
			        /* Drop to ENCRYPT */
				apriv->keyindex = 0;
				FUNC6(apriv, apriv->defindex, 0, 0);
				apriv->config.authType = AUTH_ENCRYPT;
			}
			break;
		default:  /* We'll escalate to SHAREDKEY */
			apriv->config.authType = AUTH_SHAREDKEY;
	}
	FUNC5 (FLAG_COMMIT, &apriv->flags);
	FUNC8(apriv, 0);
	FUNC3(apriv, 0);
	FUNC7(&apriv->sem);

/* Schedule check to see if the change worked */
	FUNC1(JOB_AUTOWEP, &apriv->jobs);
	apriv->expires = FUNC0(HZ*3);
}