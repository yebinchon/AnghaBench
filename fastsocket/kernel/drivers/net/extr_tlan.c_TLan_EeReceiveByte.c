
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
 scalar_t__ TLan_GetBit (int ,scalar_t__) ;
 int TLan_SetBit (int ,scalar_t__) ;
 int outw (scalar_t__,scalar_t__) ;

__attribute__((used)) static void TLan_EeReceiveByte( u16 io_base, u8 *data, int stop )
{
 u8 place;
 u16 sio;

 outw( TLAN_NET_SIO, io_base + TLAN_DIO_ADR );
 sio = io_base + TLAN_DIO_DATA + TLAN_NET_SIO;
 *data = 0;


 TLan_ClearBit( TLAN_NET_SIO_ETXEN, sio );
 for ( place = 0x80; place; place >>= 1 ) {
  TLan_SetBit( TLAN_NET_SIO_ECLOK, sio );
  if ( TLan_GetBit( TLAN_NET_SIO_EDATA, sio ) )
   *data |= place;
  TLan_ClearBit( TLAN_NET_SIO_ECLOK, sio );
 }

 TLan_SetBit( TLAN_NET_SIO_ETXEN, sio );
 if ( ! stop ) {
  TLan_ClearBit( TLAN_NET_SIO_EDATA, sio );
  TLan_SetBit( TLAN_NET_SIO_ECLOK, sio );
  TLan_ClearBit( TLAN_NET_SIO_ECLOK, sio );
 } else {
  TLan_SetBit( TLAN_NET_SIO_EDATA, sio );
  TLan_SetBit( TLAN_NET_SIO_ECLOK, sio );
  TLan_ClearBit( TLAN_NET_SIO_ECLOK, sio );

  TLan_ClearBit( TLAN_NET_SIO_EDATA, sio );
  TLan_SetBit( TLAN_NET_SIO_ECLOK, sio );
  TLan_SetBit( TLAN_NET_SIO_EDATA, sio );
 }

}
