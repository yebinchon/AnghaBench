
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CSR1212_KV_ID_NODE_CAPABILITIES ;
 int ENOMEM ;
 int HPSB_ERR (char*) ;
 int csr1212_new_immediate (int ,int) ;
 int csr_highlevel ;
 int hpsb_register_highlevel (int *) ;
 int node_cap ;

int init_csr(void)
{
 node_cap = csr1212_new_immediate(CSR1212_KV_ID_NODE_CAPABILITIES, 0x0083c0);
 if (!node_cap) {
  HPSB_ERR("Failed to allocate memory for Node Capabilties ConfigROM entry!");
  return -ENOMEM;
 }

 hpsb_register_highlevel(&csr_highlevel);

 return 0;
}
