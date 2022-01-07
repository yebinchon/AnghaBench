
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_2__ {int ie; int len; } ;


 TYPE_1__* max_ie_len ;

__attribute__((used)) static int
getmax_ie_len(u_char ie) {
 int i = 0;
 while (max_ie_len[i].ie != -1) {
  if (max_ie_len[i].ie == ie)
   return(max_ie_len[i].len);
  i++;
 }
 return(255);
}
