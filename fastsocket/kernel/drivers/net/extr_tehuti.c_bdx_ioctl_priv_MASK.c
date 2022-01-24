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
typedef  int u32 ;
struct net_device {int dummy; } ;
struct ifreq {int /*<<< orphan*/  ifr_data; } ;
struct bdx_priv {int dummy; } ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
#define  BDX_OP_READ 129 
#define  BDX_OP_WRITE 128 
 int /*<<< orphan*/  CAP_SYS_RAWIO ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,...) ; 
 int /*<<< orphan*/  ENTER ; 
 int EOPNOTSUPP ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct bdx_priv*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int SIOCDEVPRIVATE ; 
 int /*<<< orphan*/  FUNC4 (struct bdx_priv*,int,int) ; 
 int FUNC5 (struct bdx_priv*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int*,int) ; 
 int jiffies ; 
 struct bdx_priv* FUNC9 (struct net_device*) ; 

__attribute__((used)) static int FUNC10(struct net_device *ndev, struct ifreq *ifr, int cmd)
{
	struct bdx_priv *priv = FUNC9(ndev);
	u32 data[3];
	int error;

	ENTER;

	FUNC0("jiffies=%ld cmd=%d\n", jiffies, cmd);
	if (cmd != SIOCDEVPRIVATE) {
		error = FUNC7(data, ifr->ifr_data, sizeof(data));
		if (error) {
			FUNC1("cant copy from user\n");
			FUNC3(error);
		}
		FUNC0("%d 0x%x 0x%x\n", data[0], data[1], data[2]);
	}

	if (!FUNC6(CAP_SYS_RAWIO))
		return -EPERM;

	switch (data[0]) {

	case BDX_OP_READ:
		error = FUNC5(priv, data[1]);
		if (error < 0)
			return error;
		data[2] = FUNC2(priv, data[1]);
		FUNC0("read_reg(0x%x)=0x%x (dec %d)\n", data[1], data[2],
		    data[2]);
		error = FUNC8(ifr->ifr_data, data, sizeof(data));
		if (error)
			FUNC3(error);
		break;

	case BDX_OP_WRITE:
		error = FUNC5(priv, data[1]);
		if (error < 0)
			return error;
		FUNC4(priv, data[1], data[2]);
		FUNC0("write_reg(0x%x, 0x%x)\n", data[1], data[2]);
		break;

	default:
		FUNC3(-EOPNOTSUPP);
	}
	return 0;
}