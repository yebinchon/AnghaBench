
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long dbgMask; } ;


 unsigned long DL_EVL ;
 unsigned long DL_FTL ;
 unsigned long DL_LOG ;
 TYPE_1__ myDriverDebugHandle ;

void
DbgSetLevel (unsigned long dbgMask)
{
 myDriverDebugHandle.dbgMask = dbgMask | (DL_EVL | DL_FTL | DL_LOG) ;
}
