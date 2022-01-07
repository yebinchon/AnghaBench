; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_lock.c_ttm_write_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_lock.c_ttm_write_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_lock = type { i32, i32, i32 }

@TTM_WRITE_LOCK_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_write_lock(%struct.ttm_lock* %0, i32 %1) #0 {
  %3 = alloca %struct.ttm_lock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ttm_lock* %0, %struct.ttm_lock** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %37

8:                                                ; preds = %2
  %9 = load %struct.ttm_lock*, %struct.ttm_lock** %3, align 8
  %10 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ttm_lock*, %struct.ttm_lock** %3, align 8
  %13 = call i32 @__ttm_write_lock(%struct.ttm_lock* %12)
  %14 = call i32 @wait_event_interruptible(i32 %11, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %8
  %21 = load %struct.ttm_lock*, %struct.ttm_lock** %3, align 8
  %22 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %21, i32 0, i32 1
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load i32, i32* @TTM_WRITE_LOCK_PENDING, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.ttm_lock*, %struct.ttm_lock** %3, align 8
  %27 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load %struct.ttm_lock*, %struct.ttm_lock** %3, align 8
  %31 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %30, i32 0, i32 0
  %32 = call i32 @wake_up_all(i32* %31)
  %33 = load %struct.ttm_lock*, %struct.ttm_lock** %3, align 8
  %34 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %33, i32 0, i32 1
  %35 = call i32 @spin_unlock(i32* %34)
  br label %36

36:                                               ; preds = %20, %8
  br label %44

37:                                               ; preds = %2
  %38 = load %struct.ttm_lock*, %struct.ttm_lock** %3, align 8
  %39 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ttm_lock*, %struct.ttm_lock** %3, align 8
  %42 = call i32 @__ttm_read_lock(%struct.ttm_lock* %41)
  %43 = call i32 @wait_event(i32 %40, i32 %42)
  br label %44

44:                                               ; preds = %37, %36
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @__ttm_write_lock(%struct.ttm_lock*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @__ttm_read_lock(%struct.ttm_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
