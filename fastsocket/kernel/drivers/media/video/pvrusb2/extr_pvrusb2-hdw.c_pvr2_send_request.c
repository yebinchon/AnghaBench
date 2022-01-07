
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_hdw {int dummy; } ;


 int HZ ;
 int pvr2_send_request_ex (struct pvr2_hdw*,int,int ,void*,unsigned int,void*,unsigned int) ;

int pvr2_send_request(struct pvr2_hdw *hdw,
        void *write_data,unsigned int write_len,
        void *read_data,unsigned int read_len)
{
 return pvr2_send_request_ex(hdw,HZ*4,0,
        write_data,write_len,
        read_data,read_len);
}
