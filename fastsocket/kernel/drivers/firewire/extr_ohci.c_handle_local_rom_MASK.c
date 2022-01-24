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
struct fw_packet {int /*<<< orphan*/ * header; } ;
struct fw_ohci {int /*<<< orphan*/  card; scalar_t__ config_rom; } ;

/* Variables and functions */
 int CONFIG_ROM_SIZE ; 
 int CSR_CONFIG_ROM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RCODE_ADDRESS_ERROR ; 
 int /*<<< orphan*/  RCODE_COMPLETE ; 
 int /*<<< orphan*/  RCODE_TYPE_ERROR ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct fw_packet*) ; 
 int /*<<< orphan*/  FUNC5 (struct fw_packet*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int) ; 

__attribute__((used)) static void FUNC6(struct fw_ohci *ohci,
			     struct fw_packet *packet, u32 csr)
{
	struct fw_packet response;
	int tcode, length, i;

	tcode = FUNC1(packet->header[0]);
	if (FUNC2(tcode))
		length = FUNC0(packet->header[3]);
	else
		length = 4;

	i = csr - CSR_CONFIG_ROM;
	if (i + length > CONFIG_ROM_SIZE) {
		FUNC5(&response, packet->header,
				 RCODE_ADDRESS_ERROR, NULL, 0);
	} else if (!FUNC3(tcode)) {
		FUNC5(&response, packet->header,
				 RCODE_TYPE_ERROR, NULL, 0);
	} else {
		FUNC5(&response, packet->header, RCODE_COMPLETE,
				 (void *) ohci->config_rom + i, length);
	}

	FUNC4(&ohci->card, &response);
}