
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct lpfc_vport {int dummy; } ;
struct lpfc_nodelist {int dummy; } ;


 struct lpfc_nodelist* __lpfc_find_node (struct lpfc_vport*,int ,int *) ;
 int lpfc_filter_by_rpi ;

struct lpfc_nodelist *
__lpfc_findnode_rpi(struct lpfc_vport *vport, uint16_t rpi)
{
 return __lpfc_find_node(vport, lpfc_filter_by_rpi, &rpi);
}
