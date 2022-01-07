; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/maple/extr_time.c_maple_set_rtc_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/maple/extr_time.c_maple_set_rtc_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_time = type { i32, i32, i32, i32, i32, i32 }

@rtc_lock = common dso_local global i32 0, align 4
@RTC_CONTROL = common dso_local global i32 0, align 4
@RTC_SET = common dso_local global i8 0, align 1
@RTC_FREQ_SELECT = common dso_local global i32 0, align 4
@RTC_DIV_RESET2 = common dso_local global i8 0, align 1
@RTC_DM_BINARY = common dso_local global i8 0, align 1
@RTC_ALWAYS_BCD = common dso_local global i64 0, align 8
@RTC_SECONDS = common dso_local global i32 0, align 4
@RTC_MINUTES = common dso_local global i32 0, align 4
@RTC_HOURS = common dso_local global i32 0, align 4
@RTC_MONTH = common dso_local global i32 0, align 4
@RTC_DAY_OF_MONTH = common dso_local global i32 0, align 4
@RTC_YEAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @maple_set_rtc_time(%struct.rtc_time* %0) #0 {
  %2 = alloca %struct.rtc_time*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rtc_time* %0, %struct.rtc_time** %2, align 8
  %11 = call i32 @spin_lock(i32* @rtc_lock)
  %12 = load i32, i32* @RTC_CONTROL, align 4
  %13 = call zeroext i8 @maple_clock_read(i32 %12)
  store i8 %13, i8* %3, align 1
  %14 = load i8, i8* %3, align 1
  %15 = zext i8 %14 to i32
  %16 = load i8, i8* @RTC_SET, align 1
  %17 = zext i8 %16 to i32
  %18 = or i32 %15, %17
  %19 = trunc i32 %18 to i8
  %20 = load i32, i32* @RTC_CONTROL, align 4
  %21 = call i32 @maple_clock_write(i8 zeroext %19, i32 %20)
  %22 = load i32, i32* @RTC_FREQ_SELECT, align 4
  %23 = call zeroext i8 @maple_clock_read(i32 %22)
  store i8 %23, i8* %4, align 1
  %24 = load i8, i8* %4, align 1
  %25 = zext i8 %24 to i32
  %26 = load i8, i8* @RTC_DIV_RESET2, align 1
  %27 = zext i8 %26 to i32
  %28 = or i32 %25, %27
  %29 = trunc i32 %28 to i8
  %30 = load i32, i32* @RTC_FREQ_SELECT, align 4
  %31 = call i32 @maple_clock_write(i8 zeroext %29, i32 %30)
  %32 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %33 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %5, align 4
  %35 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %36 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %6, align 4
  %38 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %39 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %7, align 4
  %41 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %42 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %8, align 4
  %44 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %45 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %9, align 4
  %47 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %48 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %10, align 4
  %50 = load i8, i8* %3, align 1
  %51 = zext i8 %50 to i32
  %52 = load i8, i8* @RTC_DM_BINARY, align 1
  %53 = zext i8 %52 to i32
  %54 = and i32 %51, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %1
  %57 = load i64, i64* @RTC_ALWAYS_BCD, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %56, %1
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @bin2bcd(i32 %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @bin2bcd(i32 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @bin2bcd(i32 %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @bin2bcd(i32 %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @bin2bcd(i32 %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @bin2bcd(i32 %70)
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %59, %56
  %73 = load i32, i32* %5, align 4
  %74 = trunc i32 %73 to i8
  %75 = load i32, i32* @RTC_SECONDS, align 4
  %76 = call i32 @maple_clock_write(i8 zeroext %74, i32 %75)
  %77 = load i32, i32* %6, align 4
  %78 = trunc i32 %77 to i8
  %79 = load i32, i32* @RTC_MINUTES, align 4
  %80 = call i32 @maple_clock_write(i8 zeroext %78, i32 %79)
  %81 = load i32, i32* %7, align 4
  %82 = trunc i32 %81 to i8
  %83 = load i32, i32* @RTC_HOURS, align 4
  %84 = call i32 @maple_clock_write(i8 zeroext %82, i32 %83)
  %85 = load i32, i32* %8, align 4
  %86 = trunc i32 %85 to i8
  %87 = load i32, i32* @RTC_MONTH, align 4
  %88 = call i32 @maple_clock_write(i8 zeroext %86, i32 %87)
  %89 = load i32, i32* %9, align 4
  %90 = trunc i32 %89 to i8
  %91 = load i32, i32* @RTC_DAY_OF_MONTH, align 4
  %92 = call i32 @maple_clock_write(i8 zeroext %90, i32 %91)
  %93 = load i32, i32* %10, align 4
  %94 = trunc i32 %93 to i8
  %95 = load i32, i32* @RTC_YEAR, align 4
  %96 = call i32 @maple_clock_write(i8 zeroext %94, i32 %95)
  %97 = load i8, i8* %3, align 1
  %98 = load i32, i32* @RTC_CONTROL, align 4
  %99 = call i32 @maple_clock_write(i8 zeroext %97, i32 %98)
  %100 = load i8, i8* %4, align 1
  %101 = load i32, i32* @RTC_FREQ_SELECT, align 4
  %102 = call i32 @maple_clock_write(i8 zeroext %100, i32 %101)
  %103 = call i32 @spin_unlock(i32* @rtc_lock)
  ret i32 0
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local zeroext i8 @maple_clock_read(i32) #1

declare dso_local i32 @maple_clock_write(i8 zeroext, i32) #1

declare dso_local i32 @bin2bcd(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
