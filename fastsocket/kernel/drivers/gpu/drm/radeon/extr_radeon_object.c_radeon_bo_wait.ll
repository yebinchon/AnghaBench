; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_object.c_radeon_bo_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_object.c_radeon_bo_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_bo = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i64, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_bo_wait(%struct.radeon_bo* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_bo*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.radeon_bo* %0, %struct.radeon_bo** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.radeon_bo*, %struct.radeon_bo** %5, align 8
  %10 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %9, i32 0, i32 0
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @ttm_bo_reserve(%struct.TYPE_8__* %10, i32 1, i32 %11, i32 0, i32 0)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %4, align 4
  br label %58

20:                                               ; preds = %3
  %21 = load %struct.radeon_bo*, %struct.radeon_bo** %5, align 8
  %22 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = call i32 @spin_lock(i32* %25)
  %27 = load i32*, i32** %6, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %20
  %30 = load %struct.radeon_bo*, %struct.radeon_bo** %5, align 8
  %31 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32*, i32** %6, align 8
  store i32 %34, i32* %35, align 4
  br label %36

36:                                               ; preds = %29, %20
  %37 = load %struct.radeon_bo*, %struct.radeon_bo** %5, align 8
  %38 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load %struct.radeon_bo*, %struct.radeon_bo** %5, align 8
  %44 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %43, i32 0, i32 0
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @ttm_bo_wait(%struct.TYPE_8__* %44, i32 1, i32 1, i32 %45)
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %42, %36
  %48 = load %struct.radeon_bo*, %struct.radeon_bo** %5, align 8
  %49 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = call i32 @spin_unlock(i32* %52)
  %54 = load %struct.radeon_bo*, %struct.radeon_bo** %5, align 8
  %55 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %54, i32 0, i32 0
  %56 = call i32 @ttm_bo_unreserve(%struct.TYPE_8__* %55)
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %47, %18
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @ttm_bo_reserve(%struct.TYPE_8__*, i32, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ttm_bo_wait(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ttm_bo_unreserve(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
