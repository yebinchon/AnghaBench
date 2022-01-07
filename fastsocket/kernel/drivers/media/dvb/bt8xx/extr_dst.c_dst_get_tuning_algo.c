
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {int dummy; } ;


 int DVBFE_ALGO_HW ;
 int DVBFE_ALGO_SW ;
 scalar_t__ dst_algo ;

__attribute__((used)) static int dst_get_tuning_algo(struct dvb_frontend *fe)
{
 return dst_algo ? DVBFE_ALGO_HW : DVBFE_ALGO_SW;
}
