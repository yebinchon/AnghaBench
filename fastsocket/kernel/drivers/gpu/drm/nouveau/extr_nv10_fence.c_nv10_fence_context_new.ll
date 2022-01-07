; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv10_fence.c_nv10_fence_context_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv10_fence.c_nv10_fence_context_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_channel = type { %struct.nv10_fence_chan* }
%struct.nv10_fence_chan = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nv10_fence_emit = common dso_local global i32 0, align 4
@nv10_fence_read = common dso_local global i32 0, align 4
@nv10_fence_sync = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv10_fence_context_new(%struct.nouveau_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_channel*, align 8
  %4 = alloca %struct.nv10_fence_chan*, align 8
  store %struct.nouveau_channel* %0, %struct.nouveau_channel** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.nv10_fence_chan* @kzalloc(i32 12, i32 %5)
  %7 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %8 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %7, i32 0, i32 0
  store %struct.nv10_fence_chan* %6, %struct.nv10_fence_chan** %8, align 8
  store %struct.nv10_fence_chan* %6, %struct.nv10_fence_chan** %4, align 8
  %9 = load %struct.nv10_fence_chan*, %struct.nv10_fence_chan** %4, align 8
  %10 = icmp ne %struct.nv10_fence_chan* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %30

14:                                               ; preds = %1
  %15 = load %struct.nv10_fence_chan*, %struct.nv10_fence_chan** %4, align 8
  %16 = getelementptr inbounds %struct.nv10_fence_chan, %struct.nv10_fence_chan* %15, i32 0, i32 0
  %17 = call i32 @nouveau_fence_context_new(%struct.TYPE_2__* %16)
  %18 = load i32, i32* @nv10_fence_emit, align 4
  %19 = load %struct.nv10_fence_chan*, %struct.nv10_fence_chan** %4, align 8
  %20 = getelementptr inbounds %struct.nv10_fence_chan, %struct.nv10_fence_chan* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* @nv10_fence_read, align 4
  %23 = load %struct.nv10_fence_chan*, %struct.nv10_fence_chan** %4, align 8
  %24 = getelementptr inbounds %struct.nv10_fence_chan, %struct.nv10_fence_chan* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* @nv10_fence_sync, align 4
  %27 = load %struct.nv10_fence_chan*, %struct.nv10_fence_chan** %4, align 8
  %28 = getelementptr inbounds %struct.nv10_fence_chan, %struct.nv10_fence_chan* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %14, %11
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.nv10_fence_chan* @kzalloc(i32, i32) #1

declare dso_local i32 @nouveau_fence_context_new(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
