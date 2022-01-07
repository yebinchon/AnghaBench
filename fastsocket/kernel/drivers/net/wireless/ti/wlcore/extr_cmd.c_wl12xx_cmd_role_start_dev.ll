; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl12xx_cmd_role_start_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl12xx_cmd_role_start_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32* }
%struct.wl12xx_vif = type { i64, i32 }
%struct.wl12xx_cmd_role_start = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"cmd role start dev %d\00", align 1
@IEEE80211_BAND_5GHZ = common dso_local global i32 0, align 4
@WLCORE_BAND_5GHZ = common dso_local global i32 0, align 4
@WL12XX_INVALID_LINK_ID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"role start: roleid=%d, hlid=%d, session=%d\00", align 1
@CMD_ROLE_START = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"failed to initiate cmd role enable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, %struct.wl12xx_vif*, i32, i32)* @wl12xx_cmd_role_start_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl12xx_cmd_role_start_dev(%struct.wl1271* %0, %struct.wl12xx_vif* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.wl1271*, align 8
  %6 = alloca %struct.wl12xx_vif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.wl12xx_cmd_role_start*, align 8
  %10 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %5, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.wl12xx_cmd_role_start* @kzalloc(i32 32, i32 %11)
  store %struct.wl12xx_cmd_role_start* %12, %struct.wl12xx_cmd_role_start** %9, align 8
  %13 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %9, align 8
  %14 = icmp ne %struct.wl12xx_cmd_role_start* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %10, align 4
  br label %104

18:                                               ; preds = %4
  %19 = load i32, i32* @DEBUG_CMD, align 4
  %20 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %21 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 (i32, i8*, i32, ...) @wl1271_debug(i32 %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %25 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %9, align 8
  %28 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @IEEE80211_BAND_5GHZ, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %18
  %33 = load i32, i32* @WLCORE_BAND_5GHZ, align 4
  %34 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %9, align 8
  %35 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %32, %18
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %9, align 8
  %39 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %41 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @WL12XX_INVALID_LINK_ID, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %36
  %46 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %47 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %48 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %49 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %48, i32 0, i32 0
  %50 = call i32 @wl12xx_allocate_link(%struct.wl1271* %46, %struct.wl12xx_vif* %47, i64* %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %101

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54, %36
  %56 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %57 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %9, align 8
  %60 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i64 %58, i64* %61, align 8
  %62 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %63 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %66 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %9, align 8
  %71 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  store i32 %69, i32* %72, align 8
  %73 = load i32, i32* @DEBUG_CMD, align 4
  %74 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %9, align 8
  %75 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %9, align 8
  %78 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %9, align 8
  %82 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 (i32, i8*, i32, ...) @wl1271_debug(i32 %73, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %76, i64 %80, i32 %84)
  %86 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %87 = load i32, i32* @CMD_ROLE_START, align 4
  %88 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %9, align 8
  %89 = call i32 @wl1271_cmd_send(%struct.wl1271* %86, i32 %87, %struct.wl12xx_cmd_role_start* %88, i32 32, i32 0)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %55
  %93 = call i32 @wl1271_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %95

94:                                               ; preds = %55
  br label %101

95:                                               ; preds = %92
  %96 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %97 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %98 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %99 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %98, i32 0, i32 0
  %100 = call i32 @wl12xx_free_link(%struct.wl1271* %96, %struct.wl12xx_vif* %97, i64* %99)
  br label %101

101:                                              ; preds = %95, %94, %53
  %102 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %9, align 8
  %103 = call i32 @kfree(%struct.wl12xx_cmd_role_start* %102)
  br label %104

104:                                              ; preds = %101, %15
  %105 = load i32, i32* %10, align 4
  ret i32 %105
}

declare dso_local %struct.wl12xx_cmd_role_start* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1271_debug(i32, i8*, i32, ...) #1

declare dso_local i32 @wl12xx_allocate_link(%struct.wl1271*, %struct.wl12xx_vif*, i64*) #1

declare dso_local i32 @wl1271_cmd_send(%struct.wl1271*, i32, %struct.wl12xx_cmd_role_start*, i32, i32) #1

declare dso_local i32 @wl1271_error(i8*) #1

declare dso_local i32 @wl12xx_free_link(%struct.wl1271*, %struct.wl12xx_vif*, i64*) #1

declare dso_local i32 @kfree(%struct.wl12xx_cmd_role_start*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
