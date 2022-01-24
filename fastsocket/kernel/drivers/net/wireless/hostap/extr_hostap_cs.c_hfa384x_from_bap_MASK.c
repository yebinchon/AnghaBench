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
typedef  int u16 ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int HFA384X_DATA0_OFF ; 
 int HFA384X_DATA1_OFF ; 
 char FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,void*,int) ; 

__attribute__((used)) static int FUNC2(struct net_device *dev, u16 bap, void *buf,
			    int len)
{
	u16 d_off;
	u16 *pos;

	d_off = (bap == 1) ? HFA384X_DATA1_OFF : HFA384X_DATA0_OFF;
	pos = (u16 *) buf;

	if (len / 2)
		FUNC1(d_off, buf, len / 2);
	pos += len / 2;

	if (len & 1)
		*((char *) pos) = FUNC0(d_off);

	return 0;
}