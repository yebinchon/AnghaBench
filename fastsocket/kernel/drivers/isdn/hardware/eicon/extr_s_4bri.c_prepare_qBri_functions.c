
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* QuadroList; } ;
struct TYPE_4__ {int * QuadroAdapter; } ;
typedef TYPE_2__* PISDN_ADAPTER ;


 int set_qBri_functions (int ) ;

void prepare_qBri_functions (PISDN_ADAPTER IoAdapter) {

 set_qBri_functions (IoAdapter->QuadroList->QuadroAdapter[0]) ;
 set_qBri_functions (IoAdapter->QuadroList->QuadroAdapter[1]) ;
 set_qBri_functions (IoAdapter->QuadroList->QuadroAdapter[2]) ;
 set_qBri_functions (IoAdapter->QuadroList->QuadroAdapter[3]) ;

}
