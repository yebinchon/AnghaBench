
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int int64_t ;


 int beat_put_characters_to_console (int ,int ,int *) ;

int64_t beat_put_term_char(u64 vterm, u64 len, u64 t1, u64 t2)
{
 u64 db[2];

 db[0] = t1;
 db[1] = t2;
 return beat_put_characters_to_console(vterm, len, (u8 *)db);
}
