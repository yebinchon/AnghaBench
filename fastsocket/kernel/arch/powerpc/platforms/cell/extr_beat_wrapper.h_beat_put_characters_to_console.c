
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int s64 ;


 int HV_put_characters_to_console ;
 int beat_hcall_norets (int ,int ,int ,int ,int ) ;
 int memcpy (int *,int *,int ) ;

__attribute__((used)) static inline s64 beat_put_characters_to_console(u64 termno, u64 len,
 u8 *buffer)
{
 u64 b[2];

 memcpy(b, buffer, len);
 return beat_hcall_norets(HV_put_characters_to_console, termno, len,
  b[0], b[1]);
}
