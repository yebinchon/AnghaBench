; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_wait_barrier.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_wait_barrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.r10conf = type { i32, i64, i32, i64, i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r10conf*)* @wait_barrier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wait_barrier(%struct.r10conf* %0) #0 {
  %2 = alloca %struct.r10conf*, align 8
  store %struct.r10conf* %0, %struct.r10conf** %2, align 8
  %3 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %4 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %3, i32 0, i32 0
  %5 = call i32 @spin_lock_irq(i32* %4)
  %6 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %7 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %52

10:                                               ; preds = %1
  %11 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %12 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 8
  %15 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %16 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %19 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %10
  %23 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %24 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br label %37

37:                                               ; preds = %32, %27, %22
  %38 = phi i1 [ false, %27 ], [ false, %22 ], [ %36, %32 ]
  br label %39

39:                                               ; preds = %37, %10
  %40 = phi i1 [ true, %10 ], [ %38, %37 ]
  %41 = zext i1 %40 to i32
  %42 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %43 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %46 = call i32 @md_raid10_unplug_device(%struct.r10conf* %45)
  %47 = call i32 @wait_event_lock_irq(i32 %17, i32 %41, i32 %44, i32 %46)
  %48 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %49 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %39, %1
  %53 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %54 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %54, align 8
  %57 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %58 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %57, i32 0, i32 0
  %59 = call i32 @spin_unlock_irq(i32* %58)
  ret void
}

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
