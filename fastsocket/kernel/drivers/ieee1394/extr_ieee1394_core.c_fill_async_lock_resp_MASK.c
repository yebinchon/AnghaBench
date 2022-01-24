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
struct hpsb_packet {int* header; int header_size; int data_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int RCODE_COMPLETE ; 
 int /*<<< orphan*/  TCODE_LOCK_RESPONSE ; 

__attribute__((used)) static void FUNC1(struct hpsb_packet *packet, int rcode, int extcode,
			  int length)
{
	if (rcode != RCODE_COMPLETE)
		length = 0;

	FUNC0(TCODE_LOCK_RESPONSE);
	packet->header[3] = (length << 16) | extcode;
	packet->header_size = 16;
	packet->data_size = length;
}