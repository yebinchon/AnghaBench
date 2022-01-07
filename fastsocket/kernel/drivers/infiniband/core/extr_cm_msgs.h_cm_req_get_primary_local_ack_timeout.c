
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cm_req_msg {int primary_offset95; } ;



__attribute__((used)) static inline u8 cm_req_get_primary_local_ack_timeout(struct cm_req_msg *req_msg)
{
 return (u8) (req_msg->primary_offset95 >> 3);
}
