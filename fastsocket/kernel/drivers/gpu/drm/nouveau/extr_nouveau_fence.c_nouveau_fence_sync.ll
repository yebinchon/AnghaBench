; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_fence.c_nouveau_fence_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_fence.c_nouveau_fence_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_fence = type { %struct.nouveau_channel* }
%struct.nouveau_channel = type { %struct.nouveau_fence_chan* }
%struct.nouveau_fence_chan = type { i32 (%struct.nouveau_fence.0*, %struct.nouveau_channel.1*, %struct.nouveau_channel.1*)* }
%struct.nouveau_fence.0 = type opaque
%struct.nouveau_channel.1 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_fence_sync(%struct.nouveau_fence* %0, %struct.nouveau_channel* %1) #0 {
  %3 = alloca %struct.nouveau_fence*, align 8
  %4 = alloca %struct.nouveau_channel*, align 8
  %5 = alloca %struct.nouveau_fence_chan*, align 8
  %6 = alloca %struct.nouveau_channel*, align 8
  %7 = alloca i32, align 4
  store %struct.nouveau_fence* %0, %struct.nouveau_fence** %3, align 8
  store %struct.nouveau_channel* %1, %struct.nouveau_channel** %4, align 8
  %8 = load %struct.nouveau_channel*, %struct.nouveau_channel** %4, align 8
  %9 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %8, i32 0, i32 0
  %10 = load %struct.nouveau_fence_chan*, %struct.nouveau_fence_chan** %9, align 8
  store %struct.nouveau_fence_chan* %10, %struct.nouveau_fence_chan** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.nouveau_fence*, %struct.nouveau_fence** %3, align 8
  %12 = icmp ne %struct.nouveau_fence* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.nouveau_fence*, %struct.nouveau_fence** %3, align 8
  %15 = getelementptr inbounds %struct.nouveau_fence, %struct.nouveau_fence* %14, i32 0, i32 0
  %16 = load %struct.nouveau_channel*, %struct.nouveau_channel** %15, align 8
  br label %18

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %17, %13
  %19 = phi %struct.nouveau_channel* [ %16, %13 ], [ null, %17 ]
  store %struct.nouveau_channel* %19, %struct.nouveau_channel** %6, align 8
  %20 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %21 = icmp ne %struct.nouveau_channel* %20, null
  br i1 %21, label %22, label %55

22:                                               ; preds = %18
  %23 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %24 = load %struct.nouveau_channel*, %struct.nouveau_channel** %4, align 8
  %25 = icmp ne %struct.nouveau_channel* %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load %struct.nouveau_fence*, %struct.nouveau_fence** %3, align 8
  %28 = call i32 @nouveau_fence_done(%struct.nouveau_fence* %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %26, %22
  %32 = phi i1 [ false, %22 ], [ %30, %26 ]
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %31
  %37 = load %struct.nouveau_fence_chan*, %struct.nouveau_fence_chan** %5, align 8
  %38 = getelementptr inbounds %struct.nouveau_fence_chan, %struct.nouveau_fence_chan* %37, i32 0, i32 0
  %39 = load i32 (%struct.nouveau_fence.0*, %struct.nouveau_channel.1*, %struct.nouveau_channel.1*)*, i32 (%struct.nouveau_fence.0*, %struct.nouveau_channel.1*, %struct.nouveau_channel.1*)** %38, align 8
  %40 = load %struct.nouveau_fence*, %struct.nouveau_fence** %3, align 8
  %41 = bitcast %struct.nouveau_fence* %40 to %struct.nouveau_fence.0*
  %42 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %43 = bitcast %struct.nouveau_channel* %42 to %struct.nouveau_channel.1*
  %44 = load %struct.nouveau_channel*, %struct.nouveau_channel** %4, align 8
  %45 = bitcast %struct.nouveau_channel* %44 to %struct.nouveau_channel.1*
  %46 = call i32 %39(%struct.nouveau_fence.0* %41, %struct.nouveau_channel.1* %43, %struct.nouveau_channel.1* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %36
  %51 = load %struct.nouveau_fence*, %struct.nouveau_fence** %3, align 8
  %52 = call i32 @nouveau_fence_wait(%struct.nouveau_fence* %51, i32 1, i32 0)
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %50, %36
  br label %54

54:                                               ; preds = %53, %31
  br label %55

55:                                               ; preds = %54, %18
  %56 = load i32, i32* %7, align 4
  ret i32 %56
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nouveau_fence_done(%struct.nouveau_fence*) #1

declare dso_local i32 @nouveau_fence_wait(%struct.nouveau_fence*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
