
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int dummy; } ;
typedef enum sample_bulletin_result { ____Placeholder_sample_bulletin_result } sample_bulletin_result ;


 int PFVF_BULLETIN_UNCHANGED ;

__attribute__((used)) static inline enum sample_bulletin_result bnx2x_sample_bulletin(struct bnx2x *bp)
{
 return PFVF_BULLETIN_UNCHANGED;
}
