; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_rts_threshold.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_rts_threshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.wl12xx_vif = type { i32 }
%struct.acx_rts_threshold = type { i32, i32 }

@IEEE80211_MAX_RTS_THRESHOLD = common dso_local global i64 0, align 8
@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"acx rts threshold: %d\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DOT11_RTS_THRESHOLD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to set rts threshold: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1271_acx_rts_threshold(%struct.wl1271* %0, %struct.wl12xx_vif* %1, i64 %2) #0 {
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca %struct.wl12xx_vif*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.acx_rts_threshold*, align 8
  %8 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @IEEE80211_MAX_RTS_THRESHOLD, align 8
  %11 = icmp sgt i64 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %14 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %6, align 8
  br label %18

18:                                               ; preds = %12, %3
  %19 = load i32, i32* @DEBUG_ACX, align 4
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @wl1271_debug(i32 %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.acx_rts_threshold* @kzalloc(i32 8, i32 %22)
  store %struct.acx_rts_threshold* %23, %struct.acx_rts_threshold** %7, align 8
  %24 = load %struct.acx_rts_threshold*, %struct.acx_rts_threshold** %7, align 8
  %25 = icmp ne %struct.acx_rts_threshold* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %18
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %8, align 4
  br label %50

29:                                               ; preds = %18
  %30 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %31 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.acx_rts_threshold*, %struct.acx_rts_threshold** %7, align 8
  %34 = getelementptr inbounds %struct.acx_rts_threshold, %struct.acx_rts_threshold* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i64, i64* %6, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @cpu_to_le16(i32 %36)
  %38 = load %struct.acx_rts_threshold*, %struct.acx_rts_threshold** %7, align 8
  %39 = getelementptr inbounds %struct.acx_rts_threshold, %struct.acx_rts_threshold* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %41 = load i32, i32* @DOT11_RTS_THRESHOLD, align 4
  %42 = load %struct.acx_rts_threshold*, %struct.acx_rts_threshold** %7, align 8
  %43 = call i32 @wl1271_cmd_configure(%struct.wl1271* %40, i32 %41, %struct.acx_rts_threshold* %42, i32 8)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %29
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @wl1271_warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %50

49:                                               ; preds = %29
  br label %50

50:                                               ; preds = %49, %46, %26
  %51 = load %struct.acx_rts_threshold*, %struct.acx_rts_threshold** %7, align 8
  %52 = call i32 @kfree(%struct.acx_rts_threshold* %51)
  %53 = load i32, i32* %8, align 4
  ret i32 %53
}

declare dso_local i32 @wl1271_debug(i32, i8*, i64) #1

declare dso_local %struct.acx_rts_threshold* @kzalloc(i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @wl1271_cmd_configure(%struct.wl1271*, i32, %struct.acx_rts_threshold*, i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.acx_rts_threshold*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
