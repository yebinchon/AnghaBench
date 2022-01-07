; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_cmd.c_wl1251_cmd_ps_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_cmd.c_wl1251_cmd_ps_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32 }
%struct.wl1251_cmd_ps_params = type { i32, i32, i32, i32, i32 }

@DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"cmd set ps mode\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CMD_SET_PS_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"cmd set_ps_mode failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1251_cmd_ps_mode(%struct.wl1251* %0, i32 %1) #0 {
  %3 = alloca %struct.wl1251*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wl1251_cmd_ps_params*, align 8
  %6 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.wl1251_cmd_ps_params* null, %struct.wl1251_cmd_ps_params** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @DEBUG_CMD, align 4
  %8 = call i32 @wl1251_debug(i32 %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.wl1251_cmd_ps_params* @kzalloc(i32 20, i32 %9)
  store %struct.wl1251_cmd_ps_params* %10, %struct.wl1251_cmd_ps_params** %5, align 8
  %11 = load %struct.wl1251_cmd_ps_params*, %struct.wl1251_cmd_ps_params** %5, align 8
  %12 = icmp ne %struct.wl1251_cmd_ps_params* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %6, align 4
  br label %37

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.wl1251_cmd_ps_params*, %struct.wl1251_cmd_ps_params** %5, align 8
  %19 = getelementptr inbounds %struct.wl1251_cmd_ps_params, %struct.wl1251_cmd_ps_params* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 4
  %20 = load %struct.wl1251_cmd_ps_params*, %struct.wl1251_cmd_ps_params** %5, align 8
  %21 = getelementptr inbounds %struct.wl1251_cmd_ps_params, %struct.wl1251_cmd_ps_params* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  %22 = load %struct.wl1251_cmd_ps_params*, %struct.wl1251_cmd_ps_params** %5, align 8
  %23 = getelementptr inbounds %struct.wl1251_cmd_ps_params, %struct.wl1251_cmd_ps_params* %22, i32 0, i32 1
  store i32 5, i32* %23, align 4
  %24 = load %struct.wl1251_cmd_ps_params*, %struct.wl1251_cmd_ps_params** %5, align 8
  %25 = getelementptr inbounds %struct.wl1251_cmd_ps_params, %struct.wl1251_cmd_ps_params* %24, i32 0, i32 2
  store i32 128, i32* %25, align 4
  %26 = load %struct.wl1251_cmd_ps_params*, %struct.wl1251_cmd_ps_params** %5, align 8
  %27 = getelementptr inbounds %struct.wl1251_cmd_ps_params, %struct.wl1251_cmd_ps_params* %26, i32 0, i32 3
  store i32 1, i32* %27, align 4
  %28 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %29 = load i32, i32* @CMD_SET_PS_MODE, align 4
  %30 = load %struct.wl1251_cmd_ps_params*, %struct.wl1251_cmd_ps_params** %5, align 8
  %31 = call i32 @wl1251_cmd_send(%struct.wl1251* %28, i32 %29, %struct.wl1251_cmd_ps_params* %30, i32 20)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %16
  %35 = call i32 @wl1251_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %37

36:                                               ; preds = %16
  br label %37

37:                                               ; preds = %36, %34, %13
  %38 = load %struct.wl1251_cmd_ps_params*, %struct.wl1251_cmd_ps_params** %5, align 8
  %39 = call i32 @kfree(%struct.wl1251_cmd_ps_params* %38)
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local i32 @wl1251_debug(i32, i8*) #1

declare dso_local %struct.wl1251_cmd_ps_params* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1251_cmd_send(%struct.wl1251*, i32, %struct.wl1251_cmd_ps_params*, i32) #1

declare dso_local i32 @wl1251_error(i8*) #1

declare dso_local i32 @kfree(%struct.wl1251_cmd_ps_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
