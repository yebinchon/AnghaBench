
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roundingData {int dummy; } ;
typedef int float64 ;
typedef scalar_t__ flag ;


 int addFloat64Sigs (struct roundingData*,int ,int ,scalar_t__) ;
 scalar_t__ extractFloat64Sign (int ) ;
 int subFloat64Sigs (struct roundingData*,int ,int ,scalar_t__) ;

float64 float64_add( struct roundingData *roundData, float64 a, float64 b )
{
    flag aSign, bSign;

    aSign = extractFloat64Sign( a );
    bSign = extractFloat64Sign( b );
    if ( aSign == bSign ) {
        return addFloat64Sigs( roundData, a, b, aSign );
    }
    else {
        return subFloat64Sigs( roundData, a, b, aSign );
    }

}
