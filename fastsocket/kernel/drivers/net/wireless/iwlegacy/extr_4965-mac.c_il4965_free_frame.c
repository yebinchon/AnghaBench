
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int free_frames; } ;
struct il_frame {int list; } ;


 int list_add (int *,int *) ;
 int memset (struct il_frame*,int ,int) ;

__attribute__((used)) static void
il4965_free_frame(struct il_priv *il, struct il_frame *frame)
{
 memset(frame, 0, sizeof(*frame));
 list_add(&frame->list, &il->free_frames);
}
