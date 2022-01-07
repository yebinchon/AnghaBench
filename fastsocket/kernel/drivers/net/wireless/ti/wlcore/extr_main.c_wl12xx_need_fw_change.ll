; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wl12xx_need_fw_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wl12xx_need_fw_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32, i32, i64, i32, i32 }
%struct.vif_counter_data = type { i32, i32 }

@WL1271_FLAG_VIF_CHANGE_IN_PROGRESS = common dso_local global i32 0, align 4
@WLCORE_STATE_OFF = common dso_local global i64 0, align 8
@WL12XX_FW_TYPE_NORMAL = common dso_local global i32 0, align 4
@WL12XX_FW_TYPE_MULTI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, i64, i32)* @wl12xx_need_fw_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl12xx_need_fw_change(%struct.wl1271* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vif_counter_data, align 4
  %6 = alloca %struct.wl1271*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = bitcast %struct.vif_counter_data* %5 to i64*
  store i64 %1, i64* %10, align 4
  store %struct.wl1271* %0, %struct.wl1271** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %12 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %8, align 4
  %14 = getelementptr inbounds %struct.vif_counter_data, %struct.vif_counter_data* %5, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* @WL1271_FLAG_VIF_CHANGE_IN_PROGRESS, align 4
  %17 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %18 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %17, i32 0, i32 4
  %19 = call i64 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %65

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.vif_counter_data, %struct.vif_counter_data* %5, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %29, %25, %22
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %35 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %37 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @WLCORE_STATE_OFF, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %65

42:                                               ; preds = %32
  %43 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %44 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %65

48:                                               ; preds = %42
  %49 = load i32, i32* %9, align 4
  %50 = icmp sgt i32 %49, 1
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @WL12XX_FW_TYPE_NORMAL, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 1, i32* %4, align 4
  br label %65

56:                                               ; preds = %51, %48
  %57 = load i32, i32* %9, align 4
  %58 = icmp sle i32 %57, 1
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @WL12XX_FW_TYPE_MULTI, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store i32 1, i32* %4, align 4
  br label %65

64:                                               ; preds = %59, %56
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %63, %55, %47, %41, %21
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
