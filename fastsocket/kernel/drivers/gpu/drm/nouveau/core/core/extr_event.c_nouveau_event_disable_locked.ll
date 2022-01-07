; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_event.c_nouveau_event_disable_locked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_event.c_nouveau_event_disable_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_event = type { i32, i32 (%struct.nouveau_event*, i32)*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nouveau_event_disable_locked(%struct.nouveau_event* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nouveau_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nouveau_event* %0, %struct.nouveau_event** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.nouveau_event*, %struct.nouveau_event** %4, align 8
  %9 = getelementptr inbounds %struct.nouveau_event, %struct.nouveau_event* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp sge i32 %7, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %46

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = load %struct.nouveau_event*, %struct.nouveau_event** %4, align 8
  %17 = getelementptr inbounds %struct.nouveau_event, %struct.nouveau_event* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %23, %15
  store i64 %24, i64* %22, align 8
  %25 = load %struct.nouveau_event*, %struct.nouveau_event** %4, align 8
  %26 = getelementptr inbounds %struct.nouveau_event, %struct.nouveau_event* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %13
  %35 = load %struct.nouveau_event*, %struct.nouveau_event** %4, align 8
  %36 = getelementptr inbounds %struct.nouveau_event, %struct.nouveau_event* %35, i32 0, i32 1
  %37 = load i32 (%struct.nouveau_event*, i32)*, i32 (%struct.nouveau_event*, i32)** %36, align 8
  %38 = icmp ne i32 (%struct.nouveau_event*, i32)* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load %struct.nouveau_event*, %struct.nouveau_event** %4, align 8
  %41 = getelementptr inbounds %struct.nouveau_event, %struct.nouveau_event* %40, i32 0, i32 1
  %42 = load i32 (%struct.nouveau_event*, i32)*, i32 (%struct.nouveau_event*, i32)** %41, align 8
  %43 = load %struct.nouveau_event*, %struct.nouveau_event** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 %42(%struct.nouveau_event* %43, i32 %44)
  br label %46

46:                                               ; preds = %12, %39, %34, %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
