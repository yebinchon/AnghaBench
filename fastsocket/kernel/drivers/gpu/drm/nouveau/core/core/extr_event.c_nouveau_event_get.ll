; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_event.c_nouveau_event_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_event.c_nouveau_event_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_event = type { i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nouveau_eventh = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nouveau_event_get(%struct.nouveau_event* %0, i32 %1, %struct.nouveau_eventh* %2) #0 {
  %4 = alloca %struct.nouveau_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_eventh*, align 8
  %7 = alloca i64, align 8
  store %struct.nouveau_event* %0, %struct.nouveau_event** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.nouveau_eventh* %2, %struct.nouveau_eventh** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.nouveau_event*, %struct.nouveau_event** %4, align 8
  %10 = getelementptr inbounds %struct.nouveau_event, %struct.nouveau_event* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp sge i32 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %56

14:                                               ; preds = %3
  %15 = load %struct.nouveau_event*, %struct.nouveau_event** %4, align 8
  %16 = getelementptr inbounds %struct.nouveau_event, %struct.nouveau_event* %15, i32 0, i32 1
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.nouveau_eventh*, %struct.nouveau_eventh** %6, align 8
  %20 = getelementptr inbounds %struct.nouveau_eventh, %struct.nouveau_eventh* %19, i32 0, i32 0
  %21 = load %struct.nouveau_event*, %struct.nouveau_event** %4, align 8
  %22 = getelementptr inbounds %struct.nouveau_event, %struct.nouveau_event* %21, i32 0, i32 3
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @list_add(i32* %20, i32* %27)
  %29 = load %struct.nouveau_event*, %struct.nouveau_event** %4, align 8
  %30 = getelementptr inbounds %struct.nouveau_event, %struct.nouveau_event* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %14
  %34 = load %struct.nouveau_event*, %struct.nouveau_event** %4, align 8
  %35 = getelementptr inbounds %struct.nouveau_event, %struct.nouveau_event* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @spin_lock(i64 %36)
  br label %38

38:                                               ; preds = %33, %14
  %39 = load %struct.nouveau_event*, %struct.nouveau_event** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @nouveau_event_enable_locked(%struct.nouveau_event* %39, i32 %40)
  %42 = load %struct.nouveau_event*, %struct.nouveau_event** %4, align 8
  %43 = getelementptr inbounds %struct.nouveau_event, %struct.nouveau_event* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %38
  %47 = load %struct.nouveau_event*, %struct.nouveau_event** %4, align 8
  %48 = getelementptr inbounds %struct.nouveau_event, %struct.nouveau_event* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @spin_unlock(i64 %49)
  br label %51

51:                                               ; preds = %46, %38
  %52 = load %struct.nouveau_event*, %struct.nouveau_event** %4, align 8
  %53 = getelementptr inbounds %struct.nouveau_event, %struct.nouveau_event* %52, i32 0, i32 1
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  br label %56

56:                                               ; preds = %51, %13
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_lock(i64) #1

declare dso_local i32 @nouveau_event_enable_locked(%struct.nouveau_event*, i32) #1

declare dso_local i32 @spin_unlock(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
