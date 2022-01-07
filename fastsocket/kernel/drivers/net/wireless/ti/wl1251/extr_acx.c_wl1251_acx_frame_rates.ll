; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_frame_rates.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_frame_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32 }
%struct.acx_fw_gen_frame_rates = type { i8*, i8*, i8*, i8* }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"acx frame rates\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACX_FW_GEN_FRAME_RATES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to set FW rates and modulation\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1251_acx_frame_rates(%struct.wl1251* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.wl1251*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.acx_fw_gen_frame_rates*, align 8
  %12 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = load i32, i32* @DEBUG_ACX, align 4
  %14 = call i32 @wl1251_debug(i32 %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.acx_fw_gen_frame_rates* @kzalloc(i32 32, i32 %15)
  store %struct.acx_fw_gen_frame_rates* %16, %struct.acx_fw_gen_frame_rates** %11, align 8
  %17 = load %struct.acx_fw_gen_frame_rates*, %struct.acx_fw_gen_frame_rates** %11, align 8
  %18 = icmp ne %struct.acx_fw_gen_frame_rates* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %12, align 4
  br label %44

22:                                               ; preds = %5
  %23 = load i8*, i8** %7, align 8
  %24 = load %struct.acx_fw_gen_frame_rates*, %struct.acx_fw_gen_frame_rates** %11, align 8
  %25 = getelementptr inbounds %struct.acx_fw_gen_frame_rates, %struct.acx_fw_gen_frame_rates* %24, i32 0, i32 3
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load %struct.acx_fw_gen_frame_rates*, %struct.acx_fw_gen_frame_rates** %11, align 8
  %28 = getelementptr inbounds %struct.acx_fw_gen_frame_rates, %struct.acx_fw_gen_frame_rates* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load %struct.acx_fw_gen_frame_rates*, %struct.acx_fw_gen_frame_rates** %11, align 8
  %31 = getelementptr inbounds %struct.acx_fw_gen_frame_rates, %struct.acx_fw_gen_frame_rates* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = load %struct.acx_fw_gen_frame_rates*, %struct.acx_fw_gen_frame_rates** %11, align 8
  %34 = getelementptr inbounds %struct.acx_fw_gen_frame_rates, %struct.acx_fw_gen_frame_rates* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  %35 = load %struct.wl1251*, %struct.wl1251** %6, align 8
  %36 = load i32, i32* @ACX_FW_GEN_FRAME_RATES, align 4
  %37 = load %struct.acx_fw_gen_frame_rates*, %struct.acx_fw_gen_frame_rates** %11, align 8
  %38 = call i32 @wl1251_cmd_configure(%struct.wl1251* %35, i32 %36, %struct.acx_fw_gen_frame_rates* %37, i32 32)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %22
  %42 = call i32 @wl1251_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %44

43:                                               ; preds = %22
  br label %44

44:                                               ; preds = %43, %41, %19
  %45 = load %struct.acx_fw_gen_frame_rates*, %struct.acx_fw_gen_frame_rates** %11, align 8
  %46 = call i32 @kfree(%struct.acx_fw_gen_frame_rates* %45)
  %47 = load i32, i32* %12, align 4
  ret i32 %47
}

declare dso_local i32 @wl1251_debug(i32, i8*) #1

declare dso_local %struct.acx_fw_gen_frame_rates* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1251_cmd_configure(%struct.wl1251*, i32, %struct.acx_fw_gen_frame_rates*, i32) #1

declare dso_local i32 @wl1251_error(i8*) #1

declare dso_local i32 @kfree(%struct.acx_fw_gen_frame_rates*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
