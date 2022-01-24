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
struct fw_packet {int* header; int header_length; size_t payload_length; scalar_t__ payload_bus; void* payload; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (size_t) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int) ; 
 int FUNC12 (int) ; 
 int FUNC13 (int) ; 
 int /*<<< orphan*/  RETRY_1 ; 
#define  TCODE_LOCK_REQUEST 132 
#define  TCODE_READ_BLOCK_REQUEST 131 
#define  TCODE_READ_QUADLET_REQUEST 130 
 int TCODE_READ_QUADLET_RESPONSE ; 
#define  TCODE_WRITE_BLOCK_REQUEST 129 
#define  TCODE_WRITE_QUADLET_REQUEST 128 
 int TCODE_WRITE_RESPONSE ; 

void FUNC14(struct fw_packet *response, u32 *request_header,
		      int rcode, void *payload, size_t length)
{
	int tcode, tlabel, extended_tcode, source, destination;

	tcode          = FUNC7(request_header[0]);
	tlabel         = FUNC8(request_header[0]);
	source         = FUNC4(request_header[0]);
	destination    = FUNC6(request_header[1]);
	extended_tcode = FUNC5(request_header[3]);

	response->header[0] =
		FUNC10(RETRY_1) |
		FUNC13(tlabel) |
		FUNC2(destination);
	response->header[1] =
		FUNC11(source) |
		FUNC9(rcode);
	response->header[2] = 0;

	switch (tcode) {
	case TCODE_WRITE_QUADLET_REQUEST:
	case TCODE_WRITE_BLOCK_REQUEST:
		response->header[0] |= FUNC12(TCODE_WRITE_RESPONSE);
		response->header_length = 12;
		response->payload_length = 0;
		break;

	case TCODE_READ_QUADLET_REQUEST:
		response->header[0] |=
			FUNC12(TCODE_READ_QUADLET_RESPONSE);
		if (payload != NULL)
			response->header[3] = *(u32 *)payload;
		else
			response->header[3] = 0;
		response->header_length = 16;
		response->payload_length = 0;
		break;

	case TCODE_READ_BLOCK_REQUEST:
	case TCODE_LOCK_REQUEST:
		response->header[0] |= FUNC12(tcode + 2);
		response->header[3] =
			FUNC1(length) |
			FUNC3(extended_tcode);
		response->header_length = 16;
		response->payload = payload;
		response->payload_length = length;
		break;

	default:
		FUNC0();
		return;
	}

	response->payload_bus = 0;
}