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
struct pcbit_dev {int id; } ;
struct pcbit_chan {int id; } ;

/* Variables and functions */
 char** isdn_state_table ; 
 int /*<<< orphan*/  FUNC0 (struct pcbit_dev*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int,int,char*,char*,char*) ; 
 char* FUNC3 (unsigned short) ; 

void FUNC4(struct pcbit_dev * dev, struct pcbit_chan * chan, 
			unsigned short i, unsigned short ev, unsigned short f)
{
	char buf[256];
  
	FUNC2(buf, "change on device: %d channel:%d\n%s -> %s -> %s\n",
		dev->id, chan->id, 
		isdn_state_table[i], FUNC3(ev), isdn_state_table[f]
		);

#ifdef DEBUG
	printk("%s", buf);
#endif

	FUNC0(dev, buf);
}