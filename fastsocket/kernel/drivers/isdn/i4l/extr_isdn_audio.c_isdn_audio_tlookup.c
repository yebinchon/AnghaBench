
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;



__attribute__((used)) static inline void
isdn_audio_tlookup(const u_char *table, u_char *buff, unsigned long n)
{
 while (n--)
  *buff = table[*(unsigned char *)buff], buff++;

}
