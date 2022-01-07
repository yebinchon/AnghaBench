
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* i2ChanStrPtr ;
struct TYPE_4__ {scalar_t__ flush_flags; } ;


 int CHANN ;
 int CMD_STARTFL ;
 int CMD_STOPFL ;
 int ITRC_FLUSH ;
 int PTYPE_BYPASS ;
 int PTYPE_INLINE ;
 scalar_t__ STARTFL_FLAG ;
 scalar_t__ STOPFL_FLAG ;
 int i2QueueCommands (int ,TYPE_1__*,int ,int,int ) ;
 int ip2trace (int ,int ,int,int,...) ;

__attribute__((used)) static inline void
i2FlushOutput(i2ChanStrPtr pCh)
{

 ip2trace (CHANN, ITRC_FLUSH, 1, 1, pCh->flush_flags );

 if (pCh->flush_flags)
  return;

 if ( 1 != i2QueueCommands(PTYPE_BYPASS, pCh, 0, 1, CMD_STARTFL) ) {
  pCh->flush_flags = STARTFL_FLAG;

  ip2trace (CHANN, ITRC_FLUSH, 2, 0 );

 } else if ( 1 != i2QueueCommands(PTYPE_INLINE, pCh, 0, 1, CMD_STOPFL) ) {
  pCh->flush_flags = STOPFL_FLAG;

  ip2trace (CHANN, ITRC_FLUSH, 3, 0 );
 }
}
