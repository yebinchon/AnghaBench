; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_mmap.c_arch_pick_mmap_layout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_mmap.c_arch_pick_mmap_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.mm_struct = type { i32, i64, i32, i32, i32 }

@exec_shield = common dso_local global i32 0, align 4
@arch_get_unmapped_area = common dso_local global i32 0, align 4
@arch_unmap_area = common dso_local global i32 0, align 4
@arch_get_unmapped_area_topdown = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@READ_IMPLIES_EXEC = common dso_local global i32 0, align 4
@arch_get_unmapped_exec_area = common dso_local global i32 0, align 4
@SHLIB_BASE = common dso_local global i64 0, align 8
@arch_unmap_area_topdown = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arch_pick_mmap_layout(%struct.mm_struct* %0) #0 {
  %2 = alloca %struct.mm_struct*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %2, align 8
  %3 = load i32, i32* @exec_shield, align 4
  %4 = and i32 2, %3
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = call i64 (...) @mmap_is_legacy()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %6
  %10 = call i32 (...) @mmap_legacy_base()
  %11 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %12 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %11, i32 0, i32 4
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* @arch_get_unmapped_area, align 4
  %14 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %15 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @arch_unmap_area, align 4
  %17 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %18 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  br label %48

19:                                               ; preds = %6, %1
  %20 = call i32 (...) @mmap_base()
  %21 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %22 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @arch_get_unmapped_area_topdown, align 4
  %24 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %25 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @READ_IMPLIES_EXEC, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %19
  %33 = call i64 (...) @mmap_is_ia32()
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load i32, i32* @arch_get_unmapped_exec_area, align 4
  %37 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %38 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load i64, i64* @SHLIB_BASE, align 8
  %40 = call i64 (...) @mmap_rnd()
  %41 = add nsw i64 %39, %40
  %42 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %43 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  br label %44

44:                                               ; preds = %35, %32, %19
  %45 = load i32, i32* @arch_unmap_area_topdown, align 4
  %46 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %47 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  br label %48

48:                                               ; preds = %44, %9
  ret void
}

declare dso_local i64 @mmap_is_legacy(...) #1

declare dso_local i32 @mmap_legacy_base(...) #1

declare dso_local i32 @mmap_base(...) #1

declare dso_local i64 @mmap_is_ia32(...) #1

declare dso_local i64 @mmap_rnd(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
