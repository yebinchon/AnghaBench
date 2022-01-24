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
struct pvr2_hdw {int dummy; } ;

/* Variables and functions */
 int HZ ; 
 int FUNC0 (struct pvr2_hdw*,int,int /*<<< orphan*/ ,void*,unsigned int,void*,unsigned int) ; 

int FUNC1(struct pvr2_hdw *hdw,
		      void *write_data,unsigned int write_len,
		      void *read_data,unsigned int read_len)
{
	return FUNC0(hdw,HZ*4,0,
				    write_data,write_len,
				    read_data,read_len);
}