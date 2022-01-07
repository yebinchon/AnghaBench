; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_check_for_dropped_notify_IRQ_sn2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_check_for_dropped_notify_IRQ_sn2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_partition = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.xpc_partition_sn2 }
%struct.xpc_partition_sn2 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@XPC_DROPPED_NOTIFY_IRQ_WAIT_INTERVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xpc_partition*)* @xpc_check_for_dropped_notify_IRQ_sn2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpc_check_for_dropped_notify_IRQ_sn2(%struct.xpc_partition* %0) #0 {
  %2 = alloca %struct.xpc_partition*, align 8
  %3 = alloca %struct.xpc_partition_sn2*, align 8
  store %struct.xpc_partition* %0, %struct.xpc_partition** %2, align 8
  %4 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %5 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store %struct.xpc_partition_sn2* %6, %struct.xpc_partition_sn2** %3, align 8
  %7 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %8 = call i64 @xpc_part_ref(%struct.xpc_partition* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %12 = call i32 @xpc_check_for_sent_chctl_flags_sn2(%struct.xpc_partition* %11)
  %13 = load i64, i64* @jiffies, align 8
  %14 = load i64, i64* @XPC_DROPPED_NOTIFY_IRQ_WAIT_INTERVAL, align 8
  %15 = add nsw i64 %13, %14
  %16 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %3, align 8
  %17 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i64 %15, i64* %18, align 8
  %19 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %3, align 8
  %20 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %19, i32 0, i32 0
  %21 = call i32 @add_timer(%struct.TYPE_4__* %20)
  %22 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %23 = call i32 @xpc_part_deref(%struct.xpc_partition* %22)
  br label %24

24:                                               ; preds = %10, %1
  ret void
}

declare dso_local i64 @xpc_part_ref(%struct.xpc_partition*) #1

declare dso_local i32 @xpc_check_for_sent_chctl_flags_sn2(%struct.xpc_partition*) #1

declare dso_local i32 @add_timer(%struct.TYPE_4__*) #1

declare dso_local i32 @xpc_part_deref(%struct.xpc_partition*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
