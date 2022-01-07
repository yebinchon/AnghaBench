
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gunzip_state {int dummy; } ;


 int fatal (char*,int,int) ;
 int gunzip_partial (struct gunzip_state*,void*,int) ;

void gunzip_exactly(struct gunzip_state *state, void *dst, int dstlen)
{
 int len;

 len = gunzip_partial(state, dst, dstlen);
 if (len < dstlen)
  fatal("\n\rgunzip_exactly: ran out of data!"
    " Wanted %d, got %d.\n\r", dstlen, len);
}
