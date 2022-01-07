; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_uv.c_xpc_send_local_activate_IRQ_uv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_uv.c_xpc_send_local_activate_IRQ_uv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_partition = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.xpc_partition_uv }
%struct.xpc_partition_uv = type { i32 }

@xpc_activate_IRQ_rcvd_lock = common dso_local global i32 0, align 4
@xpc_activate_IRQ_rcvd = common dso_local global i32 0, align 4
@xpc_activate_IRQ_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xpc_partition*, i32)* @xpc_send_local_activate_IRQ_uv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpc_send_local_activate_IRQ_uv(%struct.xpc_partition* %0, i32 %1) #0 {
  %3 = alloca %struct.xpc_partition*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.xpc_partition_uv*, align 8
  store %struct.xpc_partition* %0, %struct.xpc_partition** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %8 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.xpc_partition_uv* %9, %struct.xpc_partition_uv** %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @spin_lock_irqsave(i32* @xpc_activate_IRQ_rcvd_lock, i64 %10)
  %12 = load %struct.xpc_partition_uv*, %struct.xpc_partition_uv** %6, align 8
  %13 = getelementptr inbounds %struct.xpc_partition_uv, %struct.xpc_partition_uv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @xpc_activate_IRQ_rcvd, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @xpc_activate_IRQ_rcvd, align 4
  br label %19

19:                                               ; preds = %16, %2
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.xpc_partition_uv*, %struct.xpc_partition_uv** %6, align 8
  %22 = getelementptr inbounds %struct.xpc_partition_uv, %struct.xpc_partition_uv* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* @xpc_activate_IRQ_rcvd_lock, i64 %23)
  %25 = call i32 @wake_up_interruptible(i32* @xpc_activate_IRQ_wq)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
