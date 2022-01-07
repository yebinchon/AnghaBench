
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u16 ;


 int debugf0 (char*,unsigned int) ;

__attribute__((used)) static int decode_syndrome(u16 syndrome, u16 *vectors, unsigned num_vecs,
      unsigned v_dim)
{
 unsigned int i, err_sym;

 for (err_sym = 0; err_sym < num_vecs / v_dim; err_sym++) {
  u16 s = syndrome;
  unsigned v_idx = err_sym * v_dim;
  unsigned v_end = (err_sym + 1) * v_dim;


  for (i = 1; i < (1U << 16); i <<= 1) {


   if (v_idx < v_end && vectors[v_idx] & i) {
    u16 ev_comp = vectors[v_idx++];


    if (s & i) {

     s ^= ev_comp;

     if (!s)
      return err_sym;
    }

   } else if (s & i)

    break;
  }
 }

 debugf0("syndrome(%x) not found\n", syndrome);
 return -1;
}
