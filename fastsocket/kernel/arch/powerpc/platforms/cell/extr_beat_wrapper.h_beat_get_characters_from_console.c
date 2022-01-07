
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int s64 ;


 int HV_get_characters_from_console ;
 int beat_hcall3 (int ,int *,int ,int *) ;
 int memcpy (int *,int *,int ) ;

__attribute__((used)) static inline s64 beat_get_characters_from_console(u64 termno, u64 *len,
 u8 *buffer)
{
 u64 dummy[3];
 s64 ret;

 ret = beat_hcall3(HV_get_characters_from_console, dummy, termno, len);
 *len = dummy[0];
 memcpy(buffer, dummy + 1, *len);
 return ret;
}
