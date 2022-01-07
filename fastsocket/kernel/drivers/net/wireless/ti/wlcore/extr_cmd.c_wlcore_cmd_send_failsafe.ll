; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_cmd.c_wlcore_cmd_send_failsafe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_cmd.c_wlcore_cmd_send_failsafe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }

@CMD_STATUS_SUCCESS = common dso_local global i32 0, align 4
@MAX_COMMAND_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"command execute failure %d\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlcore_cmd_send_failsafe(%struct.wl1271* %0, i32 %1, i8* %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.wl1271*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %15 = load %struct.wl1271*, %struct.wl1271** %8, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load i8*, i8** %10, align 8
  %18 = load i64, i64* %11, align 8
  %19 = load i64, i64* %12, align 8
  %20 = call i32 @__wlcore_cmd_send(%struct.wl1271* %15, i32 %16, i8* %17, i64 %18, i64 %19)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %6
  br label %43

24:                                               ; preds = %6
  %25 = load i32, i32* @CMD_STATUS_SUCCESS, align 4
  %26 = call i64 @BIT(i32 %25)
  %27 = load i64, i64* %13, align 8
  %28 = or i64 %27, %26
  store i64 %28, i64* %13, align 8
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* @MAX_COMMAND_STATUS, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %24
  %33 = load i32, i32* %14, align 4
  %34 = call i32 @test_bit(i32 %33, i64* %13)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %32, %24
  %37 = load i32, i32* %14, align 4
  %38 = call i32 @wl1271_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %14, align 4
  br label %43

41:                                               ; preds = %32
  %42 = load i32, i32* %14, align 4
  store i32 %42, i32* %7, align 4
  br label %47

43:                                               ; preds = %36, %23
  %44 = load %struct.wl1271*, %struct.wl1271** %8, align 8
  %45 = call i32 @wl12xx_queue_recovery_work(%struct.wl1271* %44)
  %46 = load i32, i32* %14, align 4
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %43, %41
  %48 = load i32, i32* %7, align 4
  ret i32 %48
}

declare dso_local i32 @__wlcore_cmd_send(%struct.wl1271*, i32, i8*, i64, i64) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @test_bit(i32, i64*) #1

declare dso_local i32 @wl1271_error(i8*, i32) #1

declare dso_local i32 @wl12xx_queue_recovery_work(%struct.wl1271*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
