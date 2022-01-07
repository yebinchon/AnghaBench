
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int slip_unesc(unsigned char c, unsigned char *buf, int *pos,
                             int *esc)
{
 int ret;

 switch(c){
 case 131:
  *esc = 0;
  ret=*pos;
  *pos=0;
  return(ret);
 case 130:
  *esc = 1;
  return(0);
 case 128:
  if(*esc){
   *esc = 0;
   c = 130;
  }
  break;
 case 129:
  if(*esc){
   *esc = 0;
   c = 131;
  }
  break;
 }
 buf[(*pos)++] = c;
 return(0);
}
