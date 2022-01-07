; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_event.c_nouveau_event_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_event.c_nouveau_event_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_event = type { i32, i32, i64 }
%struct.nouveau_eventh = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nouveau_event_put(%struct.nouveau_event* %0, i32 %1, %struct.nouveau_eventh* %2) #0 {
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
  br label %49

14:                                               ; preds = %3
  %15 = load %struct.nouveau_event*, %struct.nouveau_event** %4, align 8
  %16 = getelementptr inbounds %struct.nouveau_event, %struct.nouveau_event* %15, i32 0, i32 1
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.nouveau_eventh*, %struct.nouveau_eventh** %6, align 8
  %20 = getelementptr inbounds %struct.nouveau_eventh, %struct.nouveau_eventh* %19, i32 0, i32 0
  %21 = call i32 @list_del(i32* %20)
  %22 = load %struct.nouveau_event*, %struct.nouveau_event** %4, align 8
  %23 = getelementptr inbounds %struct.nouveau_event, %struct.nouveau_event* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %14
  %27 = load %struct.nouveau_event*, %struct.nouveau_event** %4, align 8
  %28 = getelementptr inbounds %struct.nouveau_event, %struct.nouveau_event* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @spin_lock(i64 %29)
  br label %31

31:                                               ; preds = %26, %14
  %32 = load %struct.nouveau_event*, %struct.nouveau_event** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @nouveau_event_disable_locked(%struct.nouveau_event* %32, i32 %33, i32 1)
  %35 = load %struct.nouveau_event*, %struct.nouveau_event** %4, align 8
  %36 = getelementptr inbounds %struct.nouveau_event, %struct.nouveau_event* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = load %struct.nouveau_event*, %struct.nouveau_event** %4, align 8
  %41 = getelementptr inbounds %struct.nouveau_event, %struct.nouveau_event* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @spin_unlock(i64 %42)
  br label %44

44:                                               ; preds = %39, %31
  %45 = load %struct.nouveau_event*, %struct.nouveau_event** %4, align 8
  %46 = getelementptr inbounds %struct.nouveau_event, %struct.nouveau_event* %45, i32 0, i32 1
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  br label %49

49:                                               ; preds = %44, %13
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_lock(i64) #1

declare dso_local i32 @nouveau_event_disable_locked(%struct.nouveau_event*, i32, i32) #1

declare dso_local i32 @spin_unlock(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
