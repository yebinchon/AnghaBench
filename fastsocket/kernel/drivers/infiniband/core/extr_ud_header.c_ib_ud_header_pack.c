
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_ud_header {int immediate_data; scalar_t__ immediate_present; int deth; int bth; int grh; scalar_t__ grh_present; int vlan; scalar_t__ vlan_present; int eth; scalar_t__ eth_present; int lrh; scalar_t__ lrh_present; } ;


 int ARRAY_SIZE (int ) ;
 scalar_t__ IB_BTH_BYTES ;
 scalar_t__ IB_DETH_BYTES ;
 scalar_t__ IB_ETH_BYTES ;
 scalar_t__ IB_GRH_BYTES ;
 scalar_t__ IB_LRH_BYTES ;
 scalar_t__ IB_VLAN_BYTES ;
 int bth_table ;
 int deth_table ;
 int eth_table ;
 int grh_table ;
 int ib_pack (int ,int ,int *,void*) ;
 int lrh_table ;
 int memcpy (void*,int *,int) ;
 int vlan_table ;

int ib_ud_header_pack(struct ib_ud_header *header,
        void *buf)
{
 int len = 0;

 if (header->lrh_present) {
  ib_pack(lrh_table, ARRAY_SIZE(lrh_table),
   &header->lrh, buf + len);
  len += IB_LRH_BYTES;
 }
 if (header->eth_present) {
  ib_pack(eth_table, ARRAY_SIZE(eth_table),
   &header->eth, buf + len);
  len += IB_ETH_BYTES;
 }
 if (header->vlan_present) {
  ib_pack(vlan_table, ARRAY_SIZE(vlan_table),
   &header->vlan, buf + len);
  len += IB_VLAN_BYTES;
 }
 if (header->grh_present) {
  ib_pack(grh_table, ARRAY_SIZE(grh_table),
   &header->grh, buf + len);
  len += IB_GRH_BYTES;
 }

 ib_pack(bth_table, ARRAY_SIZE(bth_table),
  &header->bth, buf + len);
 len += IB_BTH_BYTES;

 ib_pack(deth_table, ARRAY_SIZE(deth_table),
  &header->deth, buf + len);
 len += IB_DETH_BYTES;

 if (header->immediate_present) {
  memcpy(buf + len, &header->immediate_data, sizeof header->immediate_data);
  len += sizeof header->immediate_data;
 }

 return len;
}
