; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_cmd.c_mthca_SET_ICM_SIZE.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_cmd.c_mthca_SET_ICM_SIZE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32 }

@CMD_SET_ICM_SIZE = common dso_local global i32 0, align 4
@CMD_TIME_CLASS_A = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@MTHCA_ICM_PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@MTHCA_ICM_PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_SET_ICM_SIZE(%struct.mthca_dev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mthca_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32*, i32** %7, align 8
  %12 = load i32, i32* @CMD_SET_ICM_SIZE, align 4
  %13 = load i32, i32* @CMD_TIME_CLASS_A, align 4
  %14 = call i32 @mthca_cmd_imm(%struct.mthca_dev* %9, i32 %10, i32* %11, i32 0, i32 0, i32 %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %4, align 4
  br label %31

19:                                               ; preds = %3
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PAGE_SIZE, align 4
  %23 = load i32, i32* @MTHCA_ICM_PAGE_SIZE, align 4
  %24 = sdiv i32 %22, %23
  %25 = call i32 @ALIGN(i32 %21, i32 %24)
  %26 = load i32, i32* @PAGE_SHIFT, align 4
  %27 = load i32, i32* @MTHCA_ICM_PAGE_SHIFT, align 4
  %28 = sub nsw i32 %26, %27
  %29 = ashr i32 %25, %28
  %30 = load i32*, i32** %7, align 8
  store i32 %29, i32* %30, align 4
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %19, %17
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @mthca_cmd_imm(%struct.mthca_dev*, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
