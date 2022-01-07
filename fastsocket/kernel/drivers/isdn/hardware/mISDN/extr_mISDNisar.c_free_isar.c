
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct isar_hw {TYPE_2__* ch; } ;
struct TYPE_3__ {int Flags; } ;
struct TYPE_4__ {TYPE_1__ bch; int ftimer; } ;


 int FLG_INITIALIZED ;
 int ISDN_P_NONE ;
 int del_timer (int *) ;
 int modeisar (TYPE_2__*,int ) ;
 int test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void
free_isar(struct isar_hw *isar)
{
 modeisar(&isar->ch[0], ISDN_P_NONE);
 modeisar(&isar->ch[1], ISDN_P_NONE);
 del_timer(&isar->ch[0].ftimer);
 del_timer(&isar->ch[1].ftimer);
 test_and_clear_bit(FLG_INITIALIZED, &isar->ch[0].bch.Flags);
 test_and_clear_bit(FLG_INITIALIZED, &isar->ch[1].bch.Flags);
}
