
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx18_stream {int id; size_t type; int s_flags; int name; struct cx18* cx; } ;
struct cx18 {struct cx18_stream* streams; } ;


 int CX18_DEBUG_WARN (char*,int ) ;
 size_t CX18_ENC_STREAM_TYPE_IDX ;
 scalar_t__ CX18_ENC_STREAM_TYPE_MPG ;
 size_t CX18_ENC_STREAM_TYPE_VBI ;
 int CX18_F_S_CLAIMED ;
 int CX18_F_S_INTERNAL_USE ;
 int clear_bit (int ,int *) ;
 int cx18_flush_queues (struct cx18_stream*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

void cx18_release_stream(struct cx18_stream *s)
{
 struct cx18 *cx = s->cx;
 struct cx18_stream *s_assoc;

 s->id = -1;
 if (s->type == CX18_ENC_STREAM_TYPE_IDX) {




  return;
 }

 if (s->type == CX18_ENC_STREAM_TYPE_VBI &&
  test_bit(CX18_F_S_INTERNAL_USE, &s->s_flags)) {

  return;
 }
 if (!test_and_clear_bit(CX18_F_S_CLAIMED, &s->s_flags)) {
  CX18_DEBUG_WARN("Release stream %s not in use!\n", s->name);
  return;
 }

 cx18_flush_queues(s);







 if (s->type != CX18_ENC_STREAM_TYPE_MPG)
  return;


 s_assoc = &cx->streams[CX18_ENC_STREAM_TYPE_IDX];
 if (test_and_clear_bit(CX18_F_S_INTERNAL_USE, &s_assoc->s_flags)) {
  clear_bit(CX18_F_S_CLAIMED, &s_assoc->s_flags);
  cx18_flush_queues(s_assoc);
 }


 s_assoc = &cx->streams[CX18_ENC_STREAM_TYPE_VBI];
 if (test_and_clear_bit(CX18_F_S_INTERNAL_USE, &s_assoc->s_flags)) {
  if (s_assoc->id == -1) {




   clear_bit(CX18_F_S_CLAIMED, &s_assoc->s_flags);
   cx18_flush_queues(s_assoc);
  }
 }
}
