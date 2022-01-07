
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {scalar_t__ mode; } ;
struct parport {TYPE_1__ ieee1284; } ;


 scalar_t__ IEEE1284_MODE_NIBBLE ;
 int cpia_read_nibble_stream (struct parport*,int *,int,int ) ;
 int parport_read (struct parport*,int *,int) ;

__attribute__((used)) static int cpia_pp_read(struct parport *port, u8 *buffer, int len)
{
 int bytes_read;


 if(port->ieee1284.mode == IEEE1284_MODE_NIBBLE)
  bytes_read = cpia_read_nibble_stream(port,buffer,len,0);
 else {
  int new_bytes;
  for(bytes_read=0; bytes_read<len; bytes_read += new_bytes) {
   new_bytes = parport_read(port, buffer+bytes_read,
       len-bytes_read);
   if(new_bytes < 0) break;
  }
 }
 return bytes_read;
}
