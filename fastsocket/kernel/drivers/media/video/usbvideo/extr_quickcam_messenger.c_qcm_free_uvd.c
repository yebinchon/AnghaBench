
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvd {scalar_t__ user_data; } ;
struct qcm {int scratch; } ;


 int kfree (int ) ;
 int qcm_free_int (struct qcm*) ;
 int qcm_unregister_input (struct qcm*) ;

__attribute__((used)) static void qcm_free_uvd(struct uvd *uvd)
{
 struct qcm *cam = (struct qcm *) uvd->user_data;

 kfree(cam->scratch);
 qcm_unregister_input(cam);
 qcm_free_int(cam);
}
