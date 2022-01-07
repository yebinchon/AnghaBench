; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_beat_wrapper.h_beat_eeprom_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_beat_wrapper.h_beat_eeprom_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BEAT_NVRW_CNT = common dso_local global i64 0, align 8
@HV_eeprom_write = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32*)* @beat_eeprom_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beat_eeprom_write(i64 %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [6 x i64], align 16
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @BEAT_NVRW_CNT, align 8
  %11 = icmp sgt i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %33

13:                                               ; preds = %3
  %14 = getelementptr inbounds [6 x i64], [6 x i64]* %8, i64 0, i64 0
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @memcpy(i64* %14, i32* %15, i32 48)
  %17 = load i32, i32* @HV_eeprom_write, align 4
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds [6 x i64], [6 x i64]* %8, i64 0, i64 0
  %21 = load i64, i64* %20, align 16
  %22 = getelementptr inbounds [6 x i64], [6 x i64]* %8, i64 0, i64 1
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds [6 x i64], [6 x i64]* %8, i64 0, i64 2
  %25 = load i64, i64* %24, align 16
  %26 = getelementptr inbounds [6 x i64], [6 x i64]* %8, i64 0, i64 3
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds [6 x i64], [6 x i64]* %8, i64 0, i64 4
  %29 = load i64, i64* %28, align 16
  %30 = getelementptr inbounds [6 x i64], [6 x i64]* %8, i64 0, i64 5
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @beat_hcall_norets8(i32 %17, i64 %18, i64 %19, i64 %21, i64 %23, i64 %25, i64 %27, i64 %29, i64 %31)
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %13, %12
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @memcpy(i64*, i32*, i32) #1

declare dso_local i32 @beat_hcall_norets8(i32, i64, i64, i64, i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
