
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ap_message {int * receive; scalar_t__ special; scalar_t__ length; scalar_t__ psmid; } ;



__attribute__((used)) static inline void ap_init_message(struct ap_message *ap_msg)
{
 ap_msg->psmid = 0;
 ap_msg->length = 0;
 ap_msg->special = 0;
 ap_msg->receive = ((void*)0);
}
