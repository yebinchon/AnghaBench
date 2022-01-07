; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_tsb.c___flush_tsb_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_tsb.c___flush_tsb_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmu_gather = type { i64, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmu_gather*, i64, i64, i64)* @__flush_tsb_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__flush_tsb_one(%struct.mmu_gather* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.mmu_gather*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.mmu_gather* %0, %struct.mmu_gather** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %14

14:                                               ; preds = %42, %4
  %15 = load i64, i64* %9, align 8
  %16 = load %struct.mmu_gather*, %struct.mmu_gather** %5, align 8
  %17 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %15, %18
  br i1 %19, label %20, label %45

20:                                               ; preds = %14
  %21 = load %struct.mmu_gather*, %struct.mmu_gather** %5, align 8
  %22 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %21, i32 0, i32 1
  %23 = load i64*, i64** %22, align 8
  %24 = load i64, i64* %9, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = and i64 %27, -2
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* %8, align 8
  %32 = call i64 @tsb_hash(i64 %29, i64 %30, i64 %31)
  store i64 %32, i64* %13, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* %13, align 8
  %35 = mul i64 %34, 4
  %36 = add i64 %33, %35
  store i64 %36, i64* %12, align 8
  %37 = load i64, i64* %10, align 8
  %38 = lshr i64 %37, 22
  store i64 %38, i64* %11, align 8
  %39 = load i64, i64* %12, align 8
  %40 = load i64, i64* %11, align 8
  %41 = call i32 @tsb_flush(i64 %39, i64 %40)
  br label %42

42:                                               ; preds = %20
  %43 = load i64, i64* %9, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %9, align 8
  br label %14

45:                                               ; preds = %14
  ret void
}

declare dso_local i64 @tsb_hash(i64, i64, i64) #1

declare dso_local i32 @tsb_flush(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
