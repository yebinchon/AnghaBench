
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float64 ;
typedef int flag ;
typedef scalar_t__ bits64 ;


 int extractFloat64Exp (int) ;
 scalar_t__ extractFloat64Frac (int) ;
 int extractFloat64Sign (int) ;
 int float_flag_invalid ;
 int float_raise (int ) ;

flag float64_lt( float64 a, float64 b )
{
    flag aSign, bSign;

    if ( ( ( extractFloat64Exp( a ) == 0x7FF ) && extractFloat64Frac( a ) )
         || ( ( extractFloat64Exp( b ) == 0x7FF ) && extractFloat64Frac( b ) )
       ) {
        float_raise( float_flag_invalid );
        return 0;
    }
    aSign = extractFloat64Sign( a );
    bSign = extractFloat64Sign( b );
    if ( aSign != bSign ) return aSign && ( (bits64) ( ( a | b )<<1 ) != 0 );
    return ( a != b ) && ( aSign ^ ( a < b ) );

}
