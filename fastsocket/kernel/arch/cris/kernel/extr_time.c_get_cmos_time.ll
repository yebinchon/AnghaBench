; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/kernel/extr_time.c_get_cmos_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/kernel/extr_time.c_get_cmos_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RTC_SECONDS = common dso_local global i32 0, align 4
@RTC_MINUTES = common dso_local global i32 0, align 4
@RTC_HOURS = common dso_local global i32 0, align 4
@RTC_DAY_OF_MONTH = common dso_local global i32 0, align 4
@RTC_MONTH = common dso_local global i32 0, align 4
@RTC_YEAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_cmos_time() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @RTC_SECONDS, align 4
  %8 = call i32 @CMOS_READ(i32 %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* @RTC_MINUTES, align 4
  %10 = call i32 @CMOS_READ(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @RTC_HOURS, align 4
  %12 = call i32 @CMOS_READ(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @RTC_DAY_OF_MONTH, align 4
  %14 = call i32 @CMOS_READ(i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @RTC_MONTH, align 4
  %16 = call i32 @CMOS_READ(i32 %15)
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* @RTC_YEAR, align 4
  %18 = call i32 @CMOS_READ(i32 %17)
  store i32 %18, i32* %1, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @bcd2bin(i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @bcd2bin(i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @bcd2bin(i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @bcd2bin(i32 %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @bcd2bin(i32 %27)
  store i32 %28, i32* %2, align 4
  %29 = load i32, i32* %1, align 4
  %30 = call i32 @bcd2bin(i32 %29)
  store i32 %30, i32* %1, align 4
  %31 = load i32, i32* %1, align 4
  %32 = add i32 %31, 1900
  store i32 %32, i32* %1, align 4
  %33 = icmp ult i32 %32, 1970
  br i1 %33, label %34, label %37

34:                                               ; preds = %0
  %35 = load i32, i32* %1, align 4
  %36 = add i32 %35, 100
  store i32 %36, i32* %1, align 4
  br label %37

37:                                               ; preds = %34, %0
  %38 = load i32, i32* %1, align 4
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @mktime(i32 %38, i32 %39, i32 %40, i32 %41, i32 %42, i32 %43)
  ret i64 %44
}

declare dso_local i32 @CMOS_READ(i32) #1

declare dso_local i32 @bcd2bin(i32) #1

declare dso_local i64 @mktime(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
