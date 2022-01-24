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
typedef  int /*<<< orphan*/  u64 ;
struct hpsb_packet {int* header; int header_size; int expect_response; int data_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TCODE_WRITEB ; 

__attribute__((used)) static void FUNC1(struct hpsb_packet *packet, u64 addr,
				  int length)
{
	FUNC0(TCODE_WRITEB);
	packet->header[3] = length << 16;
	packet->header_size = 16;
	packet->expect_response = 1;
	packet->data_size = length + (length % 4 ? 4 - (length % 4) : 0);
}