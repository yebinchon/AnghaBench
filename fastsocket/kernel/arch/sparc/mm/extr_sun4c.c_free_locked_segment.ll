; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_sun4c.c_free_locked_segment.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_sun4c.c_free_locked_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun4c_mmu_entry = type { i32 }

@SUN4C_REAL_PGDIR_MASK = common dso_local global i64 0, align 8
@mmu_entry_pool = common dso_local global %struct.sun4c_mmu_entry* null, align 8
@sun4c_ufree_ring = common dso_local global i32 0, align 4
@max_user_taken_entries = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @free_locked_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_locked_segment(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.sun4c_mmu_entry*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i32 @local_irq_save(i64 %6)
  %8 = load i64, i64* @SUN4C_REAL_PGDIR_MASK, align 8
  %9 = load i64, i64* %2, align 8
  %10 = and i64 %9, %8
  store i64 %10, i64* %2, align 8
  %11 = load i64, i64* %2, align 8
  %12 = call zeroext i8 @sun4c_get_segmap(i64 %11)
  store i8 %12, i8* %5, align 1
  %13 = load %struct.sun4c_mmu_entry*, %struct.sun4c_mmu_entry** @mmu_entry_pool, align 8
  %14 = load i8, i8* %5, align 1
  %15 = zext i8 %14 to i64
  %16 = getelementptr inbounds %struct.sun4c_mmu_entry, %struct.sun4c_mmu_entry* %13, i64 %15
  store %struct.sun4c_mmu_entry* %16, %struct.sun4c_mmu_entry** %3, align 8
  %17 = call i32 (...) @flush_user_windows()
  %18 = load i64, i64* %2, align 8
  %19 = call i32 @sun4c_flush_segment(i64 %18)
  %20 = load %struct.sun4c_mmu_entry*, %struct.sun4c_mmu_entry** %3, align 8
  %21 = call i32 @sun4c_kernel_unmap(%struct.sun4c_mmu_entry* %20)
  %22 = load %struct.sun4c_mmu_entry*, %struct.sun4c_mmu_entry** %3, align 8
  %23 = call i32 @add_ring(i32* @sun4c_ufree_ring, %struct.sun4c_mmu_entry* %22)
  %24 = load i32, i32* @max_user_taken_entries, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @max_user_taken_entries, align 4
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @local_irq_restore(i64 %26)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local zeroext i8 @sun4c_get_segmap(i64) #1

declare dso_local i32 @flush_user_windows(...) #1

declare dso_local i32 @sun4c_flush_segment(i64) #1

declare dso_local i32 @sun4c_kernel_unmap(%struct.sun4c_mmu_entry*) #1

declare dso_local i32 @add_ring(i32*, %struct.sun4c_mmu_entry*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
