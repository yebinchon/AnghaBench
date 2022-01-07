; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hyperv/extr_netvsc.c_netvsc_send_recv_completion.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hyperv/extr_netvsc.c_netvsc_send_recv_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_device = type { i32 }
%struct.nvsp_message = type { %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.net_device = type { i32 }
%struct.netvsc_device = type { %struct.net_device* }

@NVSP_MSG1_TYPE_SEND_RNDIS_PKT_COMPLETE = common dso_local global i32 0, align 4
@VM_PKT_COMP = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"unable to send receive completion pkt (tid %llx)...retrying %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"unable to send receive completion pkt (tid %llx)...give up retrying\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"unable to send receive completion pkt - %llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hv_device*, i32, i32)* @netvsc_send_recv_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netvsc_send_recv_completion(%struct.hv_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hv_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvsp_message, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.netvsc_device*, align 8
  store %struct.hv_device* %0, %struct.hv_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %12 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %13 = call %struct.netvsc_device* @hv_get_drvdata(%struct.hv_device* %12)
  store %struct.netvsc_device* %13, %struct.netvsc_device** %11, align 8
  %14 = load %struct.netvsc_device*, %struct.netvsc_device** %11, align 8
  %15 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %14, i32 0, i32 0
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %10, align 8
  %17 = load i32, i32* @NVSP_MSG1_TYPE_SEND_RNDIS_PKT_COMPLETE, align 4
  %18 = getelementptr inbounds %struct.nvsp_message, %struct.nvsp_message* %7, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %6, align 4
  %21 = getelementptr inbounds %struct.nvsp_message, %struct.nvsp_message* %7, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i32 %20, i32* %24, align 4
  br label %25

25:                                               ; preds = %49, %3
  %26 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %27 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @VM_PKT_COMP, align 4
  %31 = call i32 @vmbus_sendpacket(i32 %28, %struct.nvsp_message* %7, i32 8, i32 %29, i32 %30, i32 0)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %61

35:                                               ; preds = %25
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @EAGAIN, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %56

40:                                               ; preds = %35
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  %43 = load %struct.net_device*, %struct.net_device** %10, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_err(%struct.net_device* %43, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45)
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %47, 4
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = call i32 @udelay(i32 100)
  br label %25

51:                                               ; preds = %40
  %52 = load %struct.net_device*, %struct.net_device** %10, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_err(%struct.net_device* %52, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %51
  br label %60

56:                                               ; preds = %35
  %57 = load %struct.net_device*, %struct.net_device** %10, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_err(%struct.net_device* %57, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %56, %55
  br label %61

61:                                               ; preds = %60, %34
  ret void
}

declare dso_local %struct.netvsc_device* @hv_get_drvdata(%struct.hv_device*) #1

declare dso_local i32 @vmbus_sendpacket(i32, %struct.nvsp_message*, i32, i32, i32, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32, ...) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
