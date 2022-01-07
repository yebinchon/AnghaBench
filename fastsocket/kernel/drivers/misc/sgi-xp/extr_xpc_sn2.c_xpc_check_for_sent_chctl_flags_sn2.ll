; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_check_for_sent_chctl_flags_sn2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_check_for_sent_chctl_flags_sn2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_partition = type { i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%union.xpc_channel_ctl_flags = type { i32 }

@xpc_chan = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"received notify IRQ from partid=%d, chctl.all_flags=0x%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xpc_partition*)* @xpc_check_for_sent_chctl_flags_sn2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpc_check_for_sent_chctl_flags_sn2(%struct.xpc_partition* %0) #0 {
  %2 = alloca %struct.xpc_partition*, align 8
  %3 = alloca %union.xpc_channel_ctl_flags, align 4
  %4 = alloca i64, align 8
  store %struct.xpc_partition* %0, %struct.xpc_partition** %2, align 8
  %5 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %6 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @xpc_receive_IRQ_amo_sn2(i32 %9)
  %11 = bitcast %union.xpc_channel_ctl_flags* %3 to i32*
  store i32 %10, i32* %11, align 4
  %12 = bitcast %union.xpc_channel_ctl_flags* %3 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %40

16:                                               ; preds = %1
  %17 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %18 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %17, i32 0, i32 0
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = bitcast %union.xpc_channel_ctl_flags* %3 to i32*
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %24 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %22
  store i32 %27, i32* %25, align 4
  %28 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %29 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %28, i32 0, i32 0
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  %32 = load i32, i32* @xpc_chan, align 4
  %33 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %34 = call i32 @XPC_PARTID(%struct.xpc_partition* %33)
  %35 = bitcast %union.xpc_channel_ctl_flags* %3 to i32*
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_dbg(i32 %32, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %36)
  %38 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %39 = call i32 @xpc_wakeup_channel_mgr(%struct.xpc_partition* %38)
  br label %40

40:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @xpc_receive_IRQ_amo_sn2(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @XPC_PARTID(%struct.xpc_partition*) #1

declare dso_local i32 @xpc_wakeup_channel_mgr(%struct.xpc_partition*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
