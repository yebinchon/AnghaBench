
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dev_to_host_fis {int dummy; } ;


 int memcpy (void*,void*,int) ;

void sci_controller_copy_sata_response(void *response_buffer,
           void *frame_header,
           void *frame_buffer)
{

 memcpy(response_buffer, frame_header, sizeof(u32));

 memcpy(response_buffer + sizeof(u32),
        frame_buffer,
        sizeof(struct dev_to_host_fis) - sizeof(u32));
}
