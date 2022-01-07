
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iscsi_conn {TYPE_1__* session; } ;
typedef scalar_t__ itt_t ;
struct TYPE_2__ {int age; } ;



__attribute__((used)) static void beiscsi_parse_pdu(struct iscsi_conn *conn, itt_t itt,
         int *index, int *age)
{
 *index = (int)itt;
 if (age)
  *age = conn->session->age;
}
