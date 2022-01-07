; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_channel.c_vmbus_setevent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_channel.c_vmbus_setevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.hv_monitor_page*, i64 }
%struct.hv_monitor_page = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.vmbus_channel = type { i32, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }

@vmbus_connection = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmbus_channel*)* @vmbus_setevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmbus_setevent(%struct.vmbus_channel* %0) #0 {
  %2 = alloca %struct.vmbus_channel*, align 8
  %3 = alloca %struct.hv_monitor_page*, align 8
  store %struct.vmbus_channel* %0, %struct.vmbus_channel** %2, align 8
  %4 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %5 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %41

9:                                                ; preds = %1
  %10 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %11 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, 31
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vmbus_connection, i32 0, i32 1), align 8
  %16 = inttoptr i64 %15 to i64*
  %17 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %18 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = ashr i32 %20, 5
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %16, i64 %22
  %24 = call i32 @sync_set_bit(i32 %14, i64* %23)
  %25 = load %struct.hv_monitor_page*, %struct.hv_monitor_page** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vmbus_connection, i32 0, i32 0), align 8
  store %struct.hv_monitor_page* %25, %struct.hv_monitor_page** %3, align 8
  %26 = load %struct.hv_monitor_page*, %struct.hv_monitor_page** %3, align 8
  %27 = getelementptr inbounds %struct.hv_monitor_page, %struct.hv_monitor_page* %26, i32 1
  store %struct.hv_monitor_page* %27, %struct.hv_monitor_page** %3, align 8
  %28 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %29 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.hv_monitor_page*, %struct.hv_monitor_page** %3, align 8
  %32 = getelementptr inbounds %struct.hv_monitor_page, %struct.hv_monitor_page* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %35 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = bitcast i32* %38 to i64*
  %40 = call i32 @sync_set_bit(i32 %30, i64* %39)
  br label %44

41:                                               ; preds = %1
  %42 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %43 = call i32 @vmbus_set_event(%struct.vmbus_channel* %42)
  br label %44

44:                                               ; preds = %41, %9
  ret void
}

declare dso_local i32 @sync_set_bit(i32, i64*) #1

declare dso_local i32 @vmbus_set_event(%struct.vmbus_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
