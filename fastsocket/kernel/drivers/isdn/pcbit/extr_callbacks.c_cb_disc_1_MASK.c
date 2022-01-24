#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int ushort ;
struct sk_buff {int dummy; } ;
struct pcbit_dev {TYPE_1__* dev_if; int /*<<< orphan*/  id; } ;
struct pcbit_chan {int s_refnum; int /*<<< orphan*/  id; } ;
struct callb_data {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  arg; int /*<<< orphan*/  driver; int /*<<< orphan*/  command; } ;
typedef  TYPE_2__ isdn_ctrl ;
struct TYPE_4__ {int /*<<< orphan*/  (* statcallb ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ISDN_STAT_BHUP ; 
 int /*<<< orphan*/  MSG_DISC_RESP ; 
 int FUNC0 (struct pcbit_chan*,struct sk_buff**) ; 
 int /*<<< orphan*/  last_ref_num ; 
 int /*<<< orphan*/  FUNC1 (struct pcbit_dev*,int /*<<< orphan*/ ,int,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

void FUNC4(struct pcbit_dev * dev, struct pcbit_chan* chan, 
	       struct callb_data *data)
{
 	struct sk_buff *skb;
	int len;
        ushort refnum;
        isdn_ctrl ictl;
  
        if ((len = FUNC0(chan, &skb)) < 0) {
                FUNC2("capi_disc_resp failed\n");
                return;
        }

        refnum = last_ref_num++ & 0x7fffU;
        chan->s_refnum = refnum;

        FUNC1(dev, MSG_DISC_RESP, refnum, skb, len);    

        ictl.command = ISDN_STAT_BHUP;
        ictl.driver=dev->id;
        ictl.arg=chan->id;
        dev->dev_if->statcallb(&ictl);
}