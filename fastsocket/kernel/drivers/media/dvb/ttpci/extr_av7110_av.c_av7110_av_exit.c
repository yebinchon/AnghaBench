
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct av7110 {int * ipack; } ;


 int av7110_ipack_free (int *) ;

void av7110_av_exit(struct av7110 *av7110)
{
 av7110_ipack_free(&av7110->ipack[0]);
 av7110_ipack_free(&av7110->ipack[1]);
}
