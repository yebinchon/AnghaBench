; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_mm.c_drm_mm_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_mm.c_drm_mm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_mm = type { i32*, i32, %struct.TYPE_2__, i32, i64, i64, i32 }
%struct.TYPE_2__ = type { i32, i64, i64, i32, %struct.drm_mm*, i64, i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_mm_init(%struct.drm_mm* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.drm_mm*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.drm_mm* %0, %struct.drm_mm** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.drm_mm*, %struct.drm_mm** %4, align 8
  %8 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %7, i32 0, i32 1
  %9 = call i32 @INIT_LIST_HEAD(i32* %8)
  %10 = load %struct.drm_mm*, %struct.drm_mm** %4, align 8
  %11 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %10, i32 0, i32 6
  %12 = call i32 @INIT_LIST_HEAD(i32* %11)
  %13 = load %struct.drm_mm*, %struct.drm_mm** %4, align 8
  %14 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %13, i32 0, i32 5
  store i64 0, i64* %14, align 8
  %15 = load %struct.drm_mm*, %struct.drm_mm** %4, align 8
  %16 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %15, i32 0, i32 4
  store i64 0, i64* %16, align 8
  %17 = load %struct.drm_mm*, %struct.drm_mm** %4, align 8
  %18 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %17, i32 0, i32 3
  %19 = call i32 @spin_lock_init(i32* %18)
  %20 = load %struct.drm_mm*, %struct.drm_mm** %4, align 8
  %21 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 8
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.drm_mm*, %struct.drm_mm** %4, align 8
  %25 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.drm_mm*, %struct.drm_mm** %4, align 8
  %29 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.drm_mm*, %struct.drm_mm** %4, align 8
  %32 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 7
  store i64 0, i64* %33, align 8
  %34 = load %struct.drm_mm*, %struct.drm_mm** %4, align 8
  %35 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 6
  store i64 0, i64* %36, align 8
  %37 = load %struct.drm_mm*, %struct.drm_mm** %4, align 8
  %38 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 5
  store i64 0, i64* %39, align 8
  %40 = load %struct.drm_mm*, %struct.drm_mm** %4, align 8
  %41 = load %struct.drm_mm*, %struct.drm_mm** %4, align 8
  %42 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 4
  store %struct.drm_mm* %40, %struct.drm_mm** %43, align 8
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* %6, align 8
  %46 = add i64 %44, %45
  %47 = load %struct.drm_mm*, %struct.drm_mm** %4, align 8
  %48 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i64 %46, i64* %49, align 8
  %50 = load i64, i64* %5, align 8
  %51 = load %struct.drm_mm*, %struct.drm_mm** %4, align 8
  %52 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = sub i64 %50, %54
  %56 = load %struct.drm_mm*, %struct.drm_mm** %4, align 8
  %57 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  store i64 %55, i64* %58, align 8
  %59 = load %struct.drm_mm*, %struct.drm_mm** %4, align 8
  %60 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 3
  %62 = load %struct.drm_mm*, %struct.drm_mm** %4, align 8
  %63 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %62, i32 0, i32 1
  %64 = call i32 @list_add_tail(i32* %61, i32* %63)
  %65 = load %struct.drm_mm*, %struct.drm_mm** %4, align 8
  %66 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %65, i32 0, i32 0
  store i32* null, i32** %66, align 8
  ret i32 0
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
