; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_phy.c_pch_gbe_phy_read_reg_miic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_phy.c_pch_gbe_phy_read_reg_miic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_gbe_hw = type { %struct.pch_gbe_phy_info }
%struct.pch_gbe_phy_info = type { i32 }

@PHY_MAX_REG_ADDRESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"PHY Address %d is out of range\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PCH_GBE_HAL_MIIM_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pch_gbe_phy_read_reg_miic(%struct.pch_gbe_hw* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pch_gbe_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.pch_gbe_phy_info*, align 8
  store %struct.pch_gbe_hw* %0, %struct.pch_gbe_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %5, align 8
  %10 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %9, i32 0, i32 0
  store %struct.pch_gbe_phy_info* %10, %struct.pch_gbe_phy_info** %8, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @PHY_MAX_REG_ADDRESS, align 8
  %13 = icmp sgt i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %28

19:                                               ; preds = %3
  %20 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %5, align 8
  %21 = load %struct.pch_gbe_phy_info*, %struct.pch_gbe_phy_info** %8, align 8
  %22 = getelementptr inbounds %struct.pch_gbe_phy_info, %struct.pch_gbe_phy_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PCH_GBE_HAL_MIIM_READ, align 4
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @pch_gbe_mac_ctrl_miim(%struct.pch_gbe_hw* %20, i32 %23, i32 %24, i64 %25, i32 0)
  %27 = load i32*, i32** %7, align 8
  store i32 %26, i32* %27, align 4
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %19, %14
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i32 @pch_gbe_mac_ctrl_miim(%struct.pch_gbe_hw*, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
