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
struct sk_buff {int dummy; } ;
struct i2400m_roq {int /*<<< orphan*/  ws; int /*<<< orphan*/  queue; } ;
struct i2400m {int /*<<< orphan*/  (* bus_reset ) (struct i2400m*,int /*<<< orphan*/ ) ;} ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  I2400M_RO_TYPE_PACKET ; 
 int /*<<< orphan*/  I2400M_RT_WARM ; 
 unsigned int FUNC0 (struct i2400m_roq*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct i2400m*,struct i2400m_roq*,struct sk_buff*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int,struct device*,char*,struct i2400m*,struct i2400m_roq*,struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int,struct device*,char*,struct i2400m*,struct i2400m_roq*,struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 struct device* FUNC5 (struct i2400m*) ; 
 int /*<<< orphan*/  FUNC6 (struct i2400m*,struct i2400m_roq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i2400m*,struct i2400m_roq*) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct i2400m*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static
void FUNC11(struct i2400m *i2400m, struct i2400m_roq *roq,
		      struct sk_buff * skb, unsigned lbn)
{
	struct device *dev = FUNC5(i2400m);
	unsigned nsn, len;

	FUNC3(2, dev, "(i2400m %p roq %p skb %p lbn %u) = void\n",
		  i2400m, roq, skb, lbn);
	len = FUNC8(&roq->queue);
	nsn = FUNC0(roq, lbn);
	if (FUNC10(nsn >= 1024)) {
		FUNC4(dev, "SW BUG? queue nsn %d (lbn %u ws %u)\n",
			nsn, lbn, roq->ws);
		FUNC7(i2400m, roq);
		i2400m->bus_reset(i2400m, I2400M_RT_WARM);
	} else {
		FUNC1(i2400m, roq, skb, lbn, nsn);
		FUNC6(i2400m, roq, I2400M_RO_TYPE_PACKET,
				     roq->ws, len, lbn, nsn, ~0);
	}
	FUNC2(2, dev, "(i2400m %p roq %p skb %p lbn %u) = void\n",
		i2400m, roq, skb, lbn);
	return;
}