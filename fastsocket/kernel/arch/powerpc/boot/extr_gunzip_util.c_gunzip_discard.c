
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gunzip_state {int dummy; } ;
typedef int discard_buf ;


 int gunzip_exactly (struct gunzip_state*,char*,int) ;

void gunzip_discard(struct gunzip_state *state, int len)
{
 static char discard_buf[128];

 while (len > sizeof(discard_buf)) {
  gunzip_exactly(state, discard_buf, sizeof(discard_buf));
  len -= sizeof(discard_buf);
 }

 if (len > 0)
  gunzip_exactly(state, discard_buf, len);
}
