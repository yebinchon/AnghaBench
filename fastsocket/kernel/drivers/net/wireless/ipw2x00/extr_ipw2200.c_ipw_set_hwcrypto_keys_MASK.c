#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ipw_priv {TYPE_2__* ieee; } ;
struct TYPE_3__ {int level; int flags; int /*<<< orphan*/  active_key; } ;
struct TYPE_4__ {TYPE_1__ sec; int /*<<< orphan*/  host_mc_decrypt; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCT_FLAG_EXT_SECURITY_CCM ; 
 int /*<<< orphan*/  DCT_FLAG_EXT_SECURITY_TKIP ; 
 int /*<<< orphan*/  DCW_WEP_KEY_SEC_TYPE_CCM ; 
 int /*<<< orphan*/  DCW_WEP_KEY_SEC_TYPE_WEP ; 
 int SEC_ACTIVE_KEY ; 
#define  SEC_LEVEL_0 131 
#define  SEC_LEVEL_1 130 
#define  SEC_LEVEL_2 129 
#define  SEC_LEVEL_3 128 
 int /*<<< orphan*/  FUNC0 (struct ipw_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ipw_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ipw_priv*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ipw_priv*,int) ; 

__attribute__((used)) static void FUNC4(struct ipw_priv *priv)
{
	switch (priv->ieee->sec.level) {
	case SEC_LEVEL_3:
		if (priv->ieee->sec.flags & SEC_ACTIVE_KEY)
			FUNC0(priv,
					    DCT_FLAG_EXT_SECURITY_CCM,
					    priv->ieee->sec.active_key);

		if (!priv->ieee->host_mc_decrypt)
			FUNC1(priv, DCW_WEP_KEY_SEC_TYPE_CCM);
		break;
	case SEC_LEVEL_2:
		if (priv->ieee->sec.flags & SEC_ACTIVE_KEY)
			FUNC0(priv,
					    DCT_FLAG_EXT_SECURITY_TKIP,
					    priv->ieee->sec.active_key);
		break;
	case SEC_LEVEL_1:
		FUNC1(priv, DCW_WEP_KEY_SEC_TYPE_WEP);
		FUNC3(priv, priv->ieee->sec.level);
		FUNC2(priv, priv->ieee->sec.level);
		break;
	case SEC_LEVEL_0:
	default:
		break;
	}
}