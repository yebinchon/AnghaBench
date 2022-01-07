
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_cx18_card {int v4l2_dev; } ;
struct cx18 {int serialize_lock; } ;


 int mutex_lock (int *) ;
 struct cx18* to_cx18 (int ) ;

__attribute__((used)) static inline void snd_cx18_lock(struct snd_cx18_card *cxsc)
{
 struct cx18 *cx = to_cx18(cxsc->v4l2_dev);
 mutex_lock(&cx->serialize_lock);
}
