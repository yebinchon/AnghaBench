
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iser_conn {int refcount; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int iser_conn_release (struct iser_conn*,int) ;

int iser_conn_put(struct iser_conn *ib_conn, int can_destroy_id)
{
 if (atomic_dec_and_test(&ib_conn->refcount)) {
  iser_conn_release(ib_conn, can_destroy_id);
  return 1;
 }
 return 0;
}
