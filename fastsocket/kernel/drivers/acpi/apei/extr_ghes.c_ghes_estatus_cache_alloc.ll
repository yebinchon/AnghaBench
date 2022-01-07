; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/apei/extr_ghes.c_ghes_estatus_cache_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/apei/extr_ghes.c_ghes_estatus_cache_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ghes_estatus_cache = type { i32, %struct.acpi_hest_generic*, i32, i32 }
%struct.acpi_hest_generic = type { i32 }
%struct.acpi_hest_generic_status = type { i32 }

@ghes_estatus_cache_alloced = common dso_local global i32 0, align 4
@GHES_ESTATUS_CACHE_ALLOCED_MAX = common dso_local global i32 0, align 4
@ghes_estatus_pool = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ghes_estatus_cache* (%struct.acpi_hest_generic*, %struct.acpi_hest_generic_status*)* @ghes_estatus_cache_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ghes_estatus_cache* @ghes_estatus_cache_alloc(%struct.acpi_hest_generic* %0, %struct.acpi_hest_generic_status* %1) #0 {
  %3 = alloca %struct.ghes_estatus_cache*, align 8
  %4 = alloca %struct.acpi_hest_generic*, align 8
  %5 = alloca %struct.acpi_hest_generic_status*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ghes_estatus_cache*, align 8
  %10 = alloca %struct.acpi_hest_generic_status*, align 8
  store %struct.acpi_hest_generic* %0, %struct.acpi_hest_generic** %4, align 8
  store %struct.acpi_hest_generic_status* %1, %struct.acpi_hest_generic_status** %5, align 8
  %11 = call i32 @atomic_add_return(i32 1, i32* @ghes_estatus_cache_alloced)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @GHES_ESTATUS_CACHE_ALLOCED_MAX, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = call i32 @atomic_dec(i32* @ghes_estatus_cache_alloced)
  store %struct.ghes_estatus_cache* null, %struct.ghes_estatus_cache** %3, align 8
  br label %51

17:                                               ; preds = %2
  %18 = load %struct.acpi_hest_generic_status*, %struct.acpi_hest_generic_status** %5, align 8
  %19 = call i32 @apei_estatus_len(%struct.acpi_hest_generic_status* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @GHES_ESTATUS_CACHE_LEN(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* @ghes_estatus_pool, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i64 @gen_pool_alloc(i32 %22, i32 %23)
  %25 = inttoptr i64 %24 to i8*
  %26 = bitcast i8* %25 to %struct.ghes_estatus_cache*
  store %struct.ghes_estatus_cache* %26, %struct.ghes_estatus_cache** %9, align 8
  %27 = load %struct.ghes_estatus_cache*, %struct.ghes_estatus_cache** %9, align 8
  %28 = icmp ne %struct.ghes_estatus_cache* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %17
  %30 = call i32 @atomic_dec(i32* @ghes_estatus_cache_alloced)
  store %struct.ghes_estatus_cache* null, %struct.ghes_estatus_cache** %3, align 8
  br label %51

31:                                               ; preds = %17
  %32 = load %struct.ghes_estatus_cache*, %struct.ghes_estatus_cache** %9, align 8
  %33 = call %struct.acpi_hest_generic_status* @GHES_ESTATUS_FROM_CACHE(%struct.ghes_estatus_cache* %32)
  store %struct.acpi_hest_generic_status* %33, %struct.acpi_hest_generic_status** %10, align 8
  %34 = load %struct.acpi_hest_generic_status*, %struct.acpi_hest_generic_status** %10, align 8
  %35 = load %struct.acpi_hest_generic_status*, %struct.acpi_hest_generic_status** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @memcpy(%struct.acpi_hest_generic_status* %34, %struct.acpi_hest_generic_status* %35, i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.ghes_estatus_cache*, %struct.ghes_estatus_cache** %9, align 8
  %40 = getelementptr inbounds %struct.ghes_estatus_cache, %struct.ghes_estatus_cache* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load %struct.ghes_estatus_cache*, %struct.ghes_estatus_cache** %9, align 8
  %42 = getelementptr inbounds %struct.ghes_estatus_cache, %struct.ghes_estatus_cache* %41, i32 0, i32 2
  %43 = call i32 @atomic_set(i32* %42, i32 0)
  %44 = load %struct.acpi_hest_generic*, %struct.acpi_hest_generic** %4, align 8
  %45 = load %struct.ghes_estatus_cache*, %struct.ghes_estatus_cache** %9, align 8
  %46 = getelementptr inbounds %struct.ghes_estatus_cache, %struct.ghes_estatus_cache* %45, i32 0, i32 1
  store %struct.acpi_hest_generic* %44, %struct.acpi_hest_generic** %46, align 8
  %47 = call i32 (...) @sched_clock()
  %48 = load %struct.ghes_estatus_cache*, %struct.ghes_estatus_cache** %9, align 8
  %49 = getelementptr inbounds %struct.ghes_estatus_cache, %struct.ghes_estatus_cache* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.ghes_estatus_cache*, %struct.ghes_estatus_cache** %9, align 8
  store %struct.ghes_estatus_cache* %50, %struct.ghes_estatus_cache** %3, align 8
  br label %51

51:                                               ; preds = %31, %29, %15
  %52 = load %struct.ghes_estatus_cache*, %struct.ghes_estatus_cache** %3, align 8
  ret %struct.ghes_estatus_cache* %52
}

declare dso_local i32 @atomic_add_return(i32, i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @apei_estatus_len(%struct.acpi_hest_generic_status*) #1

declare dso_local i32 @GHES_ESTATUS_CACHE_LEN(i32) #1

declare dso_local i64 @gen_pool_alloc(i32, i32) #1

declare dso_local %struct.acpi_hest_generic_status* @GHES_ESTATUS_FROM_CACHE(%struct.ghes_estatus_cache*) #1

declare dso_local i32 @memcpy(%struct.acpi_hest_generic_status*, %struct.acpi_hest_generic_status*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @sched_clock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
