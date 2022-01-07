
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct avc_response_frame {int* operand; } ;



__attribute__((used)) static int get_ca_object_length(struct avc_response_frame *r)
{
 return r->operand[7];
}
