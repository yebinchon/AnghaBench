
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 int MAX_ALT ;
 unsigned int PPMU_ONLY_COUNT_RUN ;
 scalar_t__** event_alternatives ;
 int find_alternative (scalar_t__) ;

__attribute__((used)) static int power8_get_alternatives(u64 event, unsigned int flags, u64 alt[])
{
 int i, j, num_alt = 0;
 u64 alt_event;

 alt[num_alt++] = event;

 i = find_alternative(event);
 if (i >= 0) {

  for (j = 0; j < MAX_ALT; ++j) {
   alt_event = event_alternatives[i][j];
   if (alt_event && alt_event != event)
    alt[num_alt++] = alt_event;
  }
 }

 if (flags & PPMU_ONLY_COUNT_RUN) {




  j = num_alt;
  for (i = 0; i < num_alt; ++i) {
   switch (alt[i]) {
   case 0x1e:
    alt[j++] = 0x600f4;
    break;
   case 0x600f4:
    alt[j++] = 0x1e;
    break;
   case 0x2:
    alt[j++] = 0x500fa;
    break;
   case 0x500fa:
    alt[j++] = 0x2;
    break;
   }
  }
  num_alt = j;
 }

 return num_alt;
}
