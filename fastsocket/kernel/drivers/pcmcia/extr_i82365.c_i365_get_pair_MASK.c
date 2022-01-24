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
typedef  int u_short ;

/* Variables and functions */
 int FUNC0 (int,int) ; 

__attribute__((used)) static u_short FUNC1(u_short sock, u_short reg)
{
    u_short a, b;
    a = FUNC0(sock, reg);
    b = FUNC0(sock, reg+1);
    return (a + (b<<8));
}