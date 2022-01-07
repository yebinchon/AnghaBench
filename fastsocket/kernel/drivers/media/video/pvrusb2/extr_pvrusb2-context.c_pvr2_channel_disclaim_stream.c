
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pvr2_channel {TYPE_1__* stream; } ;
struct TYPE_2__ {int * user; int stream; } ;


 int pvr2_stream_kill (int ) ;

__attribute__((used)) static void pvr2_channel_disclaim_stream(struct pvr2_channel *cp)
{
 if (!cp->stream) return;
 pvr2_stream_kill(cp->stream->stream);
 cp->stream->user = ((void*)0);
 cp->stream = ((void*)0);
}
