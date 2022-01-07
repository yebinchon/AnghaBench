
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;


 scalar_t__ TLAN_DIO_ADR ;
 scalar_t__ TLAN_DIO_DATA ;
 scalar_t__ TLAN_NET_SIO ;
 int TLAN_NET_SIO_ECLOK ;
 int TLAN_NET_SIO_EDATA ;
 int TLAN_NET_SIO_ETXEN ;
 int TLan_ClearBit (int ,scalar_t__) ;
 int TLan_GetBit (int ,scalar_t__) ;
 int TLan_SetBit (int ,scalar_t__) ;
 int outw (scalar_t__,scalar_t__) ;

__attribute__((used)) static int TLan_EeSendByte( u16 io_base, u8 data, int stop )
{
 int err;
 u8 place;
 u16 sio;

 outw( TLAN_NET_SIO, io_base + TLAN_DIO_ADR );
 sio = io_base + TLAN_DIO_DATA + TLAN_NET_SIO;


 for ( place = 0x80; place != 0; place >>= 1 ) {
  if ( place & data )
   TLan_SetBit( TLAN_NET_SIO_EDATA, sio );
  else
   TLan_ClearBit( TLAN_NET_SIO_EDATA, sio );
  TLan_SetBit( TLAN_NET_SIO_ECLOK, sio );
  TLan_ClearBit( TLAN_NET_SIO_ECLOK, sio );
 }
 TLan_ClearBit( TLAN_NET_SIO_ETXEN, sio );
 TLan_SetBit( TLAN_NET_SIO_ECLOK, sio );
 err = TLan_GetBit( TLAN_NET_SIO_EDATA, sio );
 TLan_ClearBit( TLAN_NET_SIO_ECLOK, sio );
 TLan_SetBit( TLAN_NET_SIO_ETXEN, sio );

 if ( ( ! err ) && stop ) {

  TLan_ClearBit( TLAN_NET_SIO_EDATA, sio );
  TLan_SetBit( TLAN_NET_SIO_ECLOK, sio );
  TLan_SetBit( TLAN_NET_SIO_EDATA, sio );
 }

 return ( err );

}
