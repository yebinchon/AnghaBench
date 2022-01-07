; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/apei/extr_ghes.c_ghes_estatus_cache_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/apei/extr_ghes.c_ghes_estatus_cache_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_hest_generic = type { i32 }
%struct.acpi_hest_generic_status = type { i32 }
%struct.ghes_estatus_cache = type { i64, i32, i32 }

@GHES_ESTATUS_CACHES_SIZE = common dso_local global i32 0, align 4
@ghes_estatus_caches = common dso_local global i32* null, align 8
@GHES_ESTATUS_IN_CACHE_MAX_NSEC = common dso_local global i64 0, align 8
@ghes_estatus_cache_rcu_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_hest_generic*, %struct.acpi_hest_generic_status*)* @ghes_estatus_cache_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ghes_estatus_cache_add(%struct.acpi_hest_generic* %0, %struct.acpi_hest_generic_status* %1) #0 {
  %3 = alloca %struct.acpi_hest_generic*, align 8
  %4 = alloca %struct.acpi_hest_generic_status*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ghes_estatus_cache*, align 8
  %13 = alloca %struct.ghes_estatus_cache*, align 8
  %14 = alloca %struct.ghes_estatus_cache*, align 8
  store %struct.acpi_hest_generic* %0, %struct.acpi_hest_generic** %3, align 8
  store %struct.acpi_hest_generic_status* %1, %struct.acpi_hest_generic_status** %4, align 8
  store i32 -1, i32* %6, align 4
  store i64 0, i64* %11, align 8
  store %struct.ghes_estatus_cache* null, %struct.ghes_estatus_cache** %13, align 8
  %15 = load %struct.acpi_hest_generic*, %struct.acpi_hest_generic** %3, align 8
  %16 = load %struct.acpi_hest_generic_status*, %struct.acpi_hest_generic_status** %4, align 8
  %17 = call %struct.ghes_estatus_cache* @ghes_estatus_cache_alloc(%struct.acpi_hest_generic* %15, %struct.acpi_hest_generic_status* %16)
  store %struct.ghes_estatus_cache* %17, %struct.ghes_estatus_cache** %14, align 8
  %18 = load %struct.ghes_estatus_cache*, %struct.ghes_estatus_cache** %14, align 8
  %19 = icmp eq %struct.ghes_estatus_cache* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %99

21:                                               ; preds = %2
  %22 = call i32 (...) @rcu_read_lock()
  %23 = call i64 (...) @sched_clock()
  store i64 %23, i64* %8, align 8
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %68, %21
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @GHES_ESTATUS_CACHES_SIZE, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %71

28:                                               ; preds = %24
  %29 = load i32*, i32** @ghes_estatus_caches, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.ghes_estatus_cache* @rcu_dereference(i32 %33)
  store %struct.ghes_estatus_cache* %34, %struct.ghes_estatus_cache** %12, align 8
  %35 = load %struct.ghes_estatus_cache*, %struct.ghes_estatus_cache** %12, align 8
  %36 = icmp eq %struct.ghes_estatus_cache* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %6, align 4
  store %struct.ghes_estatus_cache* null, %struct.ghes_estatus_cache** %13, align 8
  br label %71

39:                                               ; preds = %28
  %40 = load i64, i64* %8, align 8
  %41 = load %struct.ghes_estatus_cache*, %struct.ghes_estatus_cache** %12, align 8
  %42 = getelementptr inbounds %struct.ghes_estatus_cache, %struct.ghes_estatus_cache* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = sub i64 %40, %43
  store i64 %44, i64* %9, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* @GHES_ESTATUS_IN_CACHE_MAX_NSEC, align 8
  %47 = icmp uge i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %6, align 4
  %50 = load %struct.ghes_estatus_cache*, %struct.ghes_estatus_cache** %12, align 8
  store %struct.ghes_estatus_cache* %50, %struct.ghes_estatus_cache** %13, align 8
  br label %71

51:                                               ; preds = %39
  %52 = load %struct.ghes_estatus_cache*, %struct.ghes_estatus_cache** %12, align 8
  %53 = getelementptr inbounds %struct.ghes_estatus_cache, %struct.ghes_estatus_cache* %52, i32 0, i32 2
  %54 = call i32 @atomic_read(i32* %53)
  store i32 %54, i32* %7, align 4
  %55 = load i64, i64* %9, align 8
  store i64 %55, i64* %10, align 8
  %56 = load i64, i64* %10, align 8
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  %59 = call i32 @do_div(i64 %56, i32 %58)
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* %11, align 8
  %62 = icmp ugt i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %51
  %64 = load i64, i64* %10, align 8
  store i64 %64, i64* %11, align 8
  %65 = load i32, i32* %5, align 4
  store i32 %65, i32* %6, align 4
  %66 = load %struct.ghes_estatus_cache*, %struct.ghes_estatus_cache** %12, align 8
  store %struct.ghes_estatus_cache* %66, %struct.ghes_estatus_cache** %13, align 8
  br label %67

67:                                               ; preds = %63, %51
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %24

71:                                               ; preds = %48, %37, %24
  %72 = call i32 (...) @smp_wmb()
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, -1
  br i1 %74, label %75, label %94

75:                                               ; preds = %71
  %76 = load i32*, i32** @ghes_estatus_caches, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load %struct.ghes_estatus_cache*, %struct.ghes_estatus_cache** %13, align 8
  %81 = load %struct.ghes_estatus_cache*, %struct.ghes_estatus_cache** %14, align 8
  %82 = call %struct.ghes_estatus_cache* @cmpxchg(i32* %79, %struct.ghes_estatus_cache* %80, %struct.ghes_estatus_cache* %81)
  %83 = load %struct.ghes_estatus_cache*, %struct.ghes_estatus_cache** %13, align 8
  %84 = icmp eq %struct.ghes_estatus_cache* %82, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %75
  %86 = load %struct.ghes_estatus_cache*, %struct.ghes_estatus_cache** %13, align 8
  %87 = icmp ne %struct.ghes_estatus_cache* %86, null
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load %struct.ghes_estatus_cache*, %struct.ghes_estatus_cache** %13, align 8
  %90 = getelementptr inbounds %struct.ghes_estatus_cache, %struct.ghes_estatus_cache* %89, i32 0, i32 1
  %91 = load i32, i32* @ghes_estatus_cache_rcu_free, align 4
  %92 = call i32 @call_rcu(i32* %90, i32 %91)
  br label %93

93:                                               ; preds = %88, %85
  br label %97

94:                                               ; preds = %75, %71
  %95 = load %struct.ghes_estatus_cache*, %struct.ghes_estatus_cache** %14, align 8
  %96 = call i32 @ghes_estatus_cache_free(%struct.ghes_estatus_cache* %95)
  br label %97

97:                                               ; preds = %94, %93
  %98 = call i32 (...) @rcu_read_unlock()
  br label %99

99:                                               ; preds = %97, %20
  ret void
}

declare dso_local %struct.ghes_estatus_cache* @ghes_estatus_cache_alloc(%struct.acpi_hest_generic*, %struct.acpi_hest_generic_status*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i64 @sched_clock(...) #1

declare dso_local %struct.ghes_estatus_cache* @rcu_dereference(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @do_div(i64, i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local %struct.ghes_estatus_cache* @cmpxchg(i32*, %struct.ghes_estatus_cache*, %struct.ghes_estatus_cache*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

declare dso_local i32 @ghes_estatus_cache_free(%struct.ghes_estatus_cache*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
