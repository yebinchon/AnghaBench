
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;


 scalar_t__ TLAN_DIO_ADR ;
 scalar_t__ TLAN_DIO_DATA ;
 scalar_t__ TLAN_NET_SIO ;
 int TLAN_NET_SIO_MCLK ;
 int TLAN_NET_SIO_MDATA ;
 int TLAN_NET_SIO_MTXEN ;
 int TLan_ClearBit (int ,scalar_t__) ;
 int TLan_GetBit (int ,scalar_t__) ;
 int TLan_SetBit (int ,scalar_t__) ;
 int outw (scalar_t__,scalar_t__) ;

__attribute__((used)) static void TLan_MiiSendData( u16 base_port, u32 data, unsigned num_bits )
{
 u16 sio;
 u32 i;

 if ( num_bits == 0 )
  return;

 outw( TLAN_NET_SIO, base_port + TLAN_DIO_ADR );
 sio = base_port + TLAN_DIO_DATA + TLAN_NET_SIO;
 TLan_SetBit( TLAN_NET_SIO_MTXEN, sio );

 for ( i = ( 0x1 << ( num_bits - 1 ) ); i; i >>= 1 ) {
  TLan_ClearBit( TLAN_NET_SIO_MCLK, sio );
  (void) TLan_GetBit( TLAN_NET_SIO_MCLK, sio );
  if ( data & i )
   TLan_SetBit( TLAN_NET_SIO_MDATA, sio );
  else
   TLan_ClearBit( TLAN_NET_SIO_MDATA, sio );
  TLan_SetBit( TLAN_NET_SIO_MCLK, sio );
  (void) TLan_GetBit( TLAN_NET_SIO_MCLK, sio );
 }

}
