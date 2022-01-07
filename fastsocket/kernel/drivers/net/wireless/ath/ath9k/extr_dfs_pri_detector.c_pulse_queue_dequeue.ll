; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_dfs_pri_detector.c_pulse_queue_dequeue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_dfs_pri_detector.c_pulse_queue_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pri_detector = type { i64 }
%struct.pulse_elem = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pri_detector*)* @pulse_queue_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pulse_queue_dequeue(%struct.pri_detector* %0) #0 {
  %2 = alloca %struct.pri_detector*, align 8
  %3 = alloca %struct.pulse_elem*, align 8
  store %struct.pri_detector* %0, %struct.pri_detector** %2, align 8
  %4 = load %struct.pri_detector*, %struct.pri_detector** %2, align 8
  %5 = call %struct.pulse_elem* @pulse_queue_get_tail(%struct.pri_detector* %4)
  store %struct.pulse_elem* %5, %struct.pulse_elem** %3, align 8
  %6 = load %struct.pulse_elem*, %struct.pulse_elem** %3, align 8
  %7 = icmp ne %struct.pulse_elem* %6, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = load %struct.pulse_elem*, %struct.pulse_elem** %3, align 8
  %10 = getelementptr inbounds %struct.pulse_elem, %struct.pulse_elem* %9, i32 0, i32 0
  %11 = call i32 @list_del_init(i32* %10)
  %12 = load %struct.pri_detector*, %struct.pri_detector** %2, align 8
  %13 = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, -1
  store i64 %15, i64* %13, align 8
  %16 = load %struct.pulse_elem*, %struct.pulse_elem** %3, align 8
  %17 = call i32 @pool_put_pulse_elem(%struct.pulse_elem* %16)
  br label %18

18:                                               ; preds = %8, %1
  %19 = load %struct.pri_detector*, %struct.pri_detector** %2, align 8
  %20 = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, 0
  %23 = zext i1 %22 to i32
  ret i32 %23
}

declare dso_local %struct.pulse_elem* @pulse_queue_get_tail(%struct.pri_detector*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @pool_put_pulse_elem(%struct.pulse_elem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
