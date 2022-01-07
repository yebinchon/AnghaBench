; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-twl4030.c_twl4030_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-twl4030.c_twl4030_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i64, i64, i64, i64, i64, i64 }

@ALL_TIME_REGS = common dso_local global i32 0, align 4
@REG_RTC_CTRL_REG = common dso_local global i32 0, align 4
@BIT_RTC_CTRL_REG_STOP_RTC_M = common dso_local global i8 0, align 1
@TWL4030_MODULE_RTC = common dso_local global i32 0, align 4
@REG_SECONDS_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"rtc_set_time error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @twl4030_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %9 = load i32, i32* @ALL_TIME_REGS, align 4
  %10 = add nsw i32 %9, 1
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %15 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = call zeroext i8 @bin2bcd(i64 %16)
  %18 = getelementptr inbounds i8, i8* %13, i64 1
  store i8 %17, i8* %18, align 1
  %19 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %20 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = call zeroext i8 @bin2bcd(i64 %21)
  %23 = getelementptr inbounds i8, i8* %13, i64 2
  store i8 %22, i8* %23, align 2
  %24 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %25 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = call zeroext i8 @bin2bcd(i64 %26)
  %28 = getelementptr inbounds i8, i8* %13, i64 3
  store i8 %27, i8* %28, align 1
  %29 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %30 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = call zeroext i8 @bin2bcd(i64 %31)
  %33 = getelementptr inbounds i8, i8* %13, i64 4
  store i8 %32, i8* %33, align 4
  %34 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %35 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 1
  %38 = call zeroext i8 @bin2bcd(i64 %37)
  %39 = getelementptr inbounds i8, i8* %13, i64 5
  store i8 %38, i8* %39, align 1
  %40 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %41 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %42, 100
  %44 = call zeroext i8 @bin2bcd(i64 %43)
  %45 = getelementptr inbounds i8, i8* %13, i64 6
  store i8 %44, i8* %45, align 2
  %46 = load i32, i32* @REG_RTC_CTRL_REG, align 4
  %47 = call i32 @twl4030_rtc_read_u8(i8* %5, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %2
  br label %86

51:                                               ; preds = %2
  %52 = load i8, i8* @BIT_RTC_CTRL_REG_STOP_RTC_M, align 1
  %53 = zext i8 %52 to i32
  %54 = xor i32 %53, -1
  %55 = load i8, i8* %5, align 1
  %56 = zext i8 %55 to i32
  %57 = and i32 %56, %54
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* %5, align 1
  %59 = load i8, i8* %5, align 1
  %60 = load i32, i32* @REG_RTC_CTRL_REG, align 4
  %61 = call i32 @twl4030_rtc_write_u8(i8 zeroext %59, i32 %60)
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %51
  br label %86

65:                                               ; preds = %51
  %66 = load i32, i32* @TWL4030_MODULE_RTC, align 4
  %67 = load i32, i32* @REG_SECONDS_REG, align 4
  %68 = load i32, i32* @ALL_TIME_REGS, align 4
  %69 = call i32 @twl4030_i2c_write(i32 %66, i8* %13, i32 %67, i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = load %struct.device*, %struct.device** %3, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @dev_err(%struct.device* %73, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %74)
  br label %86

76:                                               ; preds = %65
  %77 = load i8, i8* @BIT_RTC_CTRL_REG_STOP_RTC_M, align 1
  %78 = zext i8 %77 to i32
  %79 = load i8, i8* %5, align 1
  %80 = zext i8 %79 to i32
  %81 = or i32 %80, %78
  %82 = trunc i32 %81 to i8
  store i8 %82, i8* %5, align 1
  %83 = load i8, i8* %5, align 1
  %84 = load i32, i32* @REG_RTC_CTRL_REG, align 4
  %85 = call i32 @twl4030_rtc_write_u8(i8 zeroext %83, i32 %84)
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %76, %72, %64, %50
  %87 = load i32, i32* %8, align 4
  %88 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %88)
  ret i32 %87
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local zeroext i8 @bin2bcd(i64) #2

declare dso_local i32 @twl4030_rtc_read_u8(i8*, i32) #2

declare dso_local i32 @twl4030_rtc_write_u8(i8 zeroext, i32) #2

declare dso_local i32 @twl4030_i2c_write(i32, i8*, i32, i32) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
