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
struct nv50_curs {int dummy; } ;
struct nv50_chan {int /*<<< orphan*/  user; } ;
struct drm_crtc {int dummy; } ;

/* Variables and functions */
 struct nv50_chan* FUNC0 (struct nv50_curs*) ; 
 struct nv50_curs* FUNC1 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC3(struct drm_crtc *crtc, int x, int y)
{
	struct nv50_curs *curs = FUNC1(crtc);
	struct nv50_chan *chan = FUNC0(curs);
	FUNC2(chan->user, 0x0084, (y << 16) | (x & 0xffff));
	FUNC2(chan->user, 0x0080, 0x00000000);
	return 0;
}