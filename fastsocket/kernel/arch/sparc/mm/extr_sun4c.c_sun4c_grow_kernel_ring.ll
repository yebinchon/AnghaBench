; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_sun4c.c_sun4c_grow_kernel_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_sun4c.c_sun4c_grow_kernel_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { %struct.sun4c_mmu_entry* }
%struct.sun4c_mmu_entry = type { i32 }

@sun4c_user_taken_entries = common dso_local global i64 0, align 8
@max_user_taken_entries = common dso_local global i64 0, align 8
@sun4c_ufree_ring = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@sun4c_kfree_ring = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sun4c_grow_kernel_ring() #0 {
  %1 = alloca %struct.sun4c_mmu_entry*, align 8
  %2 = load i64, i64* @sun4c_user_taken_entries, align 8
  %3 = load i64, i64* @max_user_taken_entries, align 8
  %4 = icmp sge i64 %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %17

6:                                                ; preds = %0
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sun4c_ufree_ring, i32 0, i32 1), align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %6
  %10 = load %struct.sun4c_mmu_entry*, %struct.sun4c_mmu_entry** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sun4c_ufree_ring, i32 0, i32 0, i32 0), align 8
  store %struct.sun4c_mmu_entry* %10, %struct.sun4c_mmu_entry** %1, align 8
  %11 = load %struct.sun4c_mmu_entry*, %struct.sun4c_mmu_entry** %1, align 8
  %12 = call i32 @remove_ring(%struct.TYPE_5__* @sun4c_ufree_ring, %struct.sun4c_mmu_entry* %11)
  %13 = load %struct.sun4c_mmu_entry*, %struct.sun4c_mmu_entry** %1, align 8
  %14 = call i32 @add_ring(i32* @sun4c_kfree_ring, %struct.sun4c_mmu_entry* %13)
  %15 = load i64, i64* @sun4c_user_taken_entries, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* @sun4c_user_taken_entries, align 8
  br label %17

17:                                               ; preds = %5, %9, %6
  ret void
}

declare dso_local i32 @remove_ring(%struct.TYPE_5__*, %struct.sun4c_mmu_entry*) #1

declare dso_local i32 @add_ring(i32*, %struct.sun4c_mmu_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
