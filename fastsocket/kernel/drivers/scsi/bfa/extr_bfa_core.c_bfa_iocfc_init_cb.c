
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int op_status; } ;
struct bfa_s {TYPE_1__ iocfc; int bfad; } ;
typedef scalar_t__ bfa_boolean_t ;


 int bfa_cb_init (int ,int ) ;

__attribute__((used)) static void
bfa_iocfc_init_cb(void *bfa_arg, bfa_boolean_t complete)
{
 struct bfa_s *bfa = bfa_arg;

 if (complete)
  bfa_cb_init(bfa->bfad, bfa->iocfc.op_status);
}
