; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_lock.c_drm_notifier.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_lock.c_drm_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_sigdata = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@_DRM_LOCK_CONT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @drm_notifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_notifier(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.drm_sigdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.drm_sigdata*
  store %struct.drm_sigdata* %9, %struct.drm_sigdata** %4, align 8
  %10 = load %struct.drm_sigdata*, %struct.drm_sigdata** %4, align 8
  %11 = getelementptr inbounds %struct.drm_sigdata, %struct.drm_sigdata* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %33

14:                                               ; preds = %1
  %15 = load %struct.drm_sigdata*, %struct.drm_sigdata** %4, align 8
  %16 = getelementptr inbounds %struct.drm_sigdata, %struct.drm_sigdata* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @_DRM_LOCK_IS_HELD(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %14
  %23 = load %struct.drm_sigdata*, %struct.drm_sigdata** %4, align 8
  %24 = getelementptr inbounds %struct.drm_sigdata, %struct.drm_sigdata* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @_DRM_LOCKING_CONTEXT(i32 %27)
  %29 = load %struct.drm_sigdata*, %struct.drm_sigdata** %4, align 8
  %30 = getelementptr inbounds %struct.drm_sigdata, %struct.drm_sigdata* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %22, %14, %1
  store i32 1, i32* %2, align 4
  br label %56

34:                                               ; preds = %22
  br label %35

35:                                               ; preds = %51, %34
  %36 = load %struct.drm_sigdata*, %struct.drm_sigdata** %4, align 8
  %37 = getelementptr inbounds %struct.drm_sigdata, %struct.drm_sigdata* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @_DRM_LOCK_CONT, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %6, align 4
  %44 = load %struct.drm_sigdata*, %struct.drm_sigdata** %4, align 8
  %45 = getelementptr inbounds %struct.drm_sigdata, %struct.drm_sigdata* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @cmpxchg(i32* %47, i32 %48, i32 %49)
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %35
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %35, label %55

55:                                               ; preds = %51
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %33
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @_DRM_LOCK_IS_HELD(i32) #1

declare dso_local i64 @_DRM_LOCKING_CONTEXT(i32) #1

declare dso_local i32 @cmpxchg(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
