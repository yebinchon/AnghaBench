; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/mach-common/extr_pm.c_bf53x_suspend_l1_mem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/mach-common/extr_pm.c_bf53x_suspend_l1_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@L1_CODE_START = common dso_local global i64 0, align 8
@L1_CODE_LENGTH = common dso_local global i32 0, align 4
@L1_DATA_A_START = common dso_local global i64 0, align 8
@L1_DATA_A_LENGTH = common dso_local global i32 0, align 4
@L1_DATA_B_START = common dso_local global i64 0, align 8
@L1_DATA_B_LENGTH = common dso_local global i32 0, align 4
@L1_SCRATCH_START = common dso_local global i64 0, align 8
@L1_SCRATCH_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bf53x_suspend_l1_mem(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = load i64, i64* @L1_CODE_START, align 8
  %5 = inttoptr i64 %4 to i8*
  %6 = load i32, i32* @L1_CODE_LENGTH, align 4
  %7 = call i32 @dma_memcpy(i8* %3, i8* %5, i32 %6)
  %8 = load i8*, i8** %2, align 8
  %9 = load i32, i32* @L1_CODE_LENGTH, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, i8* %8, i64 %10
  %12 = load i64, i64* @L1_DATA_A_START, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = load i32, i32* @L1_DATA_A_LENGTH, align 4
  %15 = call i32 @dma_memcpy(i8* %11, i8* %13, i32 %14)
  %16 = load i8*, i8** %2, align 8
  %17 = load i32, i32* @L1_CODE_LENGTH, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = load i32, i32* @L1_DATA_A_LENGTH, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i64, i64* @L1_DATA_B_START, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = load i32, i32* @L1_DATA_B_LENGTH, align 4
  %26 = call i32 @dma_memcpy(i8* %22, i8* %24, i32 %25)
  %27 = load i8*, i8** %2, align 8
  %28 = load i32, i32* @L1_CODE_LENGTH, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i32, i32* @L1_DATA_A_LENGTH, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i32, i32* @L1_DATA_B_LENGTH, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i64, i64* @L1_SCRATCH_START, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = load i32, i32* @L1_SCRATCH_LENGTH, align 4
  %40 = call i32 @memcpy(i8* %36, i8* %38, i32 %39)
  ret i32 0
}

declare dso_local i32 @dma_memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
