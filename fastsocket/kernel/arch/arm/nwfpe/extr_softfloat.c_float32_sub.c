
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roundingData {int dummy; } ;
typedef int float32 ;
typedef scalar_t__ flag ;


 int addFloat32Sigs (struct roundingData*,int ,int ,scalar_t__) ;
 scalar_t__ extractFloat32Sign (int ) ;
 int subFloat32Sigs (struct roundingData*,int ,int ,scalar_t__) ;

float32 float32_sub( struct roundingData *roundData, float32 a, float32 b )
{
    flag aSign, bSign;

    aSign = extractFloat32Sign( a );
    bSign = extractFloat32Sign( b );
    if ( aSign == bSign ) {
        return subFloat32Sigs( roundData, a, b, aSign );
    }
    else {
        return addFloat32Sigs( roundData, a, b, aSign );
    }

}
