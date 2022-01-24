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
struct specialix_port {int dummy; } ;
struct specialix_board {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (struct specialix_port const*) ; 
 struct specialix_board* sx_board ; 
 int sx_port ; 

__attribute__((used)) static inline struct specialix_board *FUNC1(
					struct specialix_port const *port)
{
	return &sx_board[FUNC0(port - sx_port)];
}