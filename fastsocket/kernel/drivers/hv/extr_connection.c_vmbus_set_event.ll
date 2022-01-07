; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_connection.c_vmbus_set_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_connection.c_vmbus_set_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.vmbus_channel = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@vmbus_connection = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmbus_set_event(%struct.vmbus_channel* %0) #0 {
  %2 = alloca %struct.vmbus_channel*, align 8
  %3 = alloca i32, align 4
  store %struct.vmbus_channel* %0, %struct.vmbus_channel** %2, align 8
  %4 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %5 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %9 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, 31
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vmbus_connection, i32 0, i32 0), align 8
  %16 = inttoptr i64 %15 to i64*
  %17 = load i32, i32* %3, align 4
  %18 = ashr i32 %17, 5
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %16, i64 %19
  %21 = call i32 @sync_set_bit(i32 %14, i64* %20)
  br label %22

22:                                               ; preds = %12, %1
  %23 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %24 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @hv_signal_event(i32 %25)
  ret i32 %26
}

declare dso_local i32 @sync_set_bit(i32, i64*) #1

declare dso_local i32 @hv_signal_event(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
