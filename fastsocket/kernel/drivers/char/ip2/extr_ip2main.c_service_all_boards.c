
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ i2eBordStrPtr ;


 int IP2_MAX_BOARDS ;
 scalar_t__* i2BoardPtrTable ;
 int i2ServiceBoard (scalar_t__) ;

__attribute__((used)) static inline void
service_all_boards(void)
{
 int i;
 i2eBordStrPtr pB;


 for( i = 0; i < IP2_MAX_BOARDS; ++i ) {
  pB = i2BoardPtrTable[i];
  if ( pB ) {
   i2ServiceBoard( pB );
  }
 }
}
