; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_sun4c.c_add_ring_ordered.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_sun4c.c_add_ring_ordered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun4c_mmu_ring = type { i32, %struct.sun4c_mmu_entry }
%struct.sun4c_mmu_entry = type { i64, %struct.sun4c_mmu_entry*, %struct.sun4c_mmu_entry* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sun4c_mmu_ring*, %struct.sun4c_mmu_entry*)* @add_ring_ordered to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_ring_ordered(%struct.sun4c_mmu_ring* %0, %struct.sun4c_mmu_entry* %1) #0 {
  %3 = alloca %struct.sun4c_mmu_ring*, align 8
  %4 = alloca %struct.sun4c_mmu_entry*, align 8
  %5 = alloca %struct.sun4c_mmu_entry*, align 8
  %6 = alloca i64, align 8
  store %struct.sun4c_mmu_ring* %0, %struct.sun4c_mmu_ring** %3, align 8
  store %struct.sun4c_mmu_entry* %1, %struct.sun4c_mmu_entry** %4, align 8
  %7 = load %struct.sun4c_mmu_ring*, %struct.sun4c_mmu_ring** %3, align 8
  %8 = getelementptr inbounds %struct.sun4c_mmu_ring, %struct.sun4c_mmu_ring* %7, i32 0, i32 1
  store %struct.sun4c_mmu_entry* %8, %struct.sun4c_mmu_entry** %5, align 8
  %9 = load %struct.sun4c_mmu_entry*, %struct.sun4c_mmu_entry** %4, align 8
  %10 = getelementptr inbounds %struct.sun4c_mmu_entry, %struct.sun4c_mmu_entry* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %6, align 8
  br label %12

12:                                               ; preds = %29, %2
  %13 = load %struct.sun4c_mmu_entry*, %struct.sun4c_mmu_entry** %5, align 8
  %14 = getelementptr inbounds %struct.sun4c_mmu_entry, %struct.sun4c_mmu_entry* %13, i32 0, i32 1
  %15 = load %struct.sun4c_mmu_entry*, %struct.sun4c_mmu_entry** %14, align 8
  %16 = load %struct.sun4c_mmu_ring*, %struct.sun4c_mmu_ring** %3, align 8
  %17 = getelementptr inbounds %struct.sun4c_mmu_ring, %struct.sun4c_mmu_ring* %16, i32 0, i32 1
  %18 = icmp ne %struct.sun4c_mmu_entry* %15, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %12
  %20 = load %struct.sun4c_mmu_entry*, %struct.sun4c_mmu_entry** %5, align 8
  %21 = getelementptr inbounds %struct.sun4c_mmu_entry, %struct.sun4c_mmu_entry* %20, i32 0, i32 1
  %22 = load %struct.sun4c_mmu_entry*, %struct.sun4c_mmu_entry** %21, align 8
  %23 = getelementptr inbounds %struct.sun4c_mmu_entry, %struct.sun4c_mmu_entry* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp ult i64 %24, %25
  br label %27

27:                                               ; preds = %19, %12
  %28 = phi i1 [ false, %12 ], [ %26, %19 ]
  br i1 %28, label %29, label %33

29:                                               ; preds = %27
  %30 = load %struct.sun4c_mmu_entry*, %struct.sun4c_mmu_entry** %5, align 8
  %31 = getelementptr inbounds %struct.sun4c_mmu_entry, %struct.sun4c_mmu_entry* %30, i32 0, i32 1
  %32 = load %struct.sun4c_mmu_entry*, %struct.sun4c_mmu_entry** %31, align 8
  store %struct.sun4c_mmu_entry* %32, %struct.sun4c_mmu_entry** %5, align 8
  br label %12

33:                                               ; preds = %27
  %34 = load %struct.sun4c_mmu_entry*, %struct.sun4c_mmu_entry** %5, align 8
  %35 = load %struct.sun4c_mmu_entry*, %struct.sun4c_mmu_entry** %4, align 8
  %36 = getelementptr inbounds %struct.sun4c_mmu_entry, %struct.sun4c_mmu_entry* %35, i32 0, i32 2
  store %struct.sun4c_mmu_entry* %34, %struct.sun4c_mmu_entry** %36, align 8
  %37 = load %struct.sun4c_mmu_entry*, %struct.sun4c_mmu_entry** %4, align 8
  %38 = load %struct.sun4c_mmu_entry*, %struct.sun4c_mmu_entry** %5, align 8
  %39 = getelementptr inbounds %struct.sun4c_mmu_entry, %struct.sun4c_mmu_entry* %38, i32 0, i32 1
  %40 = load %struct.sun4c_mmu_entry*, %struct.sun4c_mmu_entry** %39, align 8
  %41 = load %struct.sun4c_mmu_entry*, %struct.sun4c_mmu_entry** %4, align 8
  %42 = getelementptr inbounds %struct.sun4c_mmu_entry, %struct.sun4c_mmu_entry* %41, i32 0, i32 1
  store %struct.sun4c_mmu_entry* %40, %struct.sun4c_mmu_entry** %42, align 8
  %43 = getelementptr inbounds %struct.sun4c_mmu_entry, %struct.sun4c_mmu_entry* %40, i32 0, i32 2
  store %struct.sun4c_mmu_entry* %37, %struct.sun4c_mmu_entry** %43, align 8
  %44 = load %struct.sun4c_mmu_entry*, %struct.sun4c_mmu_entry** %4, align 8
  %45 = load %struct.sun4c_mmu_entry*, %struct.sun4c_mmu_entry** %5, align 8
  %46 = getelementptr inbounds %struct.sun4c_mmu_entry, %struct.sun4c_mmu_entry* %45, i32 0, i32 1
  store %struct.sun4c_mmu_entry* %44, %struct.sun4c_mmu_entry** %46, align 8
  %47 = load %struct.sun4c_mmu_ring*, %struct.sun4c_mmu_ring** %3, align 8
  %48 = getelementptr inbounds %struct.sun4c_mmu_ring, %struct.sun4c_mmu_ring* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  %51 = load %struct.sun4c_mmu_entry*, %struct.sun4c_mmu_entry** %4, align 8
  %52 = call i32 @add_lru(%struct.sun4c_mmu_entry* %51)
  ret void
}

declare dso_local i32 @add_lru(%struct.sun4c_mmu_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
