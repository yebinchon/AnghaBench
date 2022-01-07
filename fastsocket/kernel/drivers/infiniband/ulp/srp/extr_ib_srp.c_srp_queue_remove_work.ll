; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_queue_remove_work.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_queue_remove_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srp_target_port = type { i64, i32, i32 }

@SRP_TARGET_REMOVED = common dso_local global i64 0, align 8
@srp_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.srp_target_port*)* @srp_queue_remove_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srp_queue_remove_work(%struct.srp_target_port* %0) #0 {
  %2 = alloca %struct.srp_target_port*, align 8
  %3 = alloca i32, align 4
  store %struct.srp_target_port* %0, %struct.srp_target_port** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.srp_target_port*, %struct.srp_target_port** %2, align 8
  %5 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %4, i32 0, i32 2
  %6 = call i32 @spin_lock_irq(i32* %5)
  %7 = load %struct.srp_target_port*, %struct.srp_target_port** %2, align 8
  %8 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SRP_TARGET_REMOVED, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i64, i64* @SRP_TARGET_REMOVED, align 8
  %14 = load %struct.srp_target_port*, %struct.srp_target_port** %2, align 8
  %15 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  store i32 1, i32* %3, align 4
  br label %16

16:                                               ; preds = %12, %1
  %17 = load %struct.srp_target_port*, %struct.srp_target_port** %2, align 8
  %18 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %17, i32 0, i32 2
  %19 = call i32 @spin_unlock_irq(i32* %18)
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load i32, i32* @srp_wq, align 4
  %24 = load %struct.srp_target_port*, %struct.srp_target_port** %2, align 8
  %25 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %24, i32 0, i32 1
  %26 = call i32 @queue_work(i32 %23, i32* %25)
  br label %27

27:                                               ; preds = %22, %16
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
