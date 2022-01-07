; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_async_grp5_qos_speed_process.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_async_grp5_qos_speed_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.be_async_event_grp5_qos_link_speed = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.be_adapter*, %struct.be_async_event_grp5_qos_link_speed*)* @be_async_grp5_qos_speed_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_async_grp5_qos_speed_process(%struct.be_adapter* %0, %struct.be_async_event_grp5_qos_link_speed* %1) #0 {
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca %struct.be_async_event_grp5_qos_link_speed*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  store %struct.be_async_event_grp5_qos_link_speed* %1, %struct.be_async_event_grp5_qos_link_speed** %4, align 8
  %5 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %6 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp sge i32 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %2
  %11 = load %struct.be_async_event_grp5_qos_link_speed*, %struct.be_async_event_grp5_qos_link_speed** %4, align 8
  %12 = getelementptr inbounds %struct.be_async_event_grp5_qos_link_speed, %struct.be_async_event_grp5_qos_link_speed* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %10
  %19 = load %struct.be_async_event_grp5_qos_link_speed*, %struct.be_async_event_grp5_qos_link_speed** %4, align 8
  %20 = getelementptr inbounds %struct.be_async_event_grp5_qos_link_speed, %struct.be_async_event_grp5_qos_link_speed* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @le16_to_cpu(i32 %21)
  %23 = mul nsw i32 %22, 10
  %24 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  br label %27

27:                                               ; preds = %18, %10, %2
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
