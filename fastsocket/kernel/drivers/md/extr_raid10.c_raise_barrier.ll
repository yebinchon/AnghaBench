; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_raise_barrier.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_raise_barrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r10conf = type { i64, i32, i32, i32, i32 }

@RESYNC_DEPTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r10conf*, i32)* @raise_barrier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raise_barrier(%struct.r10conf* %0, i32 %1) #0 {
  %3 = alloca %struct.r10conf*, align 8
  %4 = alloca i32, align 4
  store %struct.r10conf* %0, %struct.r10conf** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %9 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  %12 = xor i1 %11, true
  br label %13

13:                                               ; preds = %7, %2
  %14 = phi i1 [ false, %2 ], [ %12, %7 ]
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %18 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %17, i32 0, i32 1
  %19 = call i32 @spin_lock_irq(i32* %18)
  %20 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %21 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %13
  %26 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %27 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %25, %13
  %32 = phi i1 [ true, %13 ], [ %30, %25 ]
  %33 = zext i1 %32 to i32
  %34 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %35 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %38 = call i32 @md_raid10_unplug_device(%struct.r10conf* %37)
  %39 = call i32 @wait_event_lock_irq(i32 %22, i32 %33, i32 %36, i32 %38)
  %40 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %41 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %41, align 8
  %44 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %45 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %48 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %31
  %52 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %53 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @RESYNC_DEPTH, align 8
  %56 = icmp slt i64 %54, %55
  br label %57

57:                                               ; preds = %51, %31
  %58 = phi i1 [ false, %31 ], [ %56, %51 ]
  %59 = zext i1 %58 to i32
  %60 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %61 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %64 = call i32 @md_raid10_unplug_device(%struct.r10conf* %63)
  %65 = call i32 @wait_event_lock_irq(i32 %46, i32 %59, i32 %62, i32 %64)
  %66 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %67 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %66, i32 0, i32 1
  %68 = call i32 @spin_unlock_irq(i32* %67)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @wait_event_lock_irq(i32, i32, i32, i32) #1

declare dso_local i32 @md_raid10_unplug_device(%struct.r10conf*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
