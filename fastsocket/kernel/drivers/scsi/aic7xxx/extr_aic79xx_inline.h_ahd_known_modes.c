
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahd_softc {void* saved_dst_mode; void* saved_src_mode; void* dst_mode; void* src_mode; } ;
typedef void* ahd_mode ;



__attribute__((used)) static inline void
ahd_known_modes(struct ahd_softc *ahd, ahd_mode src, ahd_mode dst)
{
 ahd->src_mode = src;
 ahd->dst_mode = dst;
 ahd->saved_src_mode = src;
 ahd->saved_dst_mode = dst;
}
