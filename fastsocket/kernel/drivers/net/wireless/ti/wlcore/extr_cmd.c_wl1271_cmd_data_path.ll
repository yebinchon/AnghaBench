; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl1271_cmd_data_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl1271_cmd_data_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.cmd_enabledisable_path = type { i32 }

@DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"cmd data path\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CMD_ENABLE_RX = common dso_local global i32 0, align 4
@CMD_ENABLE_TX = common dso_local global i32 0, align 4
@CMD_DISABLE_RX = common dso_local global i32 0, align 4
@CMD_DISABLE_TX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"rx %s cmd for channel %d failed\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@DEBUG_BOOT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"rx %s cmd channel %d\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"tx %s cmd for channel %d failed\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"tx %s cmd channel %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1271_cmd_data_path(%struct.wl1271* %0, i32 %1) #0 {
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cmd_enabledisable_path*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @DEBUG_CMD, align 4
  %10 = call i32 (i32, i8*, ...) @wl1271_debug(i32 %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.cmd_enabledisable_path* @kzalloc(i32 4, i32 %11)
  store %struct.cmd_enabledisable_path* %12, %struct.cmd_enabledisable_path** %5, align 8
  %13 = load %struct.cmd_enabledisable_path*, %struct.cmd_enabledisable_path** %5, align 8
  %14 = icmp ne %struct.cmd_enabledisable_path* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %6, align 4
  br label %80

18:                                               ; preds = %2
  %19 = load %struct.cmd_enabledisable_path*, %struct.cmd_enabledisable_path** %5, align 8
  %20 = getelementptr inbounds %struct.cmd_enabledisable_path, %struct.cmd_enabledisable_path* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @CMD_ENABLE_RX, align 4
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @CMD_ENABLE_TX, align 4
  store i32 %25, i32* %8, align 4
  br label %29

26:                                               ; preds = %18
  %27 = load i32, i32* @CMD_DISABLE_RX, align 4
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* @CMD_DISABLE_TX, align 4
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %26, %23
  %30 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.cmd_enabledisable_path*, %struct.cmd_enabledisable_path** %5, align 8
  %33 = call i32 @wl1271_cmd_send(%struct.wl1271* %30, i32 %31, %struct.cmd_enabledisable_path* %32, i32 4, i32 0)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %29
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %41 = load %struct.cmd_enabledisable_path*, %struct.cmd_enabledisable_path** %5, align 8
  %42 = getelementptr inbounds %struct.cmd_enabledisable_path, %struct.cmd_enabledisable_path* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @wl1271_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %40, i32 %43)
  br label %80

45:                                               ; preds = %29
  %46 = load i32, i32* @DEBUG_BOOT, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %51 = load %struct.cmd_enabledisable_path*, %struct.cmd_enabledisable_path** %5, align 8
  %52 = getelementptr inbounds %struct.cmd_enabledisable_path, %struct.cmd_enabledisable_path* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i32, i8*, ...) @wl1271_debug(i32 %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %50, i32 %53)
  %55 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.cmd_enabledisable_path*, %struct.cmd_enabledisable_path** %5, align 8
  %58 = call i32 @wl1271_cmd_send(%struct.wl1271* %55, i32 %56, %struct.cmd_enabledisable_path* %57, i32 4, i32 0)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %45
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %66 = load %struct.cmd_enabledisable_path*, %struct.cmd_enabledisable_path** %5, align 8
  %67 = getelementptr inbounds %struct.cmd_enabledisable_path, %struct.cmd_enabledisable_path* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @wl1271_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8* %65, i32 %68)
  br label %80

70:                                               ; preds = %45
  %71 = load i32, i32* @DEBUG_BOOT, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %76 = load %struct.cmd_enabledisable_path*, %struct.cmd_enabledisable_path** %5, align 8
  %77 = getelementptr inbounds %struct.cmd_enabledisable_path, %struct.cmd_enabledisable_path* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i32, i8*, ...) @wl1271_debug(i32 %71, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* %75, i32 %78)
  br label %80

80:                                               ; preds = %70, %61, %36, %15
  %81 = load %struct.cmd_enabledisable_path*, %struct.cmd_enabledisable_path** %5, align 8
  %82 = call i32 @kfree(%struct.cmd_enabledisable_path* %81)
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

declare dso_local i32 @wl1271_debug(i32, i8*, ...) #1

declare dso_local %struct.cmd_enabledisable_path* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1271_cmd_send(%struct.wl1271*, i32, %struct.cmd_enabledisable_path*, i32, i32) #1

declare dso_local i32 @wl1271_error(i8*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.cmd_enabledisable_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
