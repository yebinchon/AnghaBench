; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_srmmu.c_srmmu_pmd_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_srmmu.c_srmmu_pmd_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@PTRS_PER_PTE = common dso_local global i32 0, align 4
@SRMMU_REAL_PTRS_PER_PTE = common dso_local global i32 0, align 4
@SRMMU_ET_PTD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*)* @srmmu_pmd_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @srmmu_pmd_set(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = ptrtoint i32* %7 to i64
  %9 = call i32 @__nocache_pa(i64 %8)
  %10 = ashr i32 %9, 4
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %35, %2
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @PTRS_PER_PTE, align 4
  %15 = load i32, i32* @SRMMU_REAL_PTRS_PER_PTE, align 4
  %16 = sdiv i32 %14, %15
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %38

18:                                               ; preds = %12
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i64, i64* @SRMMU_ET_PTD, align 8
  %26 = load i64, i64* %5, align 8
  %27 = or i64 %25, %26
  %28 = call i32 @srmmu_set_pte(i32* %24, i64 %27)
  %29 = load i32, i32* @SRMMU_REAL_PTRS_PER_PTE, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 4
  %32 = lshr i64 %31, 4
  %33 = load i64, i64* %5, align 8
  %34 = add i64 %33, %32
  store i64 %34, i64* %5, align 8
  br label %35

35:                                               ; preds = %18
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %12

38:                                               ; preds = %12
  ret void
}

declare dso_local i32 @__nocache_pa(i64) #1

declare dso_local i32 @srmmu_set_pte(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
