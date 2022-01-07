; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_sun4c.c_sun4c_kernel_strategy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_sun4c.c_sun4c_kernel_strategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { %struct.sun4c_mmu_entry* }
%struct.sun4c_mmu_entry = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.sun4c_mmu_entry* }

@sun4c_kfree_ring = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@sun4c_kernel_ring = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sun4c_mmu_entry* ()* @sun4c_kernel_strategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sun4c_mmu_entry* @sun4c_kernel_strategy() #0 {
  %1 = alloca %struct.sun4c_mmu_entry*, align 8
  %2 = alloca %struct.sun4c_mmu_entry*, align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sun4c_kfree_ring, i32 0, i32 1), align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load %struct.sun4c_mmu_entry*, %struct.sun4c_mmu_entry** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sun4c_kfree_ring, i32 0, i32 0, i32 0), align 8
  store %struct.sun4c_mmu_entry* %6, %struct.sun4c_mmu_entry** %2, align 8
  %7 = load %struct.sun4c_mmu_entry*, %struct.sun4c_mmu_entry** %2, align 8
  store %struct.sun4c_mmu_entry* %7, %struct.sun4c_mmu_entry** %1, align 8
  br label %20

8:                                                ; preds = %0
  %9 = load %struct.sun4c_mmu_entry*, %struct.sun4c_mmu_entry** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sun4c_kernel_ring, i32 0, i32 0, i32 0), align 8
  store %struct.sun4c_mmu_entry* %9, %struct.sun4c_mmu_entry** %2, align 8
  %10 = load %struct.sun4c_mmu_entry*, %struct.sun4c_mmu_entry** %2, align 8
  %11 = getelementptr inbounds %struct.sun4c_mmu_entry, %struct.sun4c_mmu_entry* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @sun4c_flush_segment(i32 %12)
  %14 = load %struct.sun4c_mmu_entry*, %struct.sun4c_mmu_entry** %2, align 8
  %15 = call i32 @sun4c_kernel_unmap(%struct.sun4c_mmu_entry* %14)
  %16 = load %struct.sun4c_mmu_entry*, %struct.sun4c_mmu_entry** %2, align 8
  %17 = call i32 @free_kernel_entry(%struct.sun4c_mmu_entry* %16, %struct.TYPE_9__* @sun4c_kernel_ring)
  %18 = load %struct.sun4c_mmu_entry*, %struct.sun4c_mmu_entry** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sun4c_kfree_ring, i32 0, i32 0, i32 0), align 8
  store %struct.sun4c_mmu_entry* %18, %struct.sun4c_mmu_entry** %2, align 8
  %19 = load %struct.sun4c_mmu_entry*, %struct.sun4c_mmu_entry** %2, align 8
  store %struct.sun4c_mmu_entry* %19, %struct.sun4c_mmu_entry** %1, align 8
  br label %20

20:                                               ; preds = %8, %5
  %21 = load %struct.sun4c_mmu_entry*, %struct.sun4c_mmu_entry** %1, align 8
  ret %struct.sun4c_mmu_entry* %21
}

declare dso_local i32 @sun4c_flush_segment(i32) #1

declare dso_local i32 @sun4c_kernel_unmap(%struct.sun4c_mmu_entry*) #1

declare dso_local i32 @free_kernel_entry(%struct.sun4c_mmu_entry*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
