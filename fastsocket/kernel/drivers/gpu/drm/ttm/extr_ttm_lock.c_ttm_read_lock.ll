; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_lock.c_ttm_read_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_lock.c_ttm_read_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_lock = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_read_lock(%struct.ttm_lock* %0, i32 %1) #0 {
  %3 = alloca %struct.ttm_lock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ttm_lock* %0, %struct.ttm_lock** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load %struct.ttm_lock*, %struct.ttm_lock** %3, align 8
  %10 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ttm_lock*, %struct.ttm_lock** %3, align 8
  %13 = call i32 @__ttm_read_lock(%struct.ttm_lock* %12)
  %14 = call i32 @wait_event_interruptible(i32 %11, i32 %13)
  store i32 %14, i32* %5, align 4
  br label %22

15:                                               ; preds = %2
  %16 = load %struct.ttm_lock*, %struct.ttm_lock** %3, align 8
  %17 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ttm_lock*, %struct.ttm_lock** %3, align 8
  %20 = call i32 @__ttm_read_lock(%struct.ttm_lock* %19)
  %21 = call i32 @wait_event(i32 %18, i32 %20)
  br label %22

22:                                               ; preds = %15, %8
  %23 = load i32, i32* %5, align 4
  ret i32 %23
}

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @__ttm_read_lock(%struct.ttm_lock*) #1

declare dso_local i32 @wait_event(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
