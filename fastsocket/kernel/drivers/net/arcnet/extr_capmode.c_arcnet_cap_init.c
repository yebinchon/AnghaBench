
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * arc_bcast_proto ;
 int * arc_proto_default ;
 int ** arc_proto_map ;
 int * arc_raw_proto ;
 int capmode_proto ;

__attribute__((used)) static void arcnet_cap_init(void)
{
 int count;

 for (count = 1; count <= 8; count++)
  if (arc_proto_map[count] == arc_proto_default)
   arc_proto_map[count] = &capmode_proto;


 if (arc_bcast_proto == arc_proto_default)
  arc_bcast_proto = &capmode_proto;

 arc_proto_default = &capmode_proto;
 arc_raw_proto = &capmode_proto;
}
