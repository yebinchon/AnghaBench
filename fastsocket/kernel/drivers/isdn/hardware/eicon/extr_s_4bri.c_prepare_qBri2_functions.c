
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int tasks; TYPE_1__* QuadroList; } ;
struct TYPE_4__ {int * QuadroAdapter; } ;
typedef TYPE_2__* PISDN_ADAPTER ;


 int MQ_INSTANCE_COUNT ;
 int set_qBri2_functions (int ) ;

void prepare_qBri2_functions (PISDN_ADAPTER IoAdapter) {
 if (!IoAdapter->tasks) {
  IoAdapter->tasks = MQ_INSTANCE_COUNT;
 }

 set_qBri2_functions (IoAdapter->QuadroList->QuadroAdapter[0]) ;
 if (IoAdapter->tasks > 1) {
  set_qBri2_functions (IoAdapter->QuadroList->QuadroAdapter[1]) ;
  set_qBri2_functions (IoAdapter->QuadroList->QuadroAdapter[2]) ;
  set_qBri2_functions (IoAdapter->QuadroList->QuadroAdapter[3]) ;
 }

}
