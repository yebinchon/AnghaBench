; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_cleanup_memtype_use.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_cleanup_memtype_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i32, i32, i32, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.ttm_buffer_object*, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ttm_buffer_object*)* @ttm_bo_cleanup_memtype_use to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ttm_bo_cleanup_memtype_use(%struct.ttm_buffer_object* %0) #0 {
  %2 = alloca %struct.ttm_buffer_object*, align 8
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %2, align 8
  %3 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %4 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %3, i32 0, i32 4
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32 (%struct.ttm_buffer_object*, i32*)*, i32 (%struct.ttm_buffer_object*, i32*)** %8, align 8
  %10 = icmp ne i32 (%struct.ttm_buffer_object*, i32*)* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %13 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %12, i32 0, i32 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32 (%struct.ttm_buffer_object*, i32*)*, i32 (%struct.ttm_buffer_object*, i32*)** %17, align 8
  %19 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %20 = call i32 %18(%struct.ttm_buffer_object* %19, i32* null)
  br label %21

21:                                               ; preds = %11, %1
  %22 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %23 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %21
  %27 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %28 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @ttm_tt_unbind(i32* %29)
  %31 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %32 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @ttm_tt_destroy(i32* %33)
  %35 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %36 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %35, i32 0, i32 3
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %26, %21
  %38 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %39 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %40 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %39, i32 0, i32 2
  %41 = call i32 @ttm_bo_mem_put(%struct.ttm_buffer_object* %38, i32* %40)
  %42 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %43 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %42, i32 0, i32 1
  %44 = call i32 @atomic_set(i32* %43, i32 0)
  %45 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %46 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %45, i32 0, i32 0
  %47 = call i32 @wake_up_all(i32* %46)
  %48 = call i32 (...) @smp_mb__before_atomic_dec()
  ret void
}

declare dso_local i32 @ttm_tt_unbind(i32*) #1

declare dso_local i32 @ttm_tt_destroy(i32*) #1

declare dso_local i32 @ttm_bo_mem_put(%struct.ttm_buffer_object*, i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @smp_mb__before_atomic_dec(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
