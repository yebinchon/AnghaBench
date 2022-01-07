
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int registers ;


 int R0 ;
 int SUCCESS ;
 int USP ;
 int copy_registers (int *,int *,int) ;
 void* current_thread_c ;
 void* current_thread_g ;
 void* executing_task ;
 int gdb_cris_strcpy (char*,char*) ;
 scalar_t__ gdb_cris_strlen (char*) ;
 char hex_asc_hi (void*) ;
 char hex_asc_lo (void*) ;
 char* mem2hex (char*,unsigned char*,int ) ;
 char* pack_hex_byte (char*,int) ;
 size_t pos ;
 int putpacket (char*) ;
 int read_register (int,unsigned int*) ;
 int reg ;
 int reg_g ;
 int * register_size ;
 char* remcomOutBuffer ;

__attribute__((used)) static void
stub_is_stopped(int sigval)
{
 char *ptr = remcomOutBuffer;
 int regno;

 unsigned int reg_cont;
 int status;



 *ptr++ = 'T';
 ptr = pack_hex_byte(ptr, sigval);






 for (regno = R0; regno <= USP; regno++) {


                status = read_register (regno, &reg_cont);

  if (status == SUCCESS) {
   ptr = pack_hex_byte(ptr, regno);
                        *ptr++ = ':';

                        ptr = mem2hex(ptr, (unsigned char *)&reg_cont,
                                      register_size[regno]);
                        *ptr++ = ';';
                }

 }
 *ptr = 0;

 putpacket (remcomOutBuffer);
}
