#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct net_device {unsigned int base_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int PIORH_MASK ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int RX_BASE ; 
 int RX_SIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct net_device *	dev,
	     int	addr,
	     char *	buf,
	     int	len)
{
  unsigned int	base = dev->base_addr;
  int		ring_ptr = addr;
  int		chunk_len;
  char *	buf_ptr = buf;

  /* Get all the buffer */
  while(len > 0)
    {
      /* Position the Program I/O Register at the ring buffer pointer */
      FUNC4(ring_ptr & 0xff, FUNC2(base));
      FUNC4(((ring_ptr >> 8) & PIORH_MASK), FUNC1(base));

      /* First, determine how much we can read without wrapping around the
	 ring buffer */
      if((addr + len) < (RX_BASE + RX_SIZE))
	chunk_len = len;
      else
	chunk_len = RX_BASE + RX_SIZE - addr;
      FUNC3(FUNC0(base), buf_ptr, chunk_len);
      buf_ptr += chunk_len;
      len -= chunk_len;
      ring_ptr = (ring_ptr - RX_BASE + chunk_len) % RX_SIZE + RX_BASE;
    }
  return(ring_ptr);
}