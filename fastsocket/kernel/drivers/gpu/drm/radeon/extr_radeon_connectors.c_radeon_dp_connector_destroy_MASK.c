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
struct radeon_connector_atom_dig {scalar_t__ dp_i2c_bus; } ;
struct radeon_connector {struct radeon_connector_atom_dig* con_priv; struct radeon_connector_atom_dig* edid; } ;
struct drm_connector {scalar_t__ dp_i2c_bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct radeon_connector_atom_dig*) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_connector_atom_dig*) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_connector_atom_dig*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 struct radeon_connector* FUNC4 (struct radeon_connector_atom_dig*) ; 

__attribute__((used)) static void FUNC5(struct drm_connector *connector)
{
	struct radeon_connector *radeon_connector = FUNC4(connector);
	struct radeon_connector_atom_dig *radeon_dig_connector = radeon_connector->con_priv;

	if (radeon_connector->edid)
		FUNC2(radeon_connector->edid);
	if (radeon_dig_connector->dp_i2c_bus)
		FUNC3(radeon_dig_connector->dp_i2c_bus);
	FUNC2(radeon_connector->con_priv);
	FUNC1(connector);
	FUNC0(connector);
	FUNC2(connector);
}