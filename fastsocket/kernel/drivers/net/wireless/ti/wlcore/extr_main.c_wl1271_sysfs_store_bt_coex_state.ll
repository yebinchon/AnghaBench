; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_sysfs_store_bt_coex_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_sysfs_store_bt_coex_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.wl1271 = type { i64, i64, i32 }

@.str = private unnamed_addr constant [40 x i8] c"incorrect value written to bt_coex_mode\00", align 1
@WLCORE_STATE_ON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @wl1271_sysfs_store_bt_coex_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @wl1271_sysfs_store_bt_coex_state(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.wl1271*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.wl1271* @dev_get_drvdata(%struct.device* %13)
  store %struct.wl1271* %14, %struct.wl1271** %10, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @kstrtoul(i8* %15, i32 10, i64* %11)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = call i32 @wl1271_warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %21 = load i64, i64* %9, align 8
  store i64 %21, i64* %5, align 8
  br label %70

22:                                               ; preds = %4
  %23 = load %struct.wl1271*, %struct.wl1271** %10, align 8
  %24 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %23, i32 0, i32 2
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load i64, i64* %11, align 8
  %27 = icmp ne i64 %26, 0
  %28 = xor i1 %27, true
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %11, align 8
  %32 = load i64, i64* %11, align 8
  %33 = load %struct.wl1271*, %struct.wl1271** %10, align 8
  %34 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %22
  br label %65

38:                                               ; preds = %22
  %39 = load i64, i64* %11, align 8
  %40 = load %struct.wl1271*, %struct.wl1271** %10, align 8
  %41 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load %struct.wl1271*, %struct.wl1271** %10, align 8
  %43 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @WLCORE_STATE_ON, align 8
  %46 = icmp ne i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %38
  br label %65

51:                                               ; preds = %38
  %52 = load %struct.wl1271*, %struct.wl1271** %10, align 8
  %53 = call i32 @wl1271_ps_elp_wakeup(%struct.wl1271* %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %65

57:                                               ; preds = %51
  %58 = load %struct.wl1271*, %struct.wl1271** %10, align 8
  %59 = load %struct.wl1271*, %struct.wl1271** %10, align 8
  %60 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @wl1271_acx_sg_enable(%struct.wl1271* %58, i64 %61)
  %63 = load %struct.wl1271*, %struct.wl1271** %10, align 8
  %64 = call i32 @wl1271_ps_elp_sleep(%struct.wl1271* %63)
  br label %65

65:                                               ; preds = %57, %56, %50, %37
  %66 = load %struct.wl1271*, %struct.wl1271** %10, align 8
  %67 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %66, i32 0, i32 2
  %68 = call i32 @mutex_unlock(i32* %67)
  %69 = load i64, i64* %9, align 8
  store i64 %69, i64* %5, align 8
  br label %70

70:                                               ; preds = %65, %19
  %71 = load i64, i64* %5, align 8
  ret i64 %71
}

declare dso_local %struct.wl1271* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @wl1271_warning(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wl1271_ps_elp_wakeup(%struct.wl1271*) #1

declare dso_local i32 @wl1271_acx_sg_enable(%struct.wl1271*, i64) #1

declare dso_local i32 @wl1271_ps_elp_sleep(%struct.wl1271*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
