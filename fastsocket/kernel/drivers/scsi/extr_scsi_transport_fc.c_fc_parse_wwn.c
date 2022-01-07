
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wwn ;
typedef unsigned int u8 ;
typedef int u64 ;


 int EINVAL ;
 int memset (unsigned int*,int ,int) ;
 int wwn_to_u64 (unsigned int*) ;

__attribute__((used)) static int
fc_parse_wwn(const char *ns, u64 *nm)
{
 unsigned int i, j;
 u8 wwn[8];

 memset(wwn, 0, sizeof(wwn));


 for (i=0, j=0; i < 16; i++) {
  if ((*ns >= 'a') && (*ns <= 'f'))
   j = ((j << 4) | ((*ns++ -'a') + 10));
  else if ((*ns >= 'A') && (*ns <= 'F'))
   j = ((j << 4) | ((*ns++ -'A') + 10));
  else if ((*ns >= '0') && (*ns <= '9'))
   j = ((j << 4) | (*ns++ -'0'));
  else
   return -EINVAL;
  if (i % 2) {
   wwn[i/2] = j & 0xff;
   j = 0;
  }
 }

 *nm = wwn_to_u64(wwn);

 return 0;
}
