; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68knommu/platform/68360/extr_commproc.c_cpm_interrupt_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68knommu/platform/68360/extr_commproc.c_cpm_interrupt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@CICR_SCD_SCC4 = common dso_local global i32 0, align 4
@CICR_SCC_SCC3 = common dso_local global i32 0, align 4
@CICR_SCB_SCC2 = common dso_local global i32 0, align 4
@CICR_SCA_SCC1 = common dso_local global i32 0, align 4
@CPM_INTERRUPT = common dso_local global i32 0, align 4
@CICR_HP_MASK = common dso_local global i32 0, align 4
@CPM_VECTOR_BASE = common dso_local global i32 0, align 4
@CICR_SPS = common dso_local global i32 0, align 4
@pquicc = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpm_interrupt_init() #0 {
  %1 = load i32, i32* @CICR_SCD_SCC4, align 4
  %2 = load i32, i32* @CICR_SCC_SCC3, align 4
  %3 = or i32 %1, %2
  %4 = load i32, i32* @CICR_SCB_SCC2, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @CICR_SCA_SCC1, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @CPM_INTERRUPT, align 4
  %9 = shl i32 %8, 13
  %10 = or i32 %7, %9
  %11 = load i32, i32* @CICR_HP_MASK, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @CPM_VECTOR_BASE, align 4
  %14 = shl i32 %13, 5
  %15 = or i32 %12, %14
  %16 = load i32, i32* @CICR_SPS, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pquicc, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pquicc, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
