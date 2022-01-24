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
struct w90p910_txbd {int sl; int mode; } ;
struct w90p910_ether {size_t cur_tx; TYPE_1__* tdesc; struct platform_device* pdev; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct net_device {int /*<<< orphan*/  trans_start; } ;
struct TYPE_2__ {unsigned char** tran_buf; struct w90p910_txbd* desclist; } ;

/* Variables and functions */
 int CRCMODE ; 
 int MACTXINTEN ; 
 int PADDINGMODE ; 
 size_t TX_DESC_SIZE ; 
 int TX_OWEN_DMA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char*,int) ; 
 struct w90p910_ether* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev,
					unsigned char *data, int length)
{
	struct w90p910_ether *ether;
	struct w90p910_txbd *txbd;
	struct platform_device *pdev;
	unsigned char *buffer;

	ether = FUNC2(dev);
	pdev = ether->pdev;

	txbd = &ether->tdesc->desclist[ether->cur_tx];
	buffer = ether->tdesc->tran_buf[ether->cur_tx];

	if (length > 1514) {
		FUNC0(&pdev->dev, "send data %d bytes, check it\n", length);
		length = 1514;
	}

	txbd->sl = length & 0xFFFF;

	FUNC1(buffer, data, length);

	txbd->mode = TX_OWEN_DMA | PADDINGMODE | CRCMODE | MACTXINTEN;

	FUNC4(dev, 1);

	FUNC5(dev);

	if (++ether->cur_tx >= TX_DESC_SIZE)
		ether->cur_tx = 0;

	txbd = &ether->tdesc->desclist[ether->cur_tx];

	dev->trans_start = jiffies;

	if (txbd->mode & TX_OWEN_DMA)
		FUNC3(dev);

	return 0;
}