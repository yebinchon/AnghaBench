; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_warpcore_hw_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_warpcore_hw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_phy = type { i32 }
%struct.link_params = type { %struct.bnx2x* }
%struct.bnx2x = type { i32 }

@MISC_REG_WC0_RESET = common dso_local global i32 0, align 4
@MISC_REG_LCPLL_E40_PWRDWN = common dso_local global i32 0, align 4
@MISC_REG_LCPLL_E40_RESETB_ANA = common dso_local global i32 0, align 4
@MISC_REG_LCPLL_E40_RESETB_DIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x_phy*, %struct.link_params*)* @bnx2x_warpcore_hw_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_warpcore_hw_reset(%struct.bnx2x_phy* %0, %struct.link_params* %1) #0 {
  %3 = alloca %struct.bnx2x_phy*, align 8
  %4 = alloca %struct.link_params*, align 8
  %5 = alloca %struct.bnx2x*, align 8
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %3, align 8
  store %struct.link_params* %1, %struct.link_params** %4, align 8
  %6 = load %struct.link_params*, %struct.link_params** %4, align 8
  %7 = getelementptr inbounds %struct.link_params, %struct.link_params* %6, i32 0, i32 0
  %8 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  store %struct.bnx2x* %8, %struct.bnx2x** %5, align 8
  %9 = load %struct.link_params*, %struct.link_params** %4, align 8
  %10 = call i32 @bnx2x_warpcore_power_module(%struct.link_params* %9, i32 0)
  %11 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %12 = load i32, i32* @MISC_REG_WC0_RESET, align 4
  %13 = call i32 @REG_WR(%struct.bnx2x* %11, i32 %12, i32 3086)
  %14 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %15 = load i32, i32* @MISC_REG_LCPLL_E40_PWRDWN, align 4
  %16 = call i32 @REG_WR(%struct.bnx2x* %14, i32 %15, i32 1)
  %17 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %18 = load i32, i32* @MISC_REG_LCPLL_E40_RESETB_ANA, align 4
  %19 = call i32 @REG_WR(%struct.bnx2x* %17, i32 %18, i32 0)
  %20 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %21 = load i32, i32* @MISC_REG_LCPLL_E40_RESETB_DIG, align 4
  %22 = call i32 @REG_WR(%struct.bnx2x* %20, i32 %21, i32 0)
  ret void
}

declare dso_local i32 @bnx2x_warpcore_power_module(%struct.link_params*, i32) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
