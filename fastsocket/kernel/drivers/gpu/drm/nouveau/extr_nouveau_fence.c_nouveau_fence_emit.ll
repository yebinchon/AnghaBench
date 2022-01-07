; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_fence.c_nouveau_fence_emit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_fence.c_nouveau_fence_emit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_fence = type { i32, i32, i64, i64, %struct.nouveau_channel* }
%struct.nouveau_channel = type { %struct.nouveau_fence_chan* }
%struct.nouveau_fence_chan = type { i32 (%struct.nouveau_fence.0*)*, i32, i32, i64 }
%struct.nouveau_fence.0 = type opaque

@jiffies = common dso_local global i64 0, align 8
@DRM_HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_fence_emit(%struct.nouveau_fence* %0, %struct.nouveau_channel* %1) #0 {
  %3 = alloca %struct.nouveau_fence*, align 8
  %4 = alloca %struct.nouveau_channel*, align 8
  %5 = alloca %struct.nouveau_fence_chan*, align 8
  %6 = alloca i32, align 4
  store %struct.nouveau_fence* %0, %struct.nouveau_fence** %3, align 8
  store %struct.nouveau_channel* %1, %struct.nouveau_channel** %4, align 8
  %7 = load %struct.nouveau_channel*, %struct.nouveau_channel** %4, align 8
  %8 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %7, i32 0, i32 0
  %9 = load %struct.nouveau_fence_chan*, %struct.nouveau_fence_chan** %8, align 8
  store %struct.nouveau_fence_chan* %9, %struct.nouveau_fence_chan** %5, align 8
  %10 = load %struct.nouveau_channel*, %struct.nouveau_channel** %4, align 8
  %11 = load %struct.nouveau_fence*, %struct.nouveau_fence** %3, align 8
  %12 = getelementptr inbounds %struct.nouveau_fence, %struct.nouveau_fence* %11, i32 0, i32 4
  store %struct.nouveau_channel* %10, %struct.nouveau_channel** %12, align 8
  %13 = load i64, i64* @jiffies, align 8
  %14 = load i32, i32* @DRM_HZ, align 4
  %15 = mul nsw i32 3, %14
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %13, %16
  %18 = load %struct.nouveau_fence*, %struct.nouveau_fence** %3, align 8
  %19 = getelementptr inbounds %struct.nouveau_fence, %struct.nouveau_fence* %18, i32 0, i32 3
  store i64 %17, i64* %19, align 8
  %20 = load %struct.nouveau_fence_chan*, %struct.nouveau_fence_chan** %5, align 8
  %21 = getelementptr inbounds %struct.nouveau_fence_chan, %struct.nouveau_fence_chan* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %21, align 8
  %24 = load %struct.nouveau_fence*, %struct.nouveau_fence** %3, align 8
  %25 = getelementptr inbounds %struct.nouveau_fence, %struct.nouveau_fence* %24, i32 0, i32 2
  store i64 %23, i64* %25, align 8
  %26 = load %struct.nouveau_fence_chan*, %struct.nouveau_fence_chan** %5, align 8
  %27 = getelementptr inbounds %struct.nouveau_fence_chan, %struct.nouveau_fence_chan* %26, i32 0, i32 0
  %28 = load i32 (%struct.nouveau_fence.0*)*, i32 (%struct.nouveau_fence.0*)** %27, align 8
  %29 = load %struct.nouveau_fence*, %struct.nouveau_fence** %3, align 8
  %30 = bitcast %struct.nouveau_fence* %29 to %struct.nouveau_fence.0*
  %31 = call i32 %28(%struct.nouveau_fence.0* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %49, label %34

34:                                               ; preds = %2
  %35 = load %struct.nouveau_fence*, %struct.nouveau_fence** %3, align 8
  %36 = getelementptr inbounds %struct.nouveau_fence, %struct.nouveau_fence* %35, i32 0, i32 1
  %37 = call i32 @kref_get(i32* %36)
  %38 = load %struct.nouveau_fence_chan*, %struct.nouveau_fence_chan** %5, align 8
  %39 = getelementptr inbounds %struct.nouveau_fence_chan, %struct.nouveau_fence_chan* %38, i32 0, i32 1
  %40 = call i32 @spin_lock(i32* %39)
  %41 = load %struct.nouveau_fence*, %struct.nouveau_fence** %3, align 8
  %42 = getelementptr inbounds %struct.nouveau_fence, %struct.nouveau_fence* %41, i32 0, i32 0
  %43 = load %struct.nouveau_fence_chan*, %struct.nouveau_fence_chan** %5, align 8
  %44 = getelementptr inbounds %struct.nouveau_fence_chan, %struct.nouveau_fence_chan* %43, i32 0, i32 2
  %45 = call i32 @list_add_tail(i32* %42, i32* %44)
  %46 = load %struct.nouveau_fence_chan*, %struct.nouveau_fence_chan** %5, align 8
  %47 = getelementptr inbounds %struct.nouveau_fence_chan, %struct.nouveau_fence_chan* %46, i32 0, i32 1
  %48 = call i32 @spin_unlock(i32* %47)
  br label %49

49:                                               ; preds = %34, %2
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
