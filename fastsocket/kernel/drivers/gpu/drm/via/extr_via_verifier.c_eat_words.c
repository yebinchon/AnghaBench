
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int DRM_ERROR (char*) ;

__attribute__((used)) static __inline__ int
eat_words(const uint32_t **buf, const uint32_t *buf_end, unsigned num_words)
{
 if ((buf_end - *buf) >= num_words) {
  *buf += num_words;
  return 0;
 }
 DRM_ERROR("Illegal termination of DMA command buffer\n");
 return 1;
}
