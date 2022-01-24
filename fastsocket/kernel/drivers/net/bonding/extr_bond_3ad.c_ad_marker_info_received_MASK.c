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
struct port {int /*<<< orphan*/  actor_port_number; } ;
struct bond_marker {int /*<<< orphan*/  tlv_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD_MARKER_RESPONSE_SUBTYPE ; 
 scalar_t__ FUNC0 (struct port*,struct bond_marker*) ; 
 int /*<<< orphan*/  FUNC1 (struct bond_marker*,struct bond_marker*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct bond_marker *marker_info,
	struct port *port)
{
	struct bond_marker marker;

	// copy the received marker data to the response marker
	//marker = *marker_info;
	FUNC1(&marker, marker_info, sizeof(struct bond_marker));
	// change the marker subtype to marker response
	marker.tlv_type=AD_MARKER_RESPONSE_SUBTYPE;
	// send the marker response

	if (FUNC0(port, &marker) >= 0) {
		FUNC2("Sent Marker Response on port %d\n", port->actor_port_number);
	}
}