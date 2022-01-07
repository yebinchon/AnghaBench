; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_chan.c_nouveau_channel_idle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_chan.c_nouveau_channel_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_channel = type { i32, %struct.nouveau_cli* }
%struct.nouveau_cli = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nouveau_fence = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"failed to idle channel 0x%08x [%s]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_channel_idle(%struct.nouveau_channel* %0) #0 {
  %2 = alloca %struct.nouveau_channel*, align 8
  %3 = alloca %struct.nouveau_cli*, align 8
  %4 = alloca %struct.nouveau_fence*, align 8
  %5 = alloca i32, align 4
  store %struct.nouveau_channel* %0, %struct.nouveau_channel** %2, align 8
  %6 = load %struct.nouveau_channel*, %struct.nouveau_channel** %2, align 8
  %7 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %6, i32 0, i32 1
  %8 = load %struct.nouveau_cli*, %struct.nouveau_cli** %7, align 8
  store %struct.nouveau_cli* %8, %struct.nouveau_cli** %3, align 8
  store %struct.nouveau_fence* null, %struct.nouveau_fence** %4, align 8
  %9 = load %struct.nouveau_channel*, %struct.nouveau_channel** %2, align 8
  %10 = call i32 @nouveau_fence_new(%struct.nouveau_channel* %9, i32 0, %struct.nouveau_fence** %4)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load %struct.nouveau_fence*, %struct.nouveau_fence** %4, align 8
  %15 = call i32 @nouveau_fence_wait(%struct.nouveau_fence* %14, i32 0, i32 0)
  store i32 %15, i32* %5, align 4
  %16 = call i32 @nouveau_fence_unref(%struct.nouveau_fence** %4)
  br label %17

17:                                               ; preds = %13, %1
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load %struct.nouveau_cli*, %struct.nouveau_cli** %3, align 8
  %22 = load %struct.nouveau_channel*, %struct.nouveau_channel** %2, align 8
  %23 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.nouveau_cli*, %struct.nouveau_cli** %3, align 8
  %26 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @NV_ERROR(%struct.nouveau_cli* %21, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %28)
  br label %30

30:                                               ; preds = %20, %17
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @nouveau_fence_new(%struct.nouveau_channel*, i32, %struct.nouveau_fence**) #1

declare dso_local i32 @nouveau_fence_wait(%struct.nouveau_fence*, i32, i32) #1

declare dso_local i32 @nouveau_fence_unref(%struct.nouveau_fence**) #1

declare dso_local i32 @NV_ERROR(%struct.nouveau_cli*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
