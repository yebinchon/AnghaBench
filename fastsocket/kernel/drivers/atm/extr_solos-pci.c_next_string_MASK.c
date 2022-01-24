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
struct sk_buff {char* data; int len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int) ; 

__attribute__((used)) static char *FUNC2(struct sk_buff *skb)
{
	int i = 0;
	char *this = skb->data;
	
	for (i = 0; i < skb->len; i++) {
		if (this[i] == '\n') {
			this[i] = 0;
			FUNC1(skb, i + 1);
			return this;
		}
		if (!FUNC0(this[i]))
			return NULL;
	}
	return NULL;
}