; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ab3100.c_ab3100_rtc_set_alarm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ab3100.c_ab3100_rtc_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i32 }
%struct.ab3100 = type { i32 }

@AB3100_AL0 = common dso_local global i32 0, align 4
@AB3100_AL1 = common dso_local global i32 0, align 4
@AB3100_AL2 = common dso_local global i32 0, align 4
@AB3100_AL3 = common dso_local global i32 0, align 4
@AB3100_RTC_CLOCK_RATE = common dso_local global i32 0, align 4
@AB3100_RTC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @ab3100_rtc_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab3100_rtc_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.ab3100*, align 8
  %7 = alloca [4 x i32], align 16
  %8 = alloca [4 x i8], align 1
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.ab3100* @dev_get_drvdata(%struct.device* %13)
  store %struct.ab3100* %14, %struct.ab3100** %6, align 8
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %16 = load i32, i32* @AB3100_AL0, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds i32, i32* %15, i64 1
  %18 = load i32, i32* @AB3100_AL1, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds i32, i32* %17, i64 1
  %20 = load i32, i32* @AB3100_AL2, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds i32, i32* %19, i64 1
  %22 = load i32, i32* @AB3100_AL3, align 4
  store i32 %22, i32* %21, align 4
  %23 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %24 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %23, i32 0, i32 1
  %25 = call i32 @rtc_tm_to_time(i32* %24, i64* %9)
  %26 = load i64, i64* %9, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* @AB3100_RTC_CLOCK_RATE, align 4
  %29 = mul nsw i32 %27, %28
  %30 = mul nsw i32 %29, 2
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = ashr i32 %31, 16
  %33 = and i32 %32, 255
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  store i8 %34, i8* %35, align 1
  %36 = load i32, i32* %10, align 4
  %37 = ashr i32 %36, 24
  %38 = and i32 %37, 255
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 1
  store i8 %39, i8* %40, align 1
  %41 = load i32, i32* %10, align 4
  %42 = ashr i32 %41, 32
  %43 = and i32 %42, 255
  %44 = trunc i32 %43 to i8
  %45 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 2
  store i8 %44, i8* %45, align 1
  %46 = load i32, i32* %10, align 4
  %47 = ashr i32 %46, 40
  %48 = and i32 %47, 255
  %49 = trunc i32 %48 to i8
  %50 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 3
  store i8 %49, i8* %50, align 1
  store i32 0, i32* %12, align 4
  br label %51

51:                                               ; preds = %70, %2
  %52 = load i32, i32* %12, align 4
  %53 = icmp slt i32 %52, 4
  br i1 %53, label %54, label %73

54:                                               ; preds = %51
  %55 = load %struct.ab3100*, %struct.ab3100** %6, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = call i32 @ab3100_set_register_interruptible(%struct.ab3100* %55, i32 %59, i8 zeroext %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %54
  %68 = load i32, i32* %11, align 4
  store i32 %68, i32* %3, align 4
  br label %81

69:                                               ; preds = %54
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %12, align 4
  br label %51

73:                                               ; preds = %51
  %74 = load %struct.ab3100*, %struct.ab3100** %6, align 8
  %75 = load i32, i32* @AB3100_RTC, align 4
  %76 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %77 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = shl i32 %78, 2
  %80 = call i32 @ab3100_mask_and_set_register_interruptible(%struct.ab3100* %74, i32 %75, i32 -5, i32 %79)
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %73, %67
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.ab3100* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @rtc_tm_to_time(i32*, i64*) #1

declare dso_local i32 @ab3100_set_register_interruptible(%struct.ab3100*, i32, i8 zeroext) #1

declare dso_local i32 @ab3100_mask_and_set_register_interruptible(%struct.ab3100*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
