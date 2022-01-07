; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ab3100.c_ab3100_rtc_read_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ab3100.c_ab3100_rtc_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }
%struct.ab3100 = type { i32 }

@AB3100_RTC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"clock not set (lost power)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AB3100_TI0 = common dso_local global i32 0, align 4
@AB3100_RTC_CLOCK_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @ab3100_rtc_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab3100_rtc_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.ab3100*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [6 x i32], align 16
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.ab3100* @dev_get_drvdata(%struct.device* %12)
  store %struct.ab3100* %13, %struct.ab3100** %6, align 8
  %14 = load %struct.ab3100*, %struct.ab3100** %6, align 8
  %15 = load i32, i32* @AB3100_RTC, align 4
  %16 = call i32 @ab3100_get_register_interruptible(%struct.ab3100* %14, i32 %15, i32* %8)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %3, align 4
  br label %73

21:                                               ; preds = %2
  %22 = load i32, i32* %8, align 4
  %23 = and i32 %22, 1
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = call i32 @dev_info(%struct.device* %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %73

30:                                               ; preds = %21
  %31 = load %struct.ab3100*, %struct.ab3100** %6, align 8
  %32 = load i32, i32* @AB3100_TI0, align 4
  %33 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %34 = call i32 @ab3100_get_register_page_interruptible(%struct.ab3100* %31, i32 %32, i32* %33, i32 6)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %3, align 4
  br label %73

39:                                               ; preds = %30
  %40 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 5
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 40
  %43 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 4
  %44 = load i32, i32* %43, align 16
  %45 = shl i32 %44, 32
  %46 = or i32 %42, %45
  %47 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 3
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %48, 24
  %50 = or i32 %46, %49
  %51 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 2
  %52 = load i32, i32* %51, align 8
  %53 = shl i32 %52, 16
  %54 = or i32 %50, %53
  %55 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 8
  %58 = or i32 %54, %57
  %59 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %60 = load i32, i32* %59, align 16
  %61 = or i32 %58, %60
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @AB3100_RTC_CLOCK_RATE, align 4
  %64 = mul nsw i32 %63, 2
  %65 = sdiv i32 %62, %64
  %66 = sext i32 %65 to i64
  store i64 %66, i64* %7, align 8
  br label %67

67:                                               ; preds = %39
  %68 = load i64, i64* %7, align 8
  %69 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %70 = call i32 @rtc_time_to_tm(i64 %68, %struct.rtc_time* %69)
  %71 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %72 = call i32 @rtc_valid_tm(%struct.rtc_time* %71)
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %67, %37, %25, %19
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.ab3100* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @ab3100_get_register_interruptible(%struct.ab3100*, i32, i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @ab3100_get_register_page_interruptible(%struct.ab3100*, i32, i32*, i32) #1

declare dso_local i32 @rtc_time_to_tm(i64, %struct.rtc_time*) #1

declare dso_local i32 @rtc_valid_tm(%struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
