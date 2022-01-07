; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_intel-gtt.c_intel_fake_agp_alloc_by_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_intel-gtt.c_intel_fake_agp_alloc_by_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.agp_memory = type { i32, i64, i64 }

@AGP_DCACHE_MEMORY = common dso_local global i32 0, align 4
@INTEL_GTT_GEN = common dso_local global i32 0, align 4
@intel_private = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@AGP_PHYS_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.agp_memory* (i64, i32)* @intel_fake_agp_alloc_by_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.agp_memory* @intel_fake_agp_alloc_by_type(i64 %0, i32 %1) #0 {
  %3 = alloca %struct.agp_memory*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.agp_memory*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @AGP_DCACHE_MEMORY, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %35

10:                                               ; preds = %2
  %11 = load i32, i32* @INTEL_GTT_GEN, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %35

13:                                               ; preds = %10
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intel_private, i32 0, i32 0), align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store %struct.agp_memory* null, %struct.agp_memory** %3, align 8
  br label %44

18:                                               ; preds = %13
  %19 = call %struct.agp_memory* @agp_create_memory(i32 1)
  store %struct.agp_memory* %19, %struct.agp_memory** %6, align 8
  %20 = load %struct.agp_memory*, %struct.agp_memory** %6, align 8
  %21 = icmp eq %struct.agp_memory* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store %struct.agp_memory* null, %struct.agp_memory** %3, align 8
  br label %44

23:                                               ; preds = %18
  %24 = load i32, i32* @AGP_DCACHE_MEMORY, align 4
  %25 = load %struct.agp_memory*, %struct.agp_memory** %6, align 8
  %26 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i64, i64* %4, align 8
  %28 = load %struct.agp_memory*, %struct.agp_memory** %6, align 8
  %29 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  %30 = load %struct.agp_memory*, %struct.agp_memory** %6, align 8
  %31 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %30, i32 0, i32 2
  store i64 0, i64* %31, align 8
  %32 = load %struct.agp_memory*, %struct.agp_memory** %6, align 8
  %33 = call i32 @agp_free_page_array(%struct.agp_memory* %32)
  %34 = load %struct.agp_memory*, %struct.agp_memory** %6, align 8
  store %struct.agp_memory* %34, %struct.agp_memory** %3, align 8
  br label %44

35:                                               ; preds = %10, %2
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @AGP_PHYS_MEMORY, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i64, i64* %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call %struct.agp_memory* @alloc_agpphysmem_i8xx(i64 %40, i32 %41)
  store %struct.agp_memory* %42, %struct.agp_memory** %3, align 8
  br label %44

43:                                               ; preds = %35
  store %struct.agp_memory* null, %struct.agp_memory** %3, align 8
  br label %44

44:                                               ; preds = %43, %39, %23, %22, %17
  %45 = load %struct.agp_memory*, %struct.agp_memory** %3, align 8
  ret %struct.agp_memory* %45
}

declare dso_local %struct.agp_memory* @agp_create_memory(i32) #1

declare dso_local i32 @agp_free_page_array(%struct.agp_memory*) #1

declare dso_local %struct.agp_memory* @alloc_agpphysmem_i8xx(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
