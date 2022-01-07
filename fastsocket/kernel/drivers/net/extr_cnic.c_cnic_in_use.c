
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cnic_sock {int flags; } ;


 int SK_F_INUSE ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int cnic_in_use(struct cnic_sock *csk)
{
 return test_bit(SK_F_INUSE, &csk->flags);
}
