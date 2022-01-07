
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_link_m_n {int tu; int gmch_m; int gmch_n; int link_m; int link_n; } ;


 int intel_reduce_ratio (int*,int*) ;

void
intel_link_compute_m_n(int bits_per_pixel, int nlanes,
         int pixel_clock, int link_clock,
         struct intel_link_m_n *m_n)
{
 m_n->tu = 64;
 m_n->gmch_m = bits_per_pixel * pixel_clock;
 m_n->gmch_n = link_clock * nlanes * 8;
 intel_reduce_ratio(&m_n->gmch_m, &m_n->gmch_n);
 m_n->link_m = pixel_clock;
 m_n->link_n = link_clock;
 intel_reduce_ratio(&m_n->link_m, &m_n->link_n);
}
