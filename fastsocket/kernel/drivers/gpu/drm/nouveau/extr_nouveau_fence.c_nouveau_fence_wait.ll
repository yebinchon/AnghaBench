; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_fence.c_nouveau_fence_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_fence.c_nouveau_fence_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_fence = type { i64, %struct.nouveau_channel* }
%struct.nouveau_channel = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nouveau_fence_priv* }
%struct.nouveau_fence_priv = type { i64 }

@NSEC_PER_MSEC = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_fence_wait(%struct.nouveau_fence* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_fence*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_channel*, align 8
  %9 = alloca %struct.nouveau_fence_priv*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nouveau_fence* %0, %struct.nouveau_fence** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.nouveau_fence*, %struct.nouveau_fence** %5, align 8
  %14 = getelementptr inbounds %struct.nouveau_fence, %struct.nouveau_fence* %13, i32 0, i32 1
  %15 = load %struct.nouveau_channel*, %struct.nouveau_channel** %14, align 8
  store %struct.nouveau_channel* %15, %struct.nouveau_channel** %8, align 8
  %16 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %17 = icmp ne %struct.nouveau_channel* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %20 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.nouveau_fence_priv*, %struct.nouveau_fence_priv** %22, align 8
  br label %25

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %24, %18
  %26 = phi %struct.nouveau_fence_priv* [ %23, %18 ], [ null, %24 ]
  store %struct.nouveau_fence_priv* %26, %struct.nouveau_fence_priv** %9, align 8
  %27 = load i32, i32* @NSEC_PER_MSEC, align 4
  %28 = sdiv i32 %27, 1000
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %10, align 8
  store i32 0, i32* %12, align 4
  br label %30

30:                                               ; preds = %56, %25
  %31 = load %struct.nouveau_fence_priv*, %struct.nouveau_fence_priv** %9, align 8
  %32 = icmp ne %struct.nouveau_fence_priv* %31, null
  br i1 %32, label %33, label %46

33:                                               ; preds = %30
  %34 = load %struct.nouveau_fence_priv*, %struct.nouveau_fence_priv** %9, align 8
  %35 = getelementptr inbounds %struct.nouveau_fence_priv, %struct.nouveau_fence_priv* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load %struct.nouveau_fence*, %struct.nouveau_fence** %5, align 8
  %43 = call i32 @nouveau_fence_done(%struct.nouveau_fence* %42)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  br label %46

46:                                               ; preds = %41, %38, %33, %30
  %47 = phi i1 [ false, %38 ], [ false, %33 ], [ false, %30 ], [ %45, %41 ]
  br i1 %47, label %48, label %57

48:                                               ; preds = %46
  %49 = load %struct.nouveau_fence*, %struct.nouveau_fence** %5, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @nouveau_fence_wait_uevent(%struct.nouveau_fence* %49, i32 %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* %12, align 4
  store i32 %55, i32* %4, align 4
  br label %120

56:                                               ; preds = %48
  br label %30

57:                                               ; preds = %46
  br label %58

58:                                               ; preds = %115, %57
  %59 = load %struct.nouveau_fence*, %struct.nouveau_fence** %5, align 8
  %60 = call i32 @nouveau_fence_done(%struct.nouveau_fence* %59)
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  br i1 %62, label %63, label %116

63:                                               ; preds = %58
  %64 = load %struct.nouveau_fence*, %struct.nouveau_fence** %5, align 8
  %65 = getelementptr inbounds %struct.nouveau_fence, %struct.nouveau_fence* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %63
  %69 = load i32, i32* @jiffies, align 4
  %70 = load %struct.nouveau_fence*, %struct.nouveau_fence** %5, align 8
  %71 = getelementptr inbounds %struct.nouveau_fence, %struct.nouveau_fence* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i64 @time_after_eq(i32 %69, i64 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load i32, i32* @EBUSY, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %12, align 4
  br label %116

78:                                               ; preds = %68, %63
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  br label %85

83:                                               ; preds = %78
  %84 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i32 [ %82, %81 ], [ %84, %83 ]
  %87 = call i32 @__set_current_state(i32 %86)
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %105

90:                                               ; preds = %85
  %91 = load i64, i64* %10, align 8
  %92 = call i32 @ktime_set(i32 0, i64 %91)
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %94 = call i32 @schedule_hrtimeout(i32* %11, i32 %93)
  %95 = load i64, i64* %10, align 8
  %96 = mul i64 %95, 2
  store i64 %96, i64* %10, align 8
  %97 = load i64, i64* %10, align 8
  %98 = load i32, i32* @NSEC_PER_MSEC, align 4
  %99 = sext i32 %98 to i64
  %100 = icmp ugt i64 %97, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %90
  %102 = load i32, i32* @NSEC_PER_MSEC, align 4
  %103 = sext i32 %102 to i64
  store i64 %103, i64* %10, align 8
  br label %104

104:                                              ; preds = %101, %90
  br label %105

105:                                              ; preds = %104, %85
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %105
  %109 = load i32, i32* @current, align 4
  %110 = call i64 @signal_pending(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load i32, i32* @ERESTARTSYS, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %12, align 4
  br label %116

115:                                              ; preds = %108, %105
  br label %58

116:                                              ; preds = %112, %75, %58
  %117 = load i32, i32* @TASK_RUNNING, align 4
  %118 = call i32 @__set_current_state(i32 %117)
  %119 = load i32, i32* %12, align 4
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %116, %54
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i32 @nouveau_fence_done(%struct.nouveau_fence*) #1

declare dso_local i32 @nouveau_fence_wait_uevent(%struct.nouveau_fence*, i32) #1

declare dso_local i64 @time_after_eq(i32, i64) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @ktime_set(i32, i64) #1

declare dso_local i32 @schedule_hrtimeout(i32*, i32) #1

declare dso_local i64 @signal_pending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
