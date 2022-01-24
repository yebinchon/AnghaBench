#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int len; } ;
struct mlx4_wqe_inline_seg {void* byte_count; } ;
struct mlx4_en_tx_desc {struct mlx4_wqe_inline_seg inl; } ;
struct TYPE_4__ {TYPE_1__* frags; scalar_t__ nr_frags; } ;
struct TYPE_3__ {int size; } ;

/* Variables and functions */
 int CTRL_SIZE ; 
 int MLX4_INLINE_ALIGN ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct mlx4_wqe_inline_seg*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int,struct mlx4_wqe_inline_seg*,int) ; 
 int FUNC4 (struct sk_buff*) ; 
 TYPE_2__* FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(struct mlx4_en_tx_desc *tx_desc, struct sk_buff *skb,
			     int real_size, u16 *vlan_tag, int tx_ind, void *fragptr)
{
	struct mlx4_wqe_inline_seg *inl = &tx_desc->inl;
	int spc = MLX4_INLINE_ALIGN - CTRL_SIZE - sizeof *inl;

	if (skb->len <= spc) {
		inl->byte_count = FUNC0(1 << 31 | skb->len);
		FUNC2(skb, inl + 1, FUNC4(skb));
		if (FUNC5(skb)->nr_frags)
			FUNC1(((void *)(inl + 1)) + FUNC4(skb), fragptr,
			       FUNC5(skb)->frags[0].size);

	} else {
		inl->byte_count = FUNC0(1 << 31 | spc);
		if (FUNC4(skb) <= spc) {
			FUNC2(skb, inl + 1, FUNC4(skb));
			if (FUNC4(skb) < spc) {
				FUNC1(((void *)(inl + 1)) + FUNC4(skb),
					fragptr, spc - FUNC4(skb));
				fragptr +=  spc - FUNC4(skb);
			}
			inl = (void *) (inl + 1) + spc;
			FUNC1(((void *)(inl + 1)), fragptr, skb->len - spc);
		} else {
			FUNC2(skb, inl + 1, spc);
			inl = (void *) (inl + 1) + spc;
			FUNC3(skb, spc, inl + 1,
					FUNC4(skb) - spc);
			if (FUNC5(skb)->nr_frags)
				FUNC1(((void *)(inl + 1)) + FUNC4(skb) - spc,
					fragptr, FUNC5(skb)->frags[0].size);
		}

		FUNC6();
		inl->byte_count = FUNC0(1 << 31 | (skb->len - spc));
	}
}