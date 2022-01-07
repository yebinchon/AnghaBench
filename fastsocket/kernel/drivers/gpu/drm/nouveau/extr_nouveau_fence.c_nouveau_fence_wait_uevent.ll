; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_fence.c_nouveau_fence_wait_uevent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_fence.c_nouveau_fence_wait_uevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_fence = type { i32, %struct.nouveau_channel* }
%struct.nouveau_channel = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.nouveau_fence_priv*, i32 }
%struct.nouveau_fence_priv = type { i32 }
%struct.nouveau_fifo = type { i32 }
%struct.nouveau_fence_uevent = type { %struct.TYPE_5__, %struct.nouveau_fence_priv* }
%struct.TYPE_5__ = type { i32 }

@nouveau_fence_wait_uevent_handler = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_fence*, i32)* @nouveau_fence_wait_uevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_fence_wait_uevent(%struct.nouveau_fence* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nouveau_fence*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_channel*, align 8
  %7 = alloca %struct.nouveau_fifo*, align 8
  %8 = alloca %struct.nouveau_fence_priv*, align 8
  %9 = alloca %struct.nouveau_fence_uevent, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.nouveau_fence* %0, %struct.nouveau_fence** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.nouveau_fence*, %struct.nouveau_fence** %4, align 8
  %13 = getelementptr inbounds %struct.nouveau_fence, %struct.nouveau_fence* %12, i32 0, i32 1
  %14 = load %struct.nouveau_channel*, %struct.nouveau_channel** %13, align 8
  store %struct.nouveau_channel* %14, %struct.nouveau_channel** %6, align 8
  %15 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %16 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.nouveau_fifo* @nouveau_fifo(i32 %19)
  store %struct.nouveau_fifo* %20, %struct.nouveau_fifo** %7, align 8
  %21 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %22 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.nouveau_fence_priv*, %struct.nouveau_fence_priv** %24, align 8
  store %struct.nouveau_fence_priv* %25, %struct.nouveau_fence_priv** %8, align 8
  %26 = getelementptr inbounds %struct.nouveau_fence_uevent, %struct.nouveau_fence_uevent* %9, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* @nouveau_fence_wait_uevent_handler, align 4
  store i32 %28, i32* %27, align 8
  %29 = getelementptr inbounds %struct.nouveau_fence_uevent, %struct.nouveau_fence_uevent* %9, i32 0, i32 1
  %30 = load %struct.nouveau_fence_priv*, %struct.nouveau_fence_priv** %8, align 8
  store %struct.nouveau_fence_priv* %30, %struct.nouveau_fence_priv** %29, align 8
  store i32 0, i32* %10, align 4
  %31 = load %struct.nouveau_fifo*, %struct.nouveau_fifo** %7, align 8
  %32 = getelementptr inbounds %struct.nouveau_fifo, %struct.nouveau_fifo* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.nouveau_fence_uevent, %struct.nouveau_fence_uevent* %9, i32 0, i32 0
  %35 = call i32 @nouveau_event_get(i32 %33, i32 0, %struct.TYPE_5__* %34)
  %36 = load %struct.nouveau_fence*, %struct.nouveau_fence** %4, align 8
  %37 = getelementptr inbounds %struct.nouveau_fence, %struct.nouveau_fence* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %93

40:                                               ; preds = %2
  %41 = load %struct.nouveau_fence*, %struct.nouveau_fence** %4, align 8
  %42 = getelementptr inbounds %struct.nouveau_fence, %struct.nouveau_fence* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @jiffies, align 4
  %45 = sub nsw i32 %43, %44
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %11, align 8
  %47 = load i32, i32* @jiffies, align 4
  %48 = load %struct.nouveau_fence*, %struct.nouveau_fence** %4, align 8
  %49 = getelementptr inbounds %struct.nouveau_fence, %struct.nouveau_fence* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @time_before(i32 %47, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %73

53:                                               ; preds = %40
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load %struct.nouveau_fence_priv*, %struct.nouveau_fence_priv** %8, align 8
  %58 = getelementptr inbounds %struct.nouveau_fence_priv, %struct.nouveau_fence_priv* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.nouveau_fence*, %struct.nouveau_fence** %4, align 8
  %61 = call i32 @nouveau_fence_done(%struct.nouveau_fence* %60)
  %62 = load i64, i64* %11, align 8
  %63 = call i32 @wait_event_interruptible_timeout(i32 %59, i32 %61, i64 %62)
  store i32 %63, i32* %10, align 4
  br label %72

64:                                               ; preds = %53
  %65 = load %struct.nouveau_fence_priv*, %struct.nouveau_fence_priv** %8, align 8
  %66 = getelementptr inbounds %struct.nouveau_fence_priv, %struct.nouveau_fence_priv* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.nouveau_fence*, %struct.nouveau_fence** %4, align 8
  %69 = call i32 @nouveau_fence_done(%struct.nouveau_fence* %68)
  %70 = load i64, i64* %11, align 8
  %71 = call i32 @wait_event_timeout(i32 %67, i32 %69, i64 %70)
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %64, %56
  br label %73

73:                                               ; preds = %72, %40
  %74 = load i32, i32* %10, align 4
  %75 = icmp sge i32 %74, 0
  br i1 %75, label %76, label %92

76:                                               ; preds = %73
  %77 = load i32, i32* @jiffies, align 4
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %77, %78
  %80 = load %struct.nouveau_fence*, %struct.nouveau_fence** %4, align 8
  %81 = getelementptr inbounds %struct.nouveau_fence, %struct.nouveau_fence* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* @jiffies, align 4
  %83 = load %struct.nouveau_fence*, %struct.nouveau_fence** %4, align 8
  %84 = getelementptr inbounds %struct.nouveau_fence, %struct.nouveau_fence* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @time_after_eq(i32 %82, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %76
  %89 = load i32, i32* @EBUSY, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %10, align 4
  br label %91

91:                                               ; preds = %88, %76
  br label %92

92:                                               ; preds = %91, %73
  br label %111

93:                                               ; preds = %2
  %94 = load i32, i32* %5, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %93
  %97 = load %struct.nouveau_fence_priv*, %struct.nouveau_fence_priv** %8, align 8
  %98 = getelementptr inbounds %struct.nouveau_fence_priv, %struct.nouveau_fence_priv* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.nouveau_fence*, %struct.nouveau_fence** %4, align 8
  %101 = call i32 @nouveau_fence_done(%struct.nouveau_fence* %100)
  %102 = call i32 @wait_event_interruptible(i32 %99, i32 %101)
  store i32 %102, i32* %10, align 4
  br label %110

103:                                              ; preds = %93
  %104 = load %struct.nouveau_fence_priv*, %struct.nouveau_fence_priv** %8, align 8
  %105 = getelementptr inbounds %struct.nouveau_fence_priv, %struct.nouveau_fence_priv* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.nouveau_fence*, %struct.nouveau_fence** %4, align 8
  %108 = call i32 @nouveau_fence_done(%struct.nouveau_fence* %107)
  %109 = call i32 @wait_event(i32 %106, i32 %108)
  br label %110

110:                                              ; preds = %103, %96
  br label %111

111:                                              ; preds = %110, %92
  %112 = load %struct.nouveau_fifo*, %struct.nouveau_fifo** %7, align 8
  %113 = getelementptr inbounds %struct.nouveau_fifo, %struct.nouveau_fifo* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds %struct.nouveau_fence_uevent, %struct.nouveau_fence_uevent* %9, i32 0, i32 0
  %116 = call i32 @nouveau_event_put(i32 %114, i32 0, %struct.TYPE_5__* %115)
  %117 = load i32, i32* %10, align 4
  %118 = icmp slt i32 %117, 0
  %119 = zext i1 %118 to i32
  %120 = call i64 @unlikely(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %111
  %123 = load i32, i32* %10, align 4
  store i32 %123, i32* %3, align 4
  br label %125

124:                                              ; preds = %111
  store i32 0, i32* %3, align 4
  br label %125

125:                                              ; preds = %124, %122
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local %struct.nouveau_fifo* @nouveau_fifo(i32) #1

declare dso_local i32 @nouveau_event_get(i32, i32, %struct.TYPE_5__*) #1

declare dso_local i64 @time_before(i32, i32) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i64) #1

declare dso_local i32 @nouveau_fence_done(%struct.nouveau_fence*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i64) #1

declare dso_local i64 @time_after_eq(i32, i32) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @nouveau_event_put(i32, i32, %struct.TYPE_5__*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
