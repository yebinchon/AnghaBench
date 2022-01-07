; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_dump_pagetables.c_walk_pte_level.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_dump_pagetables.c_walk_pte_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.pg_state = type { i32 }

@PTRS_PER_PTE = common dso_local global i32 0, align 4
@PTE_LEVEL_MULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.pg_state*, i32, i64)* @walk_pte_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @walk_pte_level(%struct.seq_file* %0, %struct.pg_state* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca %struct.pg_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %5, align 8
  store %struct.pg_state* %1, %struct.pg_state** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i64 @pmd_page_vaddr(i32 %12)
  %14 = inttoptr i64 %13 to i32*
  store i32* %14, i32** %10, align 8
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %38, %4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @PTRS_PER_PTE, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %15
  %20 = load i32*, i32** %10, align 8
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @pte_pgprot(i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load i64, i64* %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @PTE_LEVEL_MULT, align 4
  %26 = mul nsw i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = add i64 %23, %27
  %29 = call i32 @normalize_addr(i64 %28)
  %30 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %31 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %33 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @note_page(%struct.seq_file* %32, %struct.pg_state* %33, i32 %34, i32 4)
  %36 = load i32*, i32** %10, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %10, align 8
  br label %38

38:                                               ; preds = %19
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %9, align 4
  br label %15

41:                                               ; preds = %15
  ret void
}

declare dso_local i64 @pmd_page_vaddr(i32) #1

declare dso_local i32 @pte_pgprot(i32) #1

declare dso_local i32 @normalize_addr(i64) #1

declare dso_local i32 @note_page(%struct.seq_file*, %struct.pg_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
