; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_cmd.c_wl1251_cmd_data_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_cmd.c_wl1251_cmd_data_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32 }
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
define dso_local i32 @wl1251_cmd_data_path(%struct.wl1251* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.wl1251*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cmd_enabledisable_path*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @DEBUG_CMD, align 4
  %12 = call i32 (i32, i8*, ...) @wl1251_debug(i32 %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.cmd_enabledisable_path* @kzalloc(i32 4, i32 %13)
  store %struct.cmd_enabledisable_path* %14, %struct.cmd_enabledisable_path** %7, align 8
  %15 = load %struct.cmd_enabledisable_path*, %struct.cmd_enabledisable_path** %7, align 8
  %16 = icmp ne %struct.cmd_enabledisable_path* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %8, align 4
  br label %75

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.cmd_enabledisable_path*, %struct.cmd_enabledisable_path** %7, align 8
  %23 = getelementptr inbounds %struct.cmd_enabledisable_path, %struct.cmd_enabledisable_path* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @CMD_ENABLE_RX, align 4
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* @CMD_ENABLE_TX, align 4
  store i32 %28, i32* %10, align 4
  br label %32

29:                                               ; preds = %20
  %30 = load i32, i32* @CMD_DISABLE_RX, align 4
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* @CMD_DISABLE_TX, align 4
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %29, %26
  %33 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.cmd_enabledisable_path*, %struct.cmd_enabledisable_path** %7, align 8
  %36 = call i32 @wl1251_cmd_send(%struct.wl1251* %33, i32 %34, %struct.cmd_enabledisable_path* %35, i32 4)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %32
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @wl1251_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %43, i32 %44)
  br label %75

46:                                               ; preds = %32
  %47 = load i32, i32* @DEBUG_BOOT, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %52 = load i32, i32* %5, align 4
  %53 = call i32 (i32, i8*, ...) @wl1251_debug(i32 %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %51, i32 %52)
  %54 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.cmd_enabledisable_path*, %struct.cmd_enabledisable_path** %7, align 8
  %57 = call i32 @wl1251_cmd_send(%struct.wl1251* %54, i32 %55, %struct.cmd_enabledisable_path* %56, i32 4)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %46
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @wl1251_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8* %64, i32 %65)
  br label %75

67:                                               ; preds = %46
  %68 = load i32, i32* @DEBUG_BOOT, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %73 = load i32, i32* %5, align 4
  %74 = call i32 (i32, i8*, ...) @wl1251_debug(i32 %68, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* %72, i32 %73)
  br label %75

75:                                               ; preds = %67, %60, %39, %17
  %76 = load %struct.cmd_enabledisable_path*, %struct.cmd_enabledisable_path** %7, align 8
  %77 = call i32 @kfree(%struct.cmd_enabledisable_path* %76)
  %78 = load i32, i32* %8, align 4
  ret i32 %78
}

declare dso_local i32 @wl1251_debug(i32, i8*, ...) #1

declare dso_local %struct.cmd_enabledisable_path* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1251_cmd_send(%struct.wl1251*, i32, %struct.cmd_enabledisable_path*, i32) #1

declare dso_local i32 @wl1251_error(i8*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.cmd_enabledisable_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
