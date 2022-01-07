; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_cmd.c_wl1251_cmd_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_cmd.c_wl1251_cmd_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32 }
%struct.wl1251_command = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"cmd test\00", align 1
@CMD_TEST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"TEST command failed\00", align 1
@CMD_STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"TEST command answer error: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1251_cmd_test(%struct.wl1251* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wl1251*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.wl1251_command*, align 8
  store %struct.wl1251* %0, %struct.wl1251** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i32, i32* @DEBUG_CMD, align 4
  %13 = call i32 @wl1251_debug(i32 %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.wl1251*, %struct.wl1251** %6, align 8
  %15 = load i32, i32* @CMD_TEST, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @wl1251_cmd_send(%struct.wl1251* %14, i32 %15, i8* %16, i64 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = call i32 @wl1251_warning(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %5, align 4
  br label %51

24:                                               ; preds = %4
  %25 = load i64, i64* %9, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %50

27:                                               ; preds = %24
  %28 = load %struct.wl1251*, %struct.wl1251** %6, align 8
  %29 = load %struct.wl1251*, %struct.wl1251** %6, align 8
  %30 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @wl1251_mem_read(%struct.wl1251* %28, i32 %31, i8* %32, i64 %33)
  %35 = load i8*, i8** %7, align 8
  %36 = bitcast i8* %35 to %struct.wl1251_command*
  store %struct.wl1251_command* %36, %struct.wl1251_command** %11, align 8
  %37 = load %struct.wl1251_command*, %struct.wl1251_command** %11, align 8
  %38 = getelementptr inbounds %struct.wl1251_command, %struct.wl1251_command* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @CMD_STATUS_SUCCESS, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %27
  %44 = load %struct.wl1251_command*, %struct.wl1251_command** %11, align 8
  %45 = getelementptr inbounds %struct.wl1251_command, %struct.wl1251_command* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @wl1251_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %47)
  br label %49

49:                                               ; preds = %43, %27
  br label %50

50:                                               ; preds = %49, %24
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %50, %21
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @wl1251_debug(i32, i8*) #1

declare dso_local i32 @wl1251_cmd_send(%struct.wl1251*, i32, i8*, i64) #1

declare dso_local i32 @wl1251_warning(i8*) #1

declare dso_local i32 @wl1251_mem_read(%struct.wl1251*, i32, i8*, i64) #1

declare dso_local i32 @wl1251_error(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
