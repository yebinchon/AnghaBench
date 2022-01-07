
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float32 ;
typedef int flag ;
typedef scalar_t__ bits32 ;


 int extractFloat32Exp (int) ;
 scalar_t__ extractFloat32Frac (int) ;
 scalar_t__ float32_is_signaling_nan (int) ;
 int float_flag_invalid ;
 int float_raise (int ) ;

flag float32_eq( float32 a, float32 b )
{

    if ( ( ( extractFloat32Exp( a ) == 0xFF ) && extractFloat32Frac( a ) )
         || ( ( extractFloat32Exp( b ) == 0xFF ) && extractFloat32Frac( b ) )
       ) {
        if ( float32_is_signaling_nan( a ) || float32_is_signaling_nan( b ) ) {
            float_raise( float_flag_invalid );
        }
        return 0;
    }
    return ( a == b ) || ( (bits32) ( ( a | b )<<1 ) == 0 );

}
