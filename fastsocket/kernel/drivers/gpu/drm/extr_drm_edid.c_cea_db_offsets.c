
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ERANGE ;

__attribute__((used)) static int
cea_db_offsets(const u8 *cea, int *start, int *end)
{

 *start = 4;
 *end = cea[2];
 if (*end == 0)
  *end = 127;
 if (*end < 4 || *end > 127)
  return -ERANGE;
 return 0;
}
