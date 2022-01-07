
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct l3_process {int dummy; } ;



__attribute__((used)) static int
ie_in_set(struct l3_process *pc, u_char ie, int *checklist) {
 int ret = 1;

 while (*checklist != -1) {
  if ((*checklist & 0xff) == ie) {
   if (ie & 0x80)
    return(-ret);
   else
    return(ret);
  }
  ret++;
  checklist++;
 }
 return(0);
}
