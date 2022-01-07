; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_feature_cfg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_feature_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32 }
%struct.acx_feature_config = type { i64, i64 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"acx feature cfg\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACX_FEATURE_CFG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Couldn't set HW encryption\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1251_acx_feature_cfg(%struct.wl1251* %0) #0 {
  %2 = alloca %struct.wl1251*, align 8
  %3 = alloca %struct.acx_feature_config*, align 8
  %4 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %2, align 8
  %5 = load i32, i32* @DEBUG_ACX, align 4
  %6 = call i32 @wl1251_debug(i32 %5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.acx_feature_config* @kzalloc(i32 16, i32 %7)
  store %struct.acx_feature_config* %8, %struct.acx_feature_config** %3, align 8
  %9 = load %struct.acx_feature_config*, %struct.acx_feature_config** %3, align 8
  %10 = icmp ne %struct.acx_feature_config* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %28

14:                                               ; preds = %1
  %15 = load %struct.acx_feature_config*, %struct.acx_feature_config** %3, align 8
  %16 = getelementptr inbounds %struct.acx_feature_config, %struct.acx_feature_config* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.acx_feature_config*, %struct.acx_feature_config** %3, align 8
  %18 = getelementptr inbounds %struct.acx_feature_config, %struct.acx_feature_config* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %20 = load i32, i32* @ACX_FEATURE_CFG, align 4
  %21 = load %struct.acx_feature_config*, %struct.acx_feature_config** %3, align 8
  %22 = call i32 @wl1251_cmd_configure(%struct.wl1251* %19, i32 %20, %struct.acx_feature_config* %21, i32 16)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %14
  %26 = call i32 @wl1251_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %28

27:                                               ; preds = %14
  br label %28

28:                                               ; preds = %27, %25, %11
  %29 = load %struct.acx_feature_config*, %struct.acx_feature_config** %3, align 8
  %30 = call i32 @kfree(%struct.acx_feature_config* %29)
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @wl1251_debug(i32, i8*) #1

declare dso_local %struct.acx_feature_config* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1251_cmd_configure(%struct.wl1251*, i32, %struct.acx_feature_config*, i32) #1

declare dso_local i32 @wl1251_error(i8*) #1

declare dso_local i32 @kfree(%struct.acx_feature_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
