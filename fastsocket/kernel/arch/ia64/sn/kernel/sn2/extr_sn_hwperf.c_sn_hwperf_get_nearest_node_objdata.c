
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sn_hwperf_port_info {int conn_id; } ;
struct sn_hwperf_object_info {int ports; scalar_t__ id; } ;
typedef int ptdata ;
typedef scalar_t__ cnodeid_t ;


 int BUG_ON (int) ;
 int EINVAL ;
 int ENODATA ;
 int ENOENT ;
 int SN_HWPERF_ENUM_PORTS ;
 scalar_t__ SN_HWPERF_FOREIGN (struct sn_hwperf_object_info*) ;
 scalar_t__ SN_HWPERF_IS_IONODE (struct sn_hwperf_object_info*) ;
 int SN_HWPERF_IS_NODE (struct sn_hwperf_object_info*) ;
 scalar_t__ SN_HWPERF_IS_ROUTER (struct sn_hwperf_object_info*) ;
 int SN_HWPERF_OP_OK ;
 int cnode_possible (scalar_t__) ;
 int ia64_sn_hwperf_op (int ,int ,scalar_t__,int,int ,int ,int ,int *) ;
 struct sn_hwperf_object_info* sn_hwperf_findobj_id (struct sn_hwperf_object_info*,int,int ) ;
 scalar_t__ sn_hwperf_has_cpus (scalar_t__) ;
 scalar_t__ sn_hwperf_has_mem (scalar_t__) ;
 int sn_hwperf_master_nasid ;
 scalar_t__ sn_hwperf_obj_to_cnode (struct sn_hwperf_object_info*) ;

__attribute__((used)) static int sn_hwperf_get_nearest_node_objdata(struct sn_hwperf_object_info *objbuf,
 int nobj, cnodeid_t node, cnodeid_t *near_mem_node, cnodeid_t *near_cpu_node)
{
 int e;
 struct sn_hwperf_object_info *nodeobj = ((void*)0);
 struct sn_hwperf_object_info *op;
 struct sn_hwperf_object_info *dest;
 struct sn_hwperf_object_info *router;
 struct sn_hwperf_port_info ptdata[16];
 int sz, i, j;
 cnodeid_t c;
 int found_mem = 0;
 int found_cpu = 0;

 if (!cnode_possible(node))
  return -EINVAL;

 if (sn_hwperf_has_cpus(node)) {
  if (near_cpu_node)
   *near_cpu_node = node;
  found_cpu++;
 }

 if (sn_hwperf_has_mem(node)) {
  if (near_mem_node)
   *near_mem_node = node;
  found_mem++;
 }

 if (found_cpu && found_mem)
  return 0;


 for (i=0, op=objbuf; i < nobj; i++, op++) {
  if (!SN_HWPERF_IS_NODE(op) && !SN_HWPERF_IS_IONODE(op))
   continue;
  if (node == sn_hwperf_obj_to_cnode(op)) {
   nodeobj = op;
   break;
  }
 }
 if (!nodeobj) {
  e = -ENOENT;
  goto err;
 }


 sz = op->ports * sizeof(struct sn_hwperf_port_info);
 BUG_ON(sz > sizeof(ptdata));
 e = ia64_sn_hwperf_op(sn_hwperf_master_nasid,
         SN_HWPERF_ENUM_PORTS, nodeobj->id, sz,
         (u64)&ptdata, 0, 0, ((void*)0));
 if (e != SN_HWPERF_OP_OK) {
  e = -EINVAL;
  goto err;
 }


 for (router=((void*)0), j=0; j < op->ports; j++) {
  dest = sn_hwperf_findobj_id(objbuf, nobj, ptdata[j].conn_id);
  if (dest && SN_HWPERF_IS_ROUTER(dest))
   router = dest;
  if (!dest || SN_HWPERF_FOREIGN(dest) ||
      !SN_HWPERF_IS_NODE(dest) || SN_HWPERF_IS_IONODE(dest)) {
   continue;
  }
  c = sn_hwperf_obj_to_cnode(dest);
  if (!found_cpu && sn_hwperf_has_cpus(c)) {
   if (near_cpu_node)
    *near_cpu_node = c;
   found_cpu++;
  }
  if (!found_mem && sn_hwperf_has_mem(c)) {
   if (near_mem_node)
    *near_mem_node = c;
   found_mem++;
  }
 }

 if (router && (!found_cpu || !found_mem)) {

  sz = router->ports * sizeof(struct sn_hwperf_port_info);
  BUG_ON(sz > sizeof(ptdata));
  e = ia64_sn_hwperf_op(sn_hwperf_master_nasid,
          SN_HWPERF_ENUM_PORTS, router->id, sz,
          (u64)&ptdata, 0, 0, ((void*)0));
  if (e != SN_HWPERF_OP_OK) {
   e = -EINVAL;
   goto err;
  }
  for (j=0; j < router->ports; j++) {
   dest = sn_hwperf_findobj_id(objbuf, nobj,
    ptdata[j].conn_id);
   if (!dest || dest->id == node ||
       SN_HWPERF_FOREIGN(dest) ||
       !SN_HWPERF_IS_NODE(dest) ||
       SN_HWPERF_IS_IONODE(dest)) {
    continue;
   }
   c = sn_hwperf_obj_to_cnode(dest);
   if (!found_cpu && sn_hwperf_has_cpus(c)) {
    if (near_cpu_node)
     *near_cpu_node = c;
    found_cpu++;
   }
   if (!found_mem && sn_hwperf_has_mem(c)) {
    if (near_mem_node)
     *near_mem_node = c;
    found_mem++;
   }
   if (found_cpu && found_mem)
    break;
  }
 }

 if (!found_cpu || !found_mem) {

  for (i=0, op=objbuf; i < nobj; i++, op++) {
   if (SN_HWPERF_FOREIGN(op) ||
       SN_HWPERF_IS_IONODE(op) ||
       !SN_HWPERF_IS_NODE(op)) {
    continue;
   }
   c = sn_hwperf_obj_to_cnode(op);
   if (!found_cpu && sn_hwperf_has_cpus(c)) {
    if (near_cpu_node)
     *near_cpu_node = c;
    found_cpu++;
   }
   if (!found_mem && sn_hwperf_has_mem(c)) {
    if (near_mem_node)
     *near_mem_node = c;
    found_mem++;
   }
   if (found_cpu && found_mem)
    break;
  }
 }

 if (!found_cpu || !found_mem)
  e = -ENODATA;

err:
 return e;
}
