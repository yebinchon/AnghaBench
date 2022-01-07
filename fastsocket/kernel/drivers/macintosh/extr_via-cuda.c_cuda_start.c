
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adb_request {int* data; } ;


 size_t ACR ;
 size_t B ;
 size_t SR ;
 int SR_OUT ;
 int TIP ;
 int TREQ ;
 int cuda_state ;
 struct adb_request* current_req ;
 int in_8 (int *) ;
 int out_8 (int *,int) ;
 int sent_first_byte ;
 int * via ;

__attribute__((used)) static void
cuda_start(void)
{
    struct adb_request *req;



    req = current_req;
    if (req == 0)
 return;
    if ((in_8(&via[B]) & TREQ) == 0)
 return;


    out_8(&via[ACR], in_8(&via[ACR]) | SR_OUT);
    out_8(&via[SR], req->data[0]);
    out_8(&via[B], in_8(&via[B]) & ~TIP);
    cuda_state = sent_first_byte;
}
