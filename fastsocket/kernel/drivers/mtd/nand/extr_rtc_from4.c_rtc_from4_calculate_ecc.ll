; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_rtc_from4.c_rtc_from4_calculate_ecc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_rtc_from4.c_rtc_from4_calculate_ecc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }

@rtc_from4_fio_base = common dso_local global i64 0, align 8
@RTC_FROM4_RS_ECCN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32*, i32*)* @rtc_from4_calculate_ecc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtc_from4_calculate_ecc(%struct.mtd_info* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i64, i64* @rtc_from4_fio_base, align 8
  %11 = load i64, i64* @RTC_FROM4_RS_ECCN, align 8
  %12 = add nsw i64 %10, %11
  %13 = inttoptr i64 %12 to i16*
  store i16* %13, i16** %7, align 8
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %29, %3
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 8
  br i1 %16, label %17, label %32

17:                                               ; preds = %14
  %18 = load i16*, i16** %7, align 8
  %19 = load volatile i16, i16* %18, align 2
  store i16 %19, i16* %8, align 2
  %20 = load i16, i16* %8, align 2
  %21 = trunc i16 %20 to i8
  %22 = zext i8 %21 to i32
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32 %22, i32* %26, align 4
  %27 = load i16*, i16** %7, align 8
  %28 = getelementptr inbounds i16, i16* %27, i32 1
  store i16* %28, i16** %7, align 8
  br label %29

29:                                               ; preds = %17
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %9, align 4
  br label %14

32:                                               ; preds = %14
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 7
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, 15
  store i32 %36, i32* %34, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
