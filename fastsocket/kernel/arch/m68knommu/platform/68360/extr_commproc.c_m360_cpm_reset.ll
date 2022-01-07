; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68knommu/platform/68360/extr_commproc.c_m360_cpm_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68knommu/platform/68360/extr_commproc.c_m360_cpm_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quicc = type { i32, i32 }

@_quicc_base = common dso_local global i64 0, align 8
@pquicc = common dso_local global %struct.quicc* null, align 8
@SOFTWARE_RESET = common dso_local global i32 0, align 4
@CMD_FLAG = common dso_local global i32 0, align 4
@CPM_DATAONLY_BASE = common dso_local global i64 0, align 8
@dp_alloc_base = common dso_local global i64 0, align 8
@CPM_DATAONLY_SIZE = common dso_local global i64 0, align 8
@dp_alloc_top = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m360_cpm_reset() #0 {
  %1 = load i64, i64* @_quicc_base, align 8
  %2 = inttoptr i64 %1 to %struct.quicc*
  store %struct.quicc* %2, %struct.quicc** @pquicc, align 8
  %3 = load i32, i32* @SOFTWARE_RESET, align 4
  %4 = load i32, i32* @CMD_FLAG, align 4
  %5 = or i32 %3, %4
  %6 = load %struct.quicc*, %struct.quicc** @pquicc, align 8
  %7 = getelementptr inbounds %struct.quicc, %struct.quicc* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 4
  br label %8

8:                                                ; preds = %15, %0
  %9 = load %struct.quicc*, %struct.quicc** @pquicc, align 8
  %10 = getelementptr inbounds %struct.quicc, %struct.quicc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @CMD_FLAG, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  br label %8

16:                                               ; preds = %8
  %17 = load %struct.quicc*, %struct.quicc** @pquicc, align 8
  %18 = getelementptr inbounds %struct.quicc, %struct.quicc* %17, i32 0, i32 1
  store i32 1856, i32* %18, align 4
  %19 = load i64, i64* @CPM_DATAONLY_BASE, align 8
  store i64 %19, i64* @dp_alloc_base, align 8
  %20 = load i64, i64* @dp_alloc_base, align 8
  %21 = load i64, i64* @CPM_DATAONLY_SIZE, align 8
  %22 = add nsw i64 %20, %21
  store i64 %22, i64* @dp_alloc_top, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
