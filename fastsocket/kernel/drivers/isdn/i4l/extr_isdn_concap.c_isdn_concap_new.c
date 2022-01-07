
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct concap_proto {int dummy; } ;



 struct concap_proto* isdn_x25iface_proto_new () ;

struct concap_proto * isdn_concap_new( int encap )
{
 switch ( encap ) {
 case 128:
  return isdn_x25iface_proto_new();
 }
 return ((void*)0);
}
