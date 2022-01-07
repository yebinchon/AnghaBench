
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct av7110 {int aout; } ;


 int aux_ring_buffer_write (int *,int *,int) ;
 int dprintk (int,char*,struct av7110*) ;

__attribute__((used)) static void play_audio_cb(u8 *buf, int count, void *priv)
{
 struct av7110 *av7110 = (struct av7110 *) priv;
 dprintk(2, "av7110:%p, \n", av7110);

 aux_ring_buffer_write(&av7110->aout, buf, count);
}
