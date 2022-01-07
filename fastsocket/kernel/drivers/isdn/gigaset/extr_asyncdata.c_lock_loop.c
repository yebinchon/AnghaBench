
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inbuf_t {struct cardstate* cs; } ;
struct cardstate {int dummy; } ;


 int DEBUG_LOCKCMD ;
 int gigaset_dbg_buffer (int ,char*,int,unsigned char*) ;
 int gigaset_if_receive (struct cardstate*,unsigned char*,int) ;

__attribute__((used)) static inline int lock_loop(unsigned char *src, int numbytes,
       struct inbuf_t *inbuf)
{
 struct cardstate *cs = inbuf->cs;

 gigaset_dbg_buffer(DEBUG_LOCKCMD, "received response",
      numbytes, src);
 gigaset_if_receive(cs, src, numbytes);

 return numbytes;
}
