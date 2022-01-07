; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_8481_config_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_8481_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_phy = type { i32 }
%struct.link_params = type { i32, %struct.bnx2x* }
%struct.bnx2x = type { i32 }
%struct.link_vars = type { i32 }

@MISC_REGISTERS_GPIO_2 = common dso_local global i32 0, align 4
@MISC_REGISTERS_GPIO_OUTPUT_HIGH = common dso_local global i32 0, align 4
@MDIO_PMA_DEVAD = common dso_local global i32 0, align 4
@MDIO_PMA_REG_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)* @bnx2x_8481_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_8481_config_init(%struct.bnx2x_phy* %0, %struct.link_params* %1, %struct.link_vars* %2) #0 {
  %4 = alloca %struct.bnx2x_phy*, align 8
  %5 = alloca %struct.link_params*, align 8
  %6 = alloca %struct.link_vars*, align 8
  %7 = alloca %struct.bnx2x*, align 8
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %4, align 8
  store %struct.link_params* %1, %struct.link_params** %5, align 8
  store %struct.link_vars* %2, %struct.link_vars** %6, align 8
  %8 = load %struct.link_params*, %struct.link_params** %5, align 8
  %9 = getelementptr inbounds %struct.link_params, %struct.link_params* %8, i32 0, i32 1
  %10 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  store %struct.bnx2x* %10, %struct.bnx2x** %7, align 8
  %11 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %12 = load i32, i32* @MISC_REGISTERS_GPIO_2, align 4
  %13 = load i32, i32* @MISC_REGISTERS_GPIO_OUTPUT_HIGH, align 4
  %14 = load %struct.link_params*, %struct.link_params** %5, align 8
  %15 = getelementptr inbounds %struct.link_params, %struct.link_params* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @bnx2x_set_gpio(%struct.bnx2x* %11, i32 %12, i32 %13, i32 %16)
  %18 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %19 = load %struct.link_params*, %struct.link_params** %5, align 8
  %20 = getelementptr inbounds %struct.link_params, %struct.link_params* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @bnx2x_ext_phy_hw_reset(%struct.bnx2x* %18, i32 %21)
  %23 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %24 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %25 = load %struct.link_params*, %struct.link_params** %5, align 8
  %26 = call i32 @bnx2x_wait_reset_complete(%struct.bnx2x* %23, %struct.bnx2x_phy* %24, %struct.link_params* %25)
  %27 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %28 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %29 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %30 = load i32, i32* @MDIO_PMA_REG_CTRL, align 4
  %31 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %27, %struct.bnx2x_phy* %28, i32 %29, i32 %30, i32 32768)
  %32 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %33 = load %struct.link_params*, %struct.link_params** %5, align 8
  %34 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %35 = call i32 @bnx2x_848xx_cmn_config_init(%struct.bnx2x_phy* %32, %struct.link_params* %33, %struct.link_vars* %34)
  ret i32 %35
}

declare dso_local i32 @bnx2x_set_gpio(%struct.bnx2x*, i32, i32, i32) #1

declare dso_local i32 @bnx2x_ext_phy_hw_reset(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_wait_reset_complete(%struct.bnx2x*, %struct.bnx2x_phy*, %struct.link_params*) #1

declare dso_local i32 @bnx2x_cl45_write(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32) #1

declare dso_local i32 @bnx2x_848xx_cmn_config_init(%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
