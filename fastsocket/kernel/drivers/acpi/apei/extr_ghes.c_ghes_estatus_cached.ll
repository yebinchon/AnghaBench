; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/apei/extr_ghes.c_ghes_estatus_cached.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/apei/extr_ghes.c_ghes_estatus_cached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_hest_generic_status = type { i32 }
%struct.ghes_estatus_cache = type { i64, i64, i32 }

@GHES_ESTATUS_CACHES_SIZE = common dso_local global i32 0, align 4
@ghes_estatus_caches = common dso_local global i32* null, align 8
@GHES_ESTATUS_IN_CACHE_MAX_NSEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_hest_generic_status*)* @ghes_estatus_cached to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ghes_estatus_cached(%struct.acpi_hest_generic_status* %0) #0 {
  %2 = alloca %struct.acpi_hest_generic_status*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.ghes_estatus_cache*, align 8
  %8 = alloca %struct.acpi_hest_generic_status*, align 8
  store %struct.acpi_hest_generic_status* %0, %struct.acpi_hest_generic_status** %2, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.acpi_hest_generic_status*, %struct.acpi_hest_generic_status** %2, align 8
  %10 = call i64 @apei_estatus_len(%struct.acpi_hest_generic_status* %9)
  store i64 %10, i64* %3, align 8
  %11 = call i32 (...) @rcu_read_lock()
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %56, %1
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @GHES_ESTATUS_CACHES_SIZE, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %59

16:                                               ; preds = %12
  %17 = load i32*, i32** @ghes_estatus_caches, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.ghes_estatus_cache* @rcu_dereference(i32 %21)
  store %struct.ghes_estatus_cache* %22, %struct.ghes_estatus_cache** %7, align 8
  %23 = load %struct.ghes_estatus_cache*, %struct.ghes_estatus_cache** %7, align 8
  %24 = icmp eq %struct.ghes_estatus_cache* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  br label %56

26:                                               ; preds = %16
  %27 = load i64, i64* %3, align 8
  %28 = load %struct.ghes_estatus_cache*, %struct.ghes_estatus_cache** %7, align 8
  %29 = getelementptr inbounds %struct.ghes_estatus_cache, %struct.ghes_estatus_cache* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %56

33:                                               ; preds = %26
  %34 = load %struct.ghes_estatus_cache*, %struct.ghes_estatus_cache** %7, align 8
  %35 = call %struct.acpi_hest_generic_status* @GHES_ESTATUS_FROM_CACHE(%struct.ghes_estatus_cache* %34)
  store %struct.acpi_hest_generic_status* %35, %struct.acpi_hest_generic_status** %8, align 8
  %36 = load %struct.acpi_hest_generic_status*, %struct.acpi_hest_generic_status** %2, align 8
  %37 = load %struct.acpi_hest_generic_status*, %struct.acpi_hest_generic_status** %8, align 8
  %38 = load i64, i64* %3, align 8
  %39 = call i64 @memcmp(%struct.acpi_hest_generic_status* %36, %struct.acpi_hest_generic_status* %37, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %56

42:                                               ; preds = %33
  %43 = load %struct.ghes_estatus_cache*, %struct.ghes_estatus_cache** %7, align 8
  %44 = getelementptr inbounds %struct.ghes_estatus_cache, %struct.ghes_estatus_cache* %43, i32 0, i32 2
  %45 = call i32 @atomic_inc(i32* %44)
  %46 = call i64 (...) @sched_clock()
  store i64 %46, i64* %6, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load %struct.ghes_estatus_cache*, %struct.ghes_estatus_cache** %7, align 8
  %49 = getelementptr inbounds %struct.ghes_estatus_cache, %struct.ghes_estatus_cache* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = sub i64 %47, %50
  %52 = load i64, i64* @GHES_ESTATUS_IN_CACHE_MAX_NSEC, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  store i32 1, i32* %5, align 4
  br label %55

55:                                               ; preds = %54, %42
  br label %59

56:                                               ; preds = %41, %32, %25
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %12

59:                                               ; preds = %55, %12
  %60 = call i32 (...) @rcu_read_unlock()
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i64 @apei_estatus_len(%struct.acpi_hest_generic_status*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ghes_estatus_cache* @rcu_dereference(i32) #1

declare dso_local %struct.acpi_hest_generic_status* @GHES_ESTATUS_FROM_CACHE(%struct.ghes_estatus_cache*) #1

declare dso_local i64 @memcmp(%struct.acpi_hest_generic_status*, %struct.acpi_hest_generic_status*, i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @sched_clock(...) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
