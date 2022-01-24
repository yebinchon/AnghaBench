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
typedef  int u32 ;

/* Variables and functions */
 int IPFail ; 
 unsigned int RxProtoIP ; 
 unsigned int RxProtoTCP ; 
 unsigned int RxProtoUDP ; 
 int TCPFail ; 
 int UDPFail ; 
 scalar_t__ FUNC0 (int) ; 

__attribute__((used)) static inline unsigned int FUNC1 (u32 status)
{
	unsigned int protocol = (status >> 16) & 0x3;

	if (FUNC0((protocol == RxProtoTCP) && (!(status & TCPFail))))
		return 1;
	else if ((protocol == RxProtoUDP) && (!(status & UDPFail)))
		return 1;
	else if ((protocol == RxProtoIP) && (!(status & IPFail)))
		return 1;
	return 0;
}