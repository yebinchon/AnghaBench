
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port {int actor_port_number; } ;
struct bond_marker {int tlv_type; } ;


 int AD_MARKER_RESPONSE_SUBTYPE ;
 scalar_t__ ad_marker_send (struct port*,struct bond_marker*) ;
 int memcpy (struct bond_marker*,struct bond_marker*,int) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static void ad_marker_info_received(struct bond_marker *marker_info,
 struct port *port)
{
 struct bond_marker marker;



 memcpy(&marker, marker_info, sizeof(struct bond_marker));

 marker.tlv_type=AD_MARKER_RESPONSE_SUBTYPE;


 if (ad_marker_send(port, &marker) >= 0) {
  pr_debug("Sent Marker Response on port %d\n", port->actor_port_number);
 }
}
