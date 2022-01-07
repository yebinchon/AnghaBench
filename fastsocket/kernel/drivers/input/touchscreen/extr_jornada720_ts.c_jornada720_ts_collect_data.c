
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jornada_ts {void** y_data; void** x_data; } ;


 int TXDUMMY ;
 void* jornada_ssp_byte (int ) ;

__attribute__((used)) static void jornada720_ts_collect_data(struct jornada_ts *jornada_ts)
{


    jornada_ts->x_data[0] = jornada_ssp_byte(TXDUMMY);
    jornada_ts->x_data[1] = jornada_ssp_byte(TXDUMMY);
    jornada_ts->x_data[2] = jornada_ssp_byte(TXDUMMY);


    jornada_ts->y_data[0] = jornada_ssp_byte(TXDUMMY);
    jornada_ts->y_data[1] = jornada_ssp_byte(TXDUMMY);
    jornada_ts->y_data[2] = jornada_ssp_byte(TXDUMMY);


    jornada_ts->x_data[3] = jornada_ssp_byte(TXDUMMY);


    jornada_ts->y_data[3] = jornada_ssp_byte(TXDUMMY);
}
