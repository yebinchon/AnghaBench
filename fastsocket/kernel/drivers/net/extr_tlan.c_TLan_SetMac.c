
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int base_addr; } ;


 scalar_t__ TLAN_AREG_0 ;
 int TLan_DioWrite8 (int ,scalar_t__,char) ;

__attribute__((used)) static void TLan_SetMac( struct net_device *dev, int areg, char *mac )
{
 int i;

 areg *= 6;

 if ( mac != ((void*)0) ) {
  for ( i = 0; i < 6; i++ )
   TLan_DioWrite8( dev->base_addr,
     TLAN_AREG_0 + areg + i, mac[i] );
 } else {
  for ( i = 0; i < 6; i++ )
   TLan_DioWrite8( dev->base_addr,
     TLAN_AREG_0 + areg + i, 0 );
 }

}
