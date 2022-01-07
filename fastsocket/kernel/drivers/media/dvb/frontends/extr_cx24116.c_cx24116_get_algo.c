
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {int dummy; } ;


 int DVBFE_ALGO_HW ;

__attribute__((used)) static int cx24116_get_algo(struct dvb_frontend *fe)
{
 return DVBFE_ALGO_HW;
}
