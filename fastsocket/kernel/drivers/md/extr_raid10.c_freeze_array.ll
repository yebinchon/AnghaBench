; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_freeze_array.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_freeze_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r10conf = type { i64, i64, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r10conf*, i32)* @freeze_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @freeze_array(%struct.r10conf* %0, i32 %1) #0 {
  %3 = alloca %struct.r10conf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.r10conf* %0, %struct.r10conf** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %7 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %6, i32 0, i32 2
  %8 = call i32 @spin_lock_irq(i32* %7)
  %9 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %10 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %10, align 4
  %13 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %14 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 8
  %17 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %18 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %21 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %24 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %25, %27
  %29 = icmp eq i64 %22, %28
  %30 = zext i1 %29 to i32
  %31 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %32 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %35 = call i32 @flush_pending_writes(%struct.r10conf* %34)
  %36 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %37 = call i32 @md_raid10_unplug_device(%struct.r10conf* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @wait_event_lock_irq(i32 %19, i32 %30, i32 %33, i32 %38)
  %40 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %41 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %40, i32 0, i32 2
  %42 = call i32 @spin_unlock_irq(i32* %41)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @wait_event_lock_irq(i32, i32, i32, i32) #1

declare dso_local i32 @flush_pending_writes(%struct.r10conf*) #1

declare dso_local i32 @md_raid10_unplug_device(%struct.r10conf*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
