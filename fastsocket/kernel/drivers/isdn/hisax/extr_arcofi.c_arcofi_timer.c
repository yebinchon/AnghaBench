
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct IsdnCardState {int dummy; } ;


 int ARCOFI_TIMEOUT ;
 int arcofi_fsm (struct IsdnCardState*,int ,int *) ;

__attribute__((used)) static void
arcofi_timer(struct IsdnCardState *cs) {
 arcofi_fsm(cs, ARCOFI_TIMEOUT, ((void*)0));
}
