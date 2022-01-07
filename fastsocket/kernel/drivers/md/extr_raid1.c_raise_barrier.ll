; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid1.c_raise_barrier.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid1.c_raise_barrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r1conf = type { i64, i32, i32, i32, i32 }

@RESYNC_DEPTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r1conf*)* @raise_barrier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raise_barrier(%struct.r1conf* %0) #0 {
  %2 = alloca %struct.r1conf*, align 8
  store %struct.r1conf* %0, %struct.r1conf** %2, align 8
  %3 = load %struct.r1conf*, %struct.r1conf** %2, align 8
  %4 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %3, i32 0, i32 1
  %5 = call i32 @spin_lock_irq(i32* %4)
  %6 = load %struct.r1conf*, %struct.r1conf** %2, align 8
  %7 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.r1conf*, %struct.r1conf** %2, align 8
  %10 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = load %struct.r1conf*, %struct.r1conf** %2, align 8
  %16 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.r1conf*, %struct.r1conf** %2, align 8
  %19 = call i32 @md_raid1_unplug_device(%struct.r1conf* %18)
  %20 = call i32 @wait_event_lock_irq(i32 %8, i32 %14, i32 %17, i32 %19)
  %21 = load %struct.r1conf*, %struct.r1conf** %2, align 8
  %22 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* %22, align 8
  %25 = load %struct.r1conf*, %struct.r1conf** %2, align 8
  %26 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.r1conf*, %struct.r1conf** %2, align 8
  %29 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %1
  %33 = load %struct.r1conf*, %struct.r1conf** %2, align 8
  %34 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @RESYNC_DEPTH, align 8
  %37 = icmp slt i64 %35, %36
  br label %38

38:                                               ; preds = %32, %1
  %39 = phi i1 [ false, %1 ], [ %37, %32 ]
  %40 = zext i1 %39 to i32
  %41 = load %struct.r1conf*, %struct.r1conf** %2, align 8
  %42 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.r1conf*, %struct.r1conf** %2, align 8
  %45 = call i32 @md_raid1_unplug_device(%struct.r1conf* %44)
  %46 = call i32 @wait_event_lock_irq(i32 %27, i32 %40, i32 %43, i32 %45)
  %47 = load %struct.r1conf*, %struct.r1conf** %2, align 8
  %48 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %47, i32 0, i32 1
  %49 = call i32 @spin_unlock_irq(i32* %48)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @wait_event_lock_irq(i32, i32, i32, i32) #1

declare dso_local i32 @md_raid1_unplug_device(%struct.r1conf*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
