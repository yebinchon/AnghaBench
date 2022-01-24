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
struct sk_buff {scalar_t__ data; } ;
struct pcbit_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int) ; 

int FUNC1(struct pcbit_chan * chan, struct sk_buff *skb)
{
        ushort errcode;

        errcode = *((ushort*) skb->data);
        FUNC0(skb, 2);
        
        /* Channel Identification 
        skb_pull(skb, skb->data[0] + 1);
        */
        return errcode;
}