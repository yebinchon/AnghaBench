; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/mach-common/extr_pm.c_bf53x_resume_l1_mem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/mach-common/extr_pm.c_bf53x_resume_l1_mem.c"
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
define dso_local i32 @bf53x_resume_l1_mem(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i64, i64* @L1_CODE_START, align 8
  %4 = inttoptr i64 %3 to i8*
  %5 = load i8*, i8** %2, align 8
  %6 = load i32, i32* @L1_CODE_LENGTH, align 4
  %7 = call i32 @dma_memcpy(i8* %4, i8* %5, i32 %6)
  %8 = load i64, i64* @L1_DATA_A_START, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = load i8*, i8** %2, align 8
  %11 = load i32, i32* @L1_CODE_LENGTH, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, i8* %10, i64 %12
  %14 = load i32, i32* @L1_DATA_A_LENGTH, align 4
  %15 = call i32 @dma_memcpy(i8* %9, i8* %13, i32 %14)
  %16 = load i64, i64* @L1_DATA_B_START, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = load i8*, i8** %2, align 8
  %19 = load i32, i32* @L1_CODE_LENGTH, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = load i32, i32* @L1_DATA_A_LENGTH, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i32, i32* @L1_DATA_B_LENGTH, align 4
  %26 = call i32 @dma_memcpy(i8* %17, i8* %24, i32 %25)
  %27 = load i64, i64* @L1_SCRATCH_START, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = load i8*, i8** %2, align 8
  %30 = load i32, i32* @L1_CODE_LENGTH, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i32, i32* @L1_DATA_A_LENGTH, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i32, i32* @L1_DATA_B_LENGTH, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i32, i32* @L1_SCRATCH_LENGTH, align 4
  %40 = call i32 @memcpy(i8* %28, i8* %38, i32 %39)
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
