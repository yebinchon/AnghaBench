
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 int ARRAY_SIZE (scalar_t__**) ;
 int MAX_ALT ;
 scalar_t__** event_alternatives ;

__attribute__((used)) static int find_alternative(u64 event)
{
 int i, j;

 for (i = 0; i < ARRAY_SIZE(event_alternatives); ++i) {
  if (event < event_alternatives[i][0])
   break;

  for (j = 0; j < MAX_ALT && event_alternatives[i][j]; ++j)
   if (event == event_alternatives[i][j])
    return i;
 }

 return -1;
}
