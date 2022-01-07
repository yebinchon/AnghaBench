; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_dfs_pri_detector.c_pulse_queue_check_window.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_dfs_pri_detector.c_pulse_queue_check_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pri_detector = type { i32, i64, i64 }
%struct.pulse_elem = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pri_detector*)* @pulse_queue_check_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pulse_queue_check_window(%struct.pri_detector* %0) #0 {
  %2 = alloca %struct.pri_detector*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.pulse_elem*, align 8
  store %struct.pri_detector* %0, %struct.pri_detector** %2, align 8
  %5 = load %struct.pri_detector*, %struct.pri_detector** %2, align 8
  %6 = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp slt i32 %7, 2
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %41

10:                                               ; preds = %1
  %11 = load %struct.pri_detector*, %struct.pri_detector** %2, align 8
  %12 = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.pri_detector*, %struct.pri_detector** %2, align 8
  %15 = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp sle i64 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  br label %41

19:                                               ; preds = %10
  %20 = load %struct.pri_detector*, %struct.pri_detector** %2, align 8
  %21 = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.pri_detector*, %struct.pri_detector** %2, align 8
  %24 = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %22, %25
  store i64 %26, i64* %3, align 8
  br label %27

27:                                               ; preds = %38, %19
  %28 = load %struct.pri_detector*, %struct.pri_detector** %2, align 8
  %29 = call %struct.pulse_elem* @pulse_queue_get_tail(%struct.pri_detector* %28)
  store %struct.pulse_elem* %29, %struct.pulse_elem** %4, align 8
  %30 = icmp ne %struct.pulse_elem* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = load %struct.pulse_elem*, %struct.pulse_elem** %4, align 8
  %33 = getelementptr inbounds %struct.pulse_elem, %struct.pulse_elem* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %3, align 8
  %36 = icmp sge i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %41

38:                                               ; preds = %31
  %39 = load %struct.pri_detector*, %struct.pri_detector** %2, align 8
  %40 = call i32 @pulse_queue_dequeue(%struct.pri_detector* %39)
  br label %27

41:                                               ; preds = %9, %18, %37, %27
  ret void
}

declare dso_local %struct.pulse_elem* @pulse_queue_get_tail(%struct.pri_detector*) #1

declare dso_local i32 @pulse_queue_dequeue(%struct.pri_detector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
