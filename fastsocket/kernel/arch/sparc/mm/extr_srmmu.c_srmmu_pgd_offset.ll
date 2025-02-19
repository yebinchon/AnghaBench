; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_srmmu.c_srmmu_pgd_offset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_srmmu.c_srmmu_pgd_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32* }

@SRMMU_PGDIR_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.mm_struct*, i64)* @srmmu_pgd_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @srmmu_pgd_offset(%struct.mm_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %6 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @SRMMU_PGDIR_SHIFT, align 8
  %10 = lshr i64 %8, %9
  %11 = getelementptr inbounds i32, i32* %7, i64 %10
  ret i32* %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
