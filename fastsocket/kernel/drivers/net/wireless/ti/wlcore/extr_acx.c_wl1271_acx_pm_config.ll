; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_pm_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_pm_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.conf_pm_config_settings }
%struct.conf_pm_config_settings = type { i32, i32 }
%struct.wl1271_acx_pm_config = type { i32, i32 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"acx pm config\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACX_PM_CONFIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"acx pm config failed: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1271_acx_pm_config(%struct.wl1271* %0) #0 {
  %2 = alloca %struct.wl1271*, align 8
  %3 = alloca %struct.wl1271_acx_pm_config*, align 8
  %4 = alloca %struct.conf_pm_config_settings*, align 8
  %5 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %2, align 8
  store %struct.wl1271_acx_pm_config* null, %struct.wl1271_acx_pm_config** %3, align 8
  %6 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %7 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.conf_pm_config_settings* %8, %struct.conf_pm_config_settings** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load i32, i32* @DEBUG_ACX, align 4
  %10 = call i32 @wl1271_debug(i32 %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.wl1271_acx_pm_config* @kzalloc(i32 8, i32 %11)
  store %struct.wl1271_acx_pm_config* %12, %struct.wl1271_acx_pm_config** %3, align 8
  %13 = load %struct.wl1271_acx_pm_config*, %struct.wl1271_acx_pm_config** %3, align 8
  %14 = icmp ne %struct.wl1271_acx_pm_config* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %40

18:                                               ; preds = %1
  %19 = load %struct.conf_pm_config_settings*, %struct.conf_pm_config_settings** %4, align 8
  %20 = getelementptr inbounds %struct.conf_pm_config_settings, %struct.conf_pm_config_settings* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @cpu_to_le32(i32 %21)
  %23 = load %struct.wl1271_acx_pm_config*, %struct.wl1271_acx_pm_config** %3, align 8
  %24 = getelementptr inbounds %struct.wl1271_acx_pm_config, %struct.wl1271_acx_pm_config* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.conf_pm_config_settings*, %struct.conf_pm_config_settings** %4, align 8
  %26 = getelementptr inbounds %struct.conf_pm_config_settings, %struct.conf_pm_config_settings* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.wl1271_acx_pm_config*, %struct.wl1271_acx_pm_config** %3, align 8
  %29 = getelementptr inbounds %struct.wl1271_acx_pm_config, %struct.wl1271_acx_pm_config* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %31 = load i32, i32* @ACX_PM_CONFIG, align 4
  %32 = load %struct.wl1271_acx_pm_config*, %struct.wl1271_acx_pm_config** %3, align 8
  %33 = call i32 @wl1271_cmd_configure(%struct.wl1271* %30, i32 %31, %struct.wl1271_acx_pm_config* %32, i32 8)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %18
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @wl1271_warning(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %40

39:                                               ; preds = %18
  br label %40

40:                                               ; preds = %39, %36, %15
  %41 = load %struct.wl1271_acx_pm_config*, %struct.wl1271_acx_pm_config** %3, align 8
  %42 = call i32 @kfree(%struct.wl1271_acx_pm_config* %41)
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local %struct.wl1271_acx_pm_config* @kzalloc(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @wl1271_cmd_configure(%struct.wl1271*, i32, %struct.wl1271_acx_pm_config*, i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.wl1271_acx_pm_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
