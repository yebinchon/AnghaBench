; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/drivers/extr_ds1302.c_get_rtc_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/drivers/extr_ds1302.c_get_rtc_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_time = type { i32, i32, i32, i32, i32, i32 }

@RTC_SECONDS = common dso_local global i32 0, align 4
@RTC_MINUTES = common dso_local global i32 0, align 4
@RTC_HOURS = common dso_local global i32 0, align 4
@RTC_DAY_OF_MONTH = common dso_local global i32 0, align 4
@RTC_MONTH = common dso_local global i32 0, align 4
@RTC_YEAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_rtc_time(%struct.rtc_time* %0) #0 {
  %2 = alloca %struct.rtc_time*, align 8
  %3 = alloca i64, align 8
  store %struct.rtc_time* %0, %struct.rtc_time** %2, align 8
  %4 = load i64, i64* %3, align 8
  %5 = call i32 @local_irq_save(i64 %4)
  %6 = load i32, i32* @RTC_SECONDS, align 4
  %7 = call i8* @CMOS_READ(i32 %6)
  %8 = ptrtoint i8* %7 to i32
  %9 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %10 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @RTC_MINUTES, align 4
  %12 = call i8* @CMOS_READ(i32 %11)
  %13 = ptrtoint i8* %12 to i32
  %14 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %15 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @RTC_HOURS, align 4
  %17 = call i8* @CMOS_READ(i32 %16)
  %18 = ptrtoint i8* %17 to i32
  %19 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %20 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @RTC_DAY_OF_MONTH, align 4
  %22 = call i8* @CMOS_READ(i32 %21)
  %23 = ptrtoint i8* %22 to i32
  %24 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %25 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @RTC_MONTH, align 4
  %27 = call i8* @CMOS_READ(i32 %26)
  %28 = ptrtoint i8* %27 to i32
  %29 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %30 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @RTC_YEAR, align 4
  %32 = call i8* @CMOS_READ(i32 %31)
  %33 = ptrtoint i8* %32 to i32
  %34 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %35 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 4
  %36 = load i64, i64* %3, align 8
  %37 = call i32 @local_irq_restore(i64 %36)
  %38 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %39 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @bcd2bin(i32 %40)
  %42 = ptrtoint i8* %41 to i32
  %43 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %44 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %46 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @bcd2bin(i32 %47)
  %49 = ptrtoint i8* %48 to i32
  %50 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %51 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %53 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @bcd2bin(i32 %54)
  %56 = ptrtoint i8* %55 to i32
  %57 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %58 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %60 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @bcd2bin(i32 %61)
  %63 = ptrtoint i8* %62 to i32
  %64 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %65 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %67 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @bcd2bin(i32 %68)
  %70 = ptrtoint i8* %69 to i32
  %71 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %72 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 4
  %73 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %74 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @bcd2bin(i32 %75)
  %77 = ptrtoint i8* %76 to i32
  %78 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %79 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %78, i32 0, i32 5
  store i32 %77, i32* %79, align 4
  %80 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %81 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = icmp sle i32 %82, 69
  br i1 %83, label %84, label %89

84:                                               ; preds = %1
  %85 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %86 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 100
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %84, %1
  %90 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %91 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %91, align 4
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i8* @CMOS_READ(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i8* @bcd2bin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
