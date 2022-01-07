
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUFMAX ;
 int gdb_cris_strlen (char*) ;
 char getDebugChar () ;
 unsigned char hex (char) ;
 int putDebugChar (char) ;

__attribute__((used)) static void
getpacket (char *buffer)
{
 unsigned char checksum;
 unsigned char xmitcsum;
 int i;
 int count;
 char ch;
 do {
  while ((ch = getDebugChar ()) != '$')
                                                                       ;
  checksum = 0;
  xmitcsum = -1;
  count = 0;

  while (count < BUFMAX) {
   ch = getDebugChar ();
   if (ch == '#')
    break;
   checksum = checksum + ch;
   buffer[count] = ch;
   count = count + 1;
  }
  buffer[count] = '\0';

  if (ch == '#') {
   xmitcsum = hex (getDebugChar ()) << 4;
   xmitcsum += hex (getDebugChar ());
   if (checksum != xmitcsum) {

    putDebugChar ('-');
   }
   else {

    putDebugChar ('+');

    if (buffer[2] == ':') {
     putDebugChar (buffer[0]);
     putDebugChar (buffer[1]);

     count = gdb_cris_strlen (buffer);
     for (i = 3; i <= count; i++)
      buffer[i - 3] = buffer[i];
    }
   }
  }
 } while (checksum != xmitcsum);
}
