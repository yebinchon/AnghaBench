
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iser_conn {int refcount; } ;


 int atomic_inc (int *) ;

void iser_conn_get(struct iser_conn *ib_conn)
{
 atomic_inc(&ib_conn->refcount);
}
