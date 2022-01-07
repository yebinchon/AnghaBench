
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* i2ChanStrPtr ;
struct TYPE_4__ {int flush_flags; } ;


 int CHANN ;
 int CMD_STARTFL ;
 int CMD_STOPFL ;
 int ITRC_FLUSH ;
 int PTYPE_BYPASS ;
 int PTYPE_INLINE ;
 int STARTFL_FLAG ;
 int STOPFL_FLAG ;
 int i2QueueCommands (int ,TYPE_1__*,int ,int,int ) ;
 int ip2trace (int ,int ,int,int,int) ;

__attribute__((used)) static int
i2RetryFlushOutput(i2ChanStrPtr pCh)
{
 int old_flags = pCh->flush_flags;

 ip2trace (CHANN, ITRC_FLUSH, 14, 1, old_flags );

 pCh->flush_flags = 0;


 if ( old_flags & STARTFL_FLAG ) {
  if ( 1 == i2QueueCommands(PTYPE_BYPASS, pCh, 0, 1, CMD_STARTFL) ) {
   old_flags = STOPFL_FLAG;
  } else {
   old_flags = STARTFL_FLAG;
  }

  ip2trace (CHANN, ITRC_FLUSH, 15, 1, old_flags );

 }
 if ( old_flags & STOPFL_FLAG ) {
  if (1 == i2QueueCommands(PTYPE_INLINE, pCh, 0, 1, CMD_STOPFL)) {
   old_flags = 0;
  }

  ip2trace (CHANN, ITRC_FLUSH, 16, 1, old_flags );
 }
 pCh->flush_flags = old_flags;

 ip2trace (CHANN, ITRC_FLUSH, 17, 1, old_flags );

 return old_flags;
}
