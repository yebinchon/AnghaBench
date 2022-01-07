; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ab3100.c_ab3100_rtc_read_alarm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ab3100.c_ab3100_rtc_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i32, i64 }
%struct.ab3100 = type { i32 }

@AB3100_RTC = common dso_local global i32 0, align 4
@AB3100_AL0 = common dso_local global i32 0, align 4
@AB3100_RTC_CLOCK_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @ab3100_rtc_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab3100_rtc_read_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.ab3100*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca [6 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.ab3100* @dev_get_drvdata(%struct.device* %12)
  store %struct.ab3100* %13, %struct.ab3100** %6, align 8
  %14 = load %struct.ab3100*, %struct.ab3100** %6, align 8
  %15 = load i32, i32* @AB3100_RTC, align 4
  %16 = call i32 @ab3100_get_register_interruptible(%struct.ab3100* %14, i32 %15, i32* %10)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %3, align 4
  br label %70

21:                                               ; preds = %2
  %22 = load i32, i32* %10, align 4
  %23 = and i32 %22, 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %27 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  br label %31

28:                                               ; preds = %21
  %29 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %30 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  br label %31

31:                                               ; preds = %28, %25
  %32 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %33 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %32, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = load %struct.ab3100*, %struct.ab3100** %6, align 8
  %35 = load i32, i32* @AB3100_AL0, align 4
  %36 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %37 = call i32 @ab3100_get_register_page_interruptible(%struct.ab3100* %34, i32 %35, i32* %36, i32 4)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %3, align 4
  br label %70

42:                                               ; preds = %31
  %43 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 3
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 %44, 40
  %46 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 2
  %47 = load i32, i32* %46, align 8
  %48 = shl i32 %47, 32
  %49 = or i32 %45, %48
  %50 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %51, 24
  %53 = or i32 %49, %52
  %54 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %55 = load i32, i32* %54, align 16
  %56 = shl i32 %55, 16
  %57 = or i32 %53, %56
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @AB3100_RTC_CLOCK_RATE, align 4
  %60 = mul nsw i32 %59, 2
  %61 = sdiv i32 %58, %60
  %62 = sext i32 %61 to i64
  store i64 %62, i64* %7, align 8
  %63 = load i64, i64* %7, align 8
  %64 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %65 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %64, i32 0, i32 1
  %66 = call i32 @rtc_time_to_tm(i64 %63, i32* %65)
  %67 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %68 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %67, i32 0, i32 1
  %69 = call i32 @rtc_valid_tm(i32* %68)
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %42, %40, %19
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.ab3100* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @ab3100_get_register_interruptible(%struct.ab3100*, i32, i32*) #1

declare dso_local i32 @ab3100_get_register_page_interruptible(%struct.ab3100*, i32, i32*, i32) #1

declare dso_local i32 @rtc_time_to_tm(i64, i32*) #1

declare dso_local i32 @rtc_valid_tm(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
