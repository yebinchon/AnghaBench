
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_stream {int mutex; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pvr2_stream_buffer_count (struct pvr2_stream*,int ) ;
 int pvr2_stream_internal_flush (struct pvr2_stream*) ;

__attribute__((used)) static void pvr2_stream_done(struct pvr2_stream *sp)
{
 mutex_lock(&sp->mutex); do {
  pvr2_stream_internal_flush(sp);
  pvr2_stream_buffer_count(sp,0);
 } while (0); mutex_unlock(&sp->mutex);
}
