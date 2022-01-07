; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_mac.c_e1000e_check_for_copper_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_mac.c_e1000e_check_for_copper_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_mac_info }
%struct.e1000_mac_info = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 (%struct.e1000_hw.0*)* }
%struct.e1000_hw.0 = type opaque

@E1000_ERR_CONFIG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Error configuring flow control\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000e_check_for_copper_link(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_mac_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 0
  store %struct.e1000_mac_info* %8, %struct.e1000_mac_info** %4, align 8
  %9 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %10 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %53

14:                                               ; preds = %1
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %16 = call i64 @e1000e_phy_has_link_generic(%struct.e1000_hw* %15, i32 1, i32 0, i32* %6)
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i64, i64* %5, align 8
  store i64 %20, i64* %2, align 8
  br label %53

21:                                               ; preds = %14
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  store i64 0, i64* %2, align 8
  br label %53

25:                                               ; preds = %21
  %26 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %27 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %29 = call i32 @e1000e_check_downshift(%struct.e1000_hw* %28)
  %30 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %31 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %25
  %35 = load i64, i64* @E1000_ERR_CONFIG, align 8
  %36 = sub nsw i64 0, %35
  store i64 %36, i64* %2, align 8
  br label %53

37:                                               ; preds = %25
  %38 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %39 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %40, align 8
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %43 = bitcast %struct.e1000_hw* %42 to %struct.e1000_hw.0*
  %44 = call i32 %41(%struct.e1000_hw.0* %43)
  %45 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %46 = call i64 @e1000e_config_fc_after_link_up(%struct.e1000_hw* %45)
  store i64 %46, i64* %5, align 8
  %47 = load i64, i64* %5, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %37
  %50 = call i32 @e_dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %37
  %52 = load i64, i64* %5, align 8
  store i64 %52, i64* %2, align 8
  br label %53

53:                                               ; preds = %51, %34, %24, %19, %13
  %54 = load i64, i64* %2, align 8
  ret i64 %54
}

declare dso_local i64 @e1000e_phy_has_link_generic(%struct.e1000_hw*, i32, i32, i32*) #1

declare dso_local i32 @e1000e_check_downshift(%struct.e1000_hw*) #1

declare dso_local i64 @e1000e_config_fc_after_link_up(%struct.e1000_hw*) #1

declare dso_local i32 @e_dbg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
