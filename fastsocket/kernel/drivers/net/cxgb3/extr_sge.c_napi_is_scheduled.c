
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct napi_struct {int state; } ;


 int NAPI_STATE_SCHED ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline int napi_is_scheduled(struct napi_struct *napi)
{
 return test_bit(NAPI_STATE_SCHED, &napi->state);
}
