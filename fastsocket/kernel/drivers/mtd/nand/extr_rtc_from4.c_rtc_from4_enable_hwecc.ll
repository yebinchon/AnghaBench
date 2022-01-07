; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_rtc_from4.c_rtc_from4_enable_hwecc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_rtc_from4.c_rtc_from4_enable_hwecc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }

@rtc_from4_fio_base = common dso_local global i64 0, align 8
@RTC_FROM4_RS_ECC_CTL = common dso_local global i64 0, align 8
@RTC_FROM4_RS_ECC_CTL_CLR = common dso_local global i16 0, align 2
@RTC_FROM4_RS_ECC_CTL_FD_E = common dso_local global i16 0, align 2
@RTC_FROM4_RS_ECC_CTL_GEN = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32)* @rtc_from4_enable_hwecc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtc_from4_enable_hwecc(%struct.mtd_info* %0, i32 %1) #0 {
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16*, align 8
  %6 = alloca i16, align 2
  store %struct.mtd_info* %0, %struct.mtd_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* @rtc_from4_fio_base, align 8
  %8 = load i64, i64* @RTC_FROM4_RS_ECC_CTL, align 8
  %9 = add nsw i64 %7, %8
  %10 = inttoptr i64 %9 to i16*
  store i16* %10, i16** %5, align 8
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %36 [
    i32 130, label %12
    i32 129, label %21
    i32 128, label %24
  ]

12:                                               ; preds = %2
  %13 = load i16, i16* @RTC_FROM4_RS_ECC_CTL_CLR, align 2
  %14 = zext i16 %13 to i32
  %15 = load i16, i16* @RTC_FROM4_RS_ECC_CTL_FD_E, align 2
  %16 = zext i16 %15 to i32
  %17 = or i32 %14, %16
  %18 = trunc i32 %17 to i16
  store i16 %18, i16* %6, align 2
  %19 = load i16, i16* %6, align 2
  %20 = load i16*, i16** %5, align 8
  store volatile i16 %19, i16* %20, align 2
  br label %38

21:                                               ; preds = %2
  store i16 0, i16* %6, align 2
  %22 = load i16, i16* %6, align 2
  %23 = load i16*, i16** %5, align 8
  store volatile i16 %22, i16* %23, align 2
  br label %38

24:                                               ; preds = %2
  %25 = load i16, i16* @RTC_FROM4_RS_ECC_CTL_CLR, align 2
  %26 = zext i16 %25 to i32
  %27 = load i16, i16* @RTC_FROM4_RS_ECC_CTL_GEN, align 2
  %28 = zext i16 %27 to i32
  %29 = or i32 %26, %28
  %30 = load i16, i16* @RTC_FROM4_RS_ECC_CTL_FD_E, align 2
  %31 = zext i16 %30 to i32
  %32 = or i32 %29, %31
  %33 = trunc i32 %32 to i16
  store i16 %33, i16* %6, align 2
  %34 = load i16, i16* %6, align 2
  %35 = load i16*, i16** %5, align 8
  store volatile i16 %34, i16* %35, align 2
  br label %38

36:                                               ; preds = %2
  %37 = call i32 (...) @BUG()
  br label %38

38:                                               ; preds = %36, %24, %21, %12
  ret void
}

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
