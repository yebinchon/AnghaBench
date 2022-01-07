
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;


 int MAX_ALT ;
 scalar_t__** event_alternatives ;
 int find_alternative (scalar_t__) ;

__attribute__((used)) static int mpc7450_get_alternatives(u64 event, unsigned int flags, u64 alt[])
{
 int i, j, nalt = 1;
 u32 ae;

 alt[0] = event;
 nalt = 1;
 i = find_alternative((u32)event);
 if (i >= 0) {
  for (j = 0; j < MAX_ALT; ++j) {
   ae = event_alternatives[i][j];
   if (ae && ae != (u32)event)
    alt[nalt++] = ae;
  }
 }
 return nalt;
}
