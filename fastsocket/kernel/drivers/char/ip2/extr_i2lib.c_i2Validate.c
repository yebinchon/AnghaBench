
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* i2ChanStrPtr ;
struct TYPE_3__ {int validity; } ;


 int CHANNEL_MAGIC ;
 int CHANNEL_MAGIC_BITS ;
 int CHANNEL_SUPPORT ;

__attribute__((used)) static inline int
i2Validate ( i2ChanStrPtr pCh )
{


 return ((pCh->validity & (CHANNEL_MAGIC_BITS | CHANNEL_SUPPORT))
     == (CHANNEL_MAGIC | CHANNEL_SUPPORT));
}
