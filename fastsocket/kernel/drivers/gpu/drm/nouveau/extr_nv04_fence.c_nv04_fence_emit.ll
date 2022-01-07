; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv04_fence.c_nv04_fence_emit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv04_fence.c_nv04_fence_emit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_fence = type { i32, %struct.nouveau_channel* }
%struct.nouveau_channel = type { i32 }

@NvSubSw = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_fence*)* @nv04_fence_emit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv04_fence_emit(%struct.nouveau_fence* %0) #0 {
  %2 = alloca %struct.nouveau_fence*, align 8
  %3 = alloca %struct.nouveau_channel*, align 8
  %4 = alloca i32, align 4
  store %struct.nouveau_fence* %0, %struct.nouveau_fence** %2, align 8
  %5 = load %struct.nouveau_fence*, %struct.nouveau_fence** %2, align 8
  %6 = getelementptr inbounds %struct.nouveau_fence, %struct.nouveau_fence* %5, i32 0, i32 1
  %7 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  store %struct.nouveau_channel* %7, %struct.nouveau_channel** %3, align 8
  %8 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %9 = call i32 @RING_SPACE(%struct.nouveau_channel* %8, i32 2)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %1
  %13 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %14 = load i32, i32* @NvSubSw, align 4
  %15 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %13, i32 %14, i32 336, i32 1)
  %16 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %17 = load %struct.nouveau_fence*, %struct.nouveau_fence** %2, align 8
  %18 = getelementptr inbounds %struct.nouveau_fence, %struct.nouveau_fence* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @OUT_RING(%struct.nouveau_channel* %16, i32 %19)
  %21 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %22 = call i32 @FIRE_RING(%struct.nouveau_channel* %21)
  br label %23

23:                                               ; preds = %12, %1
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local i32 @RING_SPACE(%struct.nouveau_channel*, i32) #1

declare dso_local i32 @BEGIN_NV04(%struct.nouveau_channel*, i32, i32, i32) #1

declare dso_local i32 @OUT_RING(%struct.nouveau_channel*, i32) #1

declare dso_local i32 @FIRE_RING(%struct.nouveau_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
