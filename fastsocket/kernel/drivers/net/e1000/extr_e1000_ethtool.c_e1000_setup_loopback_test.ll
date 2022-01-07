; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_ethtool.c_e1000_setup_loopback_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_ethtool.c_e1000_setup_loopback_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { %struct.e1000_hw }
%struct.e1000_hw = type { i64, i32 }

@e1000_media_type_fiber = common dso_local global i64 0, align 8
@e1000_media_type_internal_serdes = common dso_local global i64 0, align 8
@RCTL = common dso_local global i32 0, align 4
@E1000_RCTL_LBM_TCVR = common dso_local global i32 0, align 4
@e1000_media_type_copper = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_adapter*)* @e1000_setup_loopback_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_setup_loopback_test(%struct.e1000_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_adapter*, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %3, align 8
  %6 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %6, i32 0, i32 0
  store %struct.e1000_hw* %7, %struct.e1000_hw** %4, align 8
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @e1000_media_type_fiber, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %15 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @e1000_media_type_internal_serdes, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %13, %1
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %21 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %26 [
    i32 131, label %23
    i32 129, label %23
    i32 130, label %23
    i32 128, label %23
  ]

23:                                               ; preds = %19, %19, %19, %19
  %24 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %25 = call i32 @e1000_set_phy_loopback(%struct.e1000_adapter* %24)
  store i32 %25, i32* %2, align 4
  br label %46

26:                                               ; preds = %19
  %27 = load i32, i32* @RCTL, align 4
  %28 = call i32 @er32(i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* @E1000_RCTL_LBM_TCVR, align 4
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @RCTL, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @ew32(i32 %32, i32 %33)
  store i32 0, i32* %2, align 4
  br label %46

35:                                               ; preds = %13
  %36 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %37 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @e1000_media_type_copper, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %43 = call i32 @e1000_set_phy_loopback(%struct.e1000_adapter* %42)
  store i32 %43, i32* %2, align 4
  br label %46

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44
  store i32 7, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %41, %26, %23
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @e1000_set_phy_loopback(%struct.e1000_adapter*) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
