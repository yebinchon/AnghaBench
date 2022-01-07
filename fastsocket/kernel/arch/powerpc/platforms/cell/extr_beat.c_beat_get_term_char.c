
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef scalar_t__ s64 ;
typedef scalar_t__ int64_t ;


 scalar_t__ beat_get_characters_from_console (int ,int *,int *) ;

int64_t beat_get_term_char(u64 vterm, u64 *len, u64 *t1, u64 *t2)
{
 u64 db[2];
 s64 ret;

 ret = beat_get_characters_from_console(vterm, len, (u8 *)db);
 if (ret == 0) {
  *t1 = db[0];
  *t2 = db[1];
 }
 return ret;
}
