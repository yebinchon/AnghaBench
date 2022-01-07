
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct dvb_frontend {int dummy; } ;


 int af9005_get_post_vit_err_cw_count (struct dvb_frontend*,int*,int*,int *) ;

__attribute__((used)) static int af9005_get_post_vit_ber(struct dvb_frontend *fe,
       u32 * post_err_count, u32 * post_cw_count,
       u16 * abort_count)
{
 u32 loc_cw_count = 0, loc_err_count;
 u16 loc_abort_count = 0;
 int ret;

 ret =
     af9005_get_post_vit_err_cw_count(fe, &loc_err_count, &loc_cw_count,
          &loc_abort_count);
 if (ret)
  return ret;
 *post_err_count = loc_err_count;
 *post_cw_count = loc_cw_count * 204 * 8;
 *abort_count = loc_abort_count;

 return 0;
}
