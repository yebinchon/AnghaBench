; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ab3100.c_ab3100_rtc_set_mmss.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ab3100.c_ab3100_rtc_set_mmss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ab3100 = type { i32 }

@AB3100_TI0 = common dso_local global i32 0, align 4
@AB3100_TI1 = common dso_local global i32 0, align 4
@AB3100_TI2 = common dso_local global i32 0, align 4
@AB3100_TI3 = common dso_local global i32 0, align 4
@AB3100_TI4 = common dso_local global i32 0, align 4
@AB3100_TI5 = common dso_local global i32 0, align 4
@AB3100_RTC_CLOCK_RATE = common dso_local global i32 0, align 4
@AB3100_RTC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i64)* @ab3100_rtc_set_mmss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab3100_rtc_set_mmss(%struct.device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ab3100*, align 8
  %7 = alloca [6 x i32], align 16
  %8 = alloca [6 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.ab3100* @dev_get_drvdata(%struct.device* %12)
  store %struct.ab3100* %13, %struct.ab3100** %6, align 8
  %14 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %15 = load i32, i32* @AB3100_TI0, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds i32, i32* %14, i64 1
  %17 = load i32, i32* @AB3100_TI1, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds i32, i32* %16, i64 1
  %19 = load i32, i32* @AB3100_TI2, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds i32, i32* %18, i64 1
  %21 = load i32, i32* @AB3100_TI3, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds i32, i32* %20, i64 1
  %23 = load i32, i32* @AB3100_TI4, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds i32, i32* %22, i64 1
  %25 = load i32, i32* @AB3100_TI5, align 4
  store i32 %25, i32* %24, align 4
  %26 = load i64, i64* %5, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* @AB3100_RTC_CLOCK_RATE, align 4
  %29 = mul nsw i32 %27, %28
  %30 = mul nsw i32 %29, 2
  store i32 %30, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %31 = load i32, i32* %9, align 4
  %32 = and i32 %31, 255
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  store i8 %33, i8* %34, align 1
  %35 = load i32, i32* %9, align 4
  %36 = ashr i32 %35, 8
  %37 = and i32 %36, 255
  %38 = trunc i32 %37 to i8
  %39 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 1
  store i8 %38, i8* %39, align 1
  %40 = load i32, i32* %9, align 4
  %41 = ashr i32 %40, 16
  %42 = and i32 %41, 255
  %43 = trunc i32 %42 to i8
  %44 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 2
  store i8 %43, i8* %44, align 1
  %45 = load i32, i32* %9, align 4
  %46 = ashr i32 %45, 24
  %47 = and i32 %46, 255
  %48 = trunc i32 %47 to i8
  %49 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 3
  store i8 %48, i8* %49, align 1
  %50 = load i32, i32* %9, align 4
  %51 = ashr i32 %50, 32
  %52 = and i32 %51, 255
  %53 = trunc i32 %52 to i8
  %54 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 4
  store i8 %53, i8* %54, align 1
  %55 = load i32, i32* %9, align 4
  %56 = ashr i32 %55, 40
  %57 = and i32 %56, 255
  %58 = trunc i32 %57 to i8
  %59 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 5
  store i8 %58, i8* %59, align 1
  store i32 0, i32* %11, align 4
  br label %60

60:                                               ; preds = %79, %2
  %61 = load i32, i32* %11, align 4
  %62 = icmp slt i32 %61, 6
  br i1 %62, label %63, label %82

63:                                               ; preds = %60
  %64 = load %struct.ab3100*, %struct.ab3100** %6, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = call i32 @ab3100_set_register_interruptible(%struct.ab3100* %64, i32 %68, i8 zeroext %72)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %63
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %3, align 4
  br label %86

78:                                               ; preds = %63
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %11, align 4
  br label %60

82:                                               ; preds = %60
  %83 = load %struct.ab3100*, %struct.ab3100** %6, align 8
  %84 = load i32, i32* @AB3100_RTC, align 4
  %85 = call i32 @ab3100_mask_and_set_register_interruptible(%struct.ab3100* %83, i32 %84, i32 254, i32 1)
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %82, %76
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.ab3100* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @ab3100_set_register_interruptible(%struct.ab3100*, i32, i8 zeroext) #1

declare dso_local i32 @ab3100_mask_and_set_register_interruptible(%struct.ab3100*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
