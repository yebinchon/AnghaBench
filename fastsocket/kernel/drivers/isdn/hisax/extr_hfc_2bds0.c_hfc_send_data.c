
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct IsdnCardState {int HW_Flags; } ;
struct BCState {int channel; struct IsdnCardState* cs; } ;


 int FLG_LOCK_ATOMIC ;
 int debugl1 (struct IsdnCardState*,char*,int ) ;
 int hfc_fill_fifo (struct BCState*) ;
 int test_and_clear_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void
hfc_send_data(struct BCState *bcs)
{
 struct IsdnCardState *cs = bcs->cs;

 if (!test_and_set_bit(FLG_LOCK_ATOMIC, &cs->HW_Flags)) {
  hfc_fill_fifo(bcs);
  test_and_clear_bit(FLG_LOCK_ATOMIC, &cs->HW_Flags);
 } else
  debugl1(cs,"send_data %d blocked", bcs->channel);
}
