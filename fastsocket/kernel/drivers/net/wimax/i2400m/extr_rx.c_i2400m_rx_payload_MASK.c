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
struct i2400m_pld {int dummy; } ;
struct i2400m {int dummy; } ;
struct device {int dummy; } ;
typedef  enum i2400m_pt { ____Placeholder_i2400m_pt } i2400m_pt ;

/* Variables and functions */
#define  I2400M_PT_CTRL 131 
#define  I2400M_PT_DATA 130 
#define  I2400M_PT_EDATA 129 
#define  I2400M_PT_TRACE 128 
 int /*<<< orphan*/  FUNC0 (int,struct device*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int,struct device*,char*,size_t,...) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 struct device* FUNC3 (struct i2400m*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2400m*,struct sk_buff*,unsigned int,void const*,size_t) ; 
 size_t FUNC5 (struct i2400m_pld const*) ; 
 int FUNC6 (struct i2400m_pld const*) ; 
 int /*<<< orphan*/  FUNC7 (struct i2400m*,struct sk_buff*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct i2400m*,struct sk_buff*,unsigned int,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (struct i2400m*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static
void FUNC11(struct i2400m *i2400m, struct sk_buff *skb_rx,
		       unsigned single_last, const struct i2400m_pld *pld,
		       const void *payload)
{
	struct device *dev = FUNC3(i2400m);
	size_t pl_size = FUNC5(pld);
	enum i2400m_pt pl_type = FUNC6(pld);

	FUNC1(7, dev, "RX: received payload type %u, %zu bytes\n",
		 pl_type, pl_size);
	FUNC0(8, dev, payload, pl_size);

	switch (pl_type) {
	case I2400M_PT_DATA:
		FUNC1(3, dev, "RX: data payload %zu bytes\n", pl_size);
		FUNC4(i2400m, skb_rx, single_last, payload, pl_size);
		break;
	case I2400M_PT_CTRL:
		FUNC7(i2400m, skb_rx, payload, pl_size);
		break;
	case I2400M_PT_TRACE:
		FUNC9(i2400m, payload, pl_size);
		break;
	case I2400M_PT_EDATA:
		FUNC1(3, dev, "ERX: data payload %zu bytes\n", pl_size);
		FUNC8(i2400m, skb_rx, single_last, payload, pl_size);
		break;
	default:	/* Anything else shouldn't come to the host */
		if (FUNC10())
			FUNC2(dev, "RX: HW BUG? unexpected payload type %u\n",
				pl_type);
	}
}