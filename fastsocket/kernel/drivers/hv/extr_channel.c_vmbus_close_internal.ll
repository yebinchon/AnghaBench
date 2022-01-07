; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_channel.c_vmbus_close_internal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_channel.c_vmbus_close_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_channel = type { i32, i64, i64, %struct.TYPE_6__, %struct.TYPE_4__, i32, i32*, i32*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { %struct.vmbus_channel_close_channel }
%struct.vmbus_channel_close_channel = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@CHANNEL_OPEN_STATE = common dso_local global i32 0, align 4
@CHANNELMSG_CLOSECHANNEL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmbus_channel*)* @vmbus_close_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmbus_close_internal(%struct.vmbus_channel* %0) #0 {
  %2 = alloca %struct.vmbus_channel*, align 8
  %3 = alloca %struct.vmbus_channel_close_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.vmbus_channel* %0, %struct.vmbus_channel** %2, align 8
  %6 = load i32, i32* @CHANNEL_OPEN_STATE, align 4
  %7 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %8 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %7, i32 0, i32 8
  store i32 %6, i32* %8, align 8
  %9 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %10 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %9, i32 0, i32 7
  store i32* null, i32** %10, align 8
  %11 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %12 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %11, i32 0, i32 5
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %16 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %15, i32 0, i32 6
  store i32* null, i32** %16, align 8
  %17 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %18 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %17, i32 0, i32 5
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32* %18, i64 %19)
  %21 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %22 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store %struct.vmbus_channel_close_channel* %23, %struct.vmbus_channel_close_channel** %3, align 8
  %24 = load i32, i32* @CHANNELMSG_CLOSECHANNEL, align 4
  %25 = load %struct.vmbus_channel_close_channel*, %struct.vmbus_channel_close_channel** %3, align 8
  %26 = getelementptr inbounds %struct.vmbus_channel_close_channel, %struct.vmbus_channel_close_channel* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %29 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.vmbus_channel_close_channel*, %struct.vmbus_channel_close_channel** %3, align 8
  %33 = getelementptr inbounds %struct.vmbus_channel_close_channel, %struct.vmbus_channel_close_channel* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.vmbus_channel_close_channel*, %struct.vmbus_channel_close_channel** %3, align 8
  %35 = call i32 @vmbus_post_msg(%struct.vmbus_channel_close_channel* %34, i32 8)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @BUG_ON(i32 %38)
  %40 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %41 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %1
  %45 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %46 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %47 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @vmbus_teardown_gpadl(%struct.vmbus_channel* %45, i64 %48)
  br label %50

50:                                               ; preds = %44, %1
  %51 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %52 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %55 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @PAGE_SIZE, align 4
  %58 = mul nsw i32 %56, %57
  %59 = call i32 @get_order(i32 %58)
  %60 = call i32 @free_pages(i64 %53, i32 %59)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vmbus_post_msg(%struct.vmbus_channel_close_channel*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @vmbus_teardown_gpadl(%struct.vmbus_channel*, i64) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i32 @get_order(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
