
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cm_rej_msg {int offset8; } ;



__attribute__((used)) static inline u8 cm_rej_get_msg_rejected(struct cm_rej_msg *rej_msg)
{
 return (u8) (rej_msg->offset8 >> 6);
}
