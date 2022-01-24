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
struct pcbit_dev {int dummy; } ;
struct pcbit_chan {unsigned short s_refnum; } ;
struct callb_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_SELP_REQ ; 
 int FUNC0 (struct pcbit_chan*,struct sk_buff**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  last_ref_num ; 
 int /*<<< orphan*/  FUNC1 (struct pcbit_dev*,int /*<<< orphan*/ ,unsigned short,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

void FUNC3(struct pcbit_dev * dev, struct pcbit_chan* chan, 
	     struct callb_data *data)
{
        unsigned short refnum;
 	struct sk_buff *skb;
	int len;
        
        if ((len = FUNC0(chan, &skb, 0 /*incoming*/)) < 0)
        {
                FUNC2("capi_select_proto_req failed\n");
                return;
        }

        refnum = last_ref_num++ & 0x7fffU;
        chan->s_refnum = refnum;

        FUNC1(dev, MSG_SELP_REQ, refnum, skb, len);

}