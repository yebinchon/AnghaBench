
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RUNLENMAX ;
 char getDebugChar () ;
 char hex_asc_hi (int) ;
 char hex_asc_lo (int) ;
 scalar_t__ kgdb_started ;
 int putDebugChar (char) ;

__attribute__((used)) static void
putpacket(char *buffer)
{
 int checksum;
 int runlen;
 int encode;

 do {
  char *src = buffer;
  putDebugChar ('$');
  checksum = 0;
  while (*src) {

   putDebugChar (*src);
   checksum += *src;
   runlen = 0;
   while (runlen < RUNLENMAX && *src == src[runlen]) {
    runlen++;
   }
   if (runlen > 3) {

    putDebugChar ('*');
    checksum += '*';
    encode = runlen + ' ' - 4;
    putDebugChar (encode);
    checksum += encode;
    src += runlen;
   }
   else {
    src++;
   }
  }
  putDebugChar('#');
  putDebugChar(hex_asc_hi(checksum));
  putDebugChar(hex_asc_lo(checksum));
 } while(kgdb_started && (getDebugChar() != '+'));
}
