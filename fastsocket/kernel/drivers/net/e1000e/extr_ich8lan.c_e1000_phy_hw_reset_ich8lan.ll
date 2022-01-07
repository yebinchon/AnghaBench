; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_phy_hw_reset_ich8lan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_phy_hw_reset_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@e1000_pch2lan = common dso_local global i64 0, align 8
@FWSM = common dso_local global i32 0, align 4
@E1000_ICH_FWSM_FW_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_phy_hw_reset_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_phy_hw_reset_ich8lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  store i64 0, i64* %4, align 8
  %5 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %6 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @e1000_pch2lan, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load i32, i32* @FWSM, align 4
  %13 = call i32 @er32(i32 %12)
  %14 = load i32, i32* @E1000_ICH_FWSM_FW_VALID, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %19 = call i32 @e1000_gate_hw_phy_config_ich8lan(%struct.e1000_hw* %18, i32 1)
  br label %20

20:                                               ; preds = %17, %11, %1
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %22 = call i64 @e1000e_phy_hw_reset_generic(%struct.e1000_hw* %21)
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %4, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i64, i64* %4, align 8
  store i64 %26, i64* %2, align 8
  br label %30

27:                                               ; preds = %20
  %28 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %29 = call i64 @e1000_post_phy_reset_ich8lan(%struct.e1000_hw* %28)
  store i64 %29, i64* %2, align 8
  br label %30

30:                                               ; preds = %27, %25
  %31 = load i64, i64* %2, align 8
  ret i64 %31
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @e1000_gate_hw_phy_config_ich8lan(%struct.e1000_hw*, i32) #1

declare dso_local i64 @e1000e_phy_hw_reset_generic(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_post_phy_reset_ich8lan(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
