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
typedef  int ushort ;
struct sk_buff {int dummy; } ;
struct pcbit_dev {int dummy; } ;
struct pcbit_chan {int s_refnum; } ;
struct callb_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ACT_TRANSP_REQ ; 
 int FUNC0 (struct pcbit_chan*,struct sk_buff**) ; 
 int /*<<< orphan*/  last_ref_num ; 
 int /*<<< orphan*/  FUNC1 (struct pcbit_dev*,int /*<<< orphan*/ ,int,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

void FUNC3(struct pcbit_dev * dev, struct pcbit_chan* chan, 
	       struct callb_data *data) 
{
 	struct sk_buff *skb;
	int len;
        ushort refnum;

        if ((len = FUNC0(chan, &skb)) < 0)
        {
                FUNC2("capi_conn_activate_transp_req failed\n");
                return;
        }

        refnum = last_ref_num++ & 0x7fffU;
        chan->s_refnum = refnum;

        FUNC1(dev, MSG_ACT_TRANSP_REQ, refnum, skb, len);
}