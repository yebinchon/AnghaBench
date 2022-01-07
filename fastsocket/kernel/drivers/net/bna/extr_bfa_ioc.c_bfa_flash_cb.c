
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_flash {int status; int cbarg; int (* cbfn ) (int ,int ) ;scalar_t__ op_busy; } ;


 int stub1 (int ,int ) ;

__attribute__((used)) static void
bfa_flash_cb(struct bfa_flash *flash)
{
 flash->op_busy = 0;
 if (flash->cbfn)
  flash->cbfn(flash->cbarg, flash->status);
}
