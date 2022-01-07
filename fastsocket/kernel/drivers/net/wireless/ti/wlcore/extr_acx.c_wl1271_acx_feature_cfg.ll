; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_feature_cfg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_feature_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { i32 }
%struct.acx_feature_config = type { i64, i64, i32 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"acx feature cfg\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACX_FEATURE_CFG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Couldnt set HW encryption\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1271_acx_feature_cfg(%struct.wl1271* %0, %struct.wl12xx_vif* %1) #0 {
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca %struct.wl12xx_vif*, align 8
  %5 = alloca %struct.acx_feature_config*, align 8
  %6 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %4, align 8
  %7 = load i32, i32* @DEBUG_ACX, align 4
  %8 = call i32 @wl1271_debug(i32 %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.acx_feature_config* @kzalloc(i32 24, i32 %9)
  store %struct.acx_feature_config* %10, %struct.acx_feature_config** %5, align 8
  %11 = load %struct.acx_feature_config*, %struct.acx_feature_config** %5, align 8
  %12 = icmp ne %struct.acx_feature_config* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %6, align 4
  br label %35

16:                                               ; preds = %2
  %17 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %18 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.acx_feature_config*, %struct.acx_feature_config** %5, align 8
  %21 = getelementptr inbounds %struct.acx_feature_config, %struct.acx_feature_config* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load %struct.acx_feature_config*, %struct.acx_feature_config** %5, align 8
  %23 = getelementptr inbounds %struct.acx_feature_config, %struct.acx_feature_config* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.acx_feature_config*, %struct.acx_feature_config** %5, align 8
  %25 = getelementptr inbounds %struct.acx_feature_config, %struct.acx_feature_config* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %27 = load i32, i32* @ACX_FEATURE_CFG, align 4
  %28 = load %struct.acx_feature_config*, %struct.acx_feature_config** %5, align 8
  %29 = call i32 @wl1271_cmd_configure(%struct.wl1271* %26, i32 %27, %struct.acx_feature_config* %28, i32 24)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %16
  %33 = call i32 @wl1271_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %35

34:                                               ; preds = %16
  br label %35

35:                                               ; preds = %34, %32, %13
  %36 = load %struct.acx_feature_config*, %struct.acx_feature_config** %5, align 8
  %37 = call i32 @kfree(%struct.acx_feature_config* %36)
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local %struct.acx_feature_config* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1271_cmd_configure(%struct.wl1271*, i32, %struct.acx_feature_config*, i32) #1

declare dso_local i32 @wl1271_error(i8*) #1

declare dso_local i32 @kfree(%struct.acx_feature_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
