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
struct fw_packet {int /*<<< orphan*/ * header; int /*<<< orphan*/ * payload; } ;
struct fw_ohci {int /*<<< orphan*/  card; } ;
typedef  int /*<<< orphan*/  lock_old ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int CSR_BUS_MANAGER_ID ; 
 int EXTCODE_COMPARE_SWAP ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OHCI1394_CSRCompareData ; 
 int /*<<< orphan*/  OHCI1394_CSRControl ; 
 int /*<<< orphan*/  OHCI1394_CSRData ; 
 int /*<<< orphan*/  RCODE_COMPLETE ; 
 int /*<<< orphan*/  RCODE_TYPE_ERROR ; 
 int TCODE_LOCK_REQUEST ; 
 int TCODE_READ_QUADLET_REQUEST ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct fw_packet*) ; 
 int /*<<< orphan*/  FUNC6 (struct fw_packet*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (struct fw_ohci*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct fw_ohci*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC10(struct fw_ohci *ohci,
			      struct fw_packet *packet, u32 csr)
{
	struct fw_packet response;
	int tcode, length, ext_tcode, sel;
	__be32 *payload, lock_old;
	u32 lock_arg, lock_data;

	tcode = FUNC2(packet->header[0]);
	length = FUNC0(packet->header[3]);
	payload = packet->payload;
	ext_tcode = FUNC1(packet->header[3]);

	if (tcode == TCODE_LOCK_REQUEST &&
	    ext_tcode == EXTCODE_COMPARE_SWAP && length == 8) {
		lock_arg = FUNC3(payload[0]);
		lock_data = FUNC3(payload[1]);
	} else if (tcode == TCODE_READ_QUADLET_REQUEST) {
		lock_arg = 0;
		lock_data = 0;
	} else {
		FUNC6(&response, packet->header,
				 RCODE_TYPE_ERROR, NULL, 0);
		goto out;
	}

	sel = (csr - CSR_BUS_MANAGER_ID) / 4;
	FUNC9(ohci, OHCI1394_CSRData, lock_data);
	FUNC9(ohci, OHCI1394_CSRCompareData, lock_arg);
	FUNC9(ohci, OHCI1394_CSRControl, sel);

	if (FUNC8(ohci, OHCI1394_CSRControl) & 0x80000000)
		lock_old = FUNC4(FUNC8(ohci, OHCI1394_CSRData));
	else
		FUNC7("swap not done yet\n");

	FUNC6(&response, packet->header,
			 RCODE_COMPLETE, &lock_old, sizeof(lock_old));
 out:
	FUNC5(&ohci->card, &response);
}