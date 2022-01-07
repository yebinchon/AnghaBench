; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9300_comp_hdr_unpack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9300_comp_hdr_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i32*, i32*, i32*, i32*, i32*)* @ar9300_comp_hdr_unpack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9300_comp_hdr_unpack(i64* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca [4 x i64], align 16
  store i64* %0, i64** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %14 = load i64*, i64** %7, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  store i64 %16, i64* %17, align 16
  %18 = load i64*, i64** %7, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 1
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 1
  store i64 %20, i64* %21, align 8
  %22 = load i64*, i64** %7, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 2
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 2
  store i64 %24, i64* %25, align 16
  %26 = load i64*, i64** %7, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 3
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 3
  store i64 %28, i64* %29, align 8
  %30 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  %31 = load i64, i64* %30, align 16
  %32 = lshr i64 %31, 5
  %33 = and i64 %32, 7
  %34 = trunc i64 %33 to i32
  %35 = load i32*, i32** %8, align 8
  store i32 %34, i32* %35, align 4
  %36 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  %37 = load i64, i64* %36, align 16
  %38 = and i64 %37, 31
  %39 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 1
  %40 = load i64, i64* %39, align 8
  %41 = lshr i64 %40, 2
  %42 = and i64 %41, 32
  %43 = or i64 %38, %42
  %44 = trunc i64 %43 to i32
  %45 = load i32*, i32** %9, align 8
  store i32 %44, i32* %45, align 4
  %46 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 1
  %47 = load i64, i64* %46, align 8
  %48 = shl i64 %47, 4
  %49 = and i64 %48, 2032
  %50 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 2
  %51 = load i64, i64* %50, align 16
  %52 = lshr i64 %51, 4
  %53 = and i64 %52, 15
  %54 = or i64 %49, %53
  %55 = trunc i64 %54 to i32
  %56 = load i32*, i32** %10, align 8
  store i32 %55, i32* %56, align 4
  %57 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 2
  %58 = load i64, i64* %57, align 16
  %59 = and i64 %58, 15
  %60 = trunc i64 %59 to i32
  %61 = load i32*, i32** %11, align 8
  store i32 %60, i32* %61, align 4
  %62 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 3
  %63 = load i64, i64* %62, align 8
  %64 = and i64 %63, 255
  %65 = trunc i64 %64 to i32
  %66 = load i32*, i32** %12, align 8
  store i32 %65, i32* %66, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
