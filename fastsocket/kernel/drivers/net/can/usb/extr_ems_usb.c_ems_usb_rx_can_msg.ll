; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/usb/extr_ems_usb.c_ems_usb_rx_can_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/usb/extr_ems_usb.c_ems_usb_rx_can_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ems_usb = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32 }
%struct.ems_cpc_msg = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32, i32 }
%struct.can_frame = type { i32, i32*, i32 }
%struct.sk_buff = type { i32 }

@ETH_P_CAN = common dso_local global i32 0, align 4
@u8 = common dso_local global i32 0, align 4
@CPC_MSG_TYPE_EXT_CAN_FRAME = common dso_local global i64 0, align 8
@CPC_MSG_TYPE_EXT_RTR_FRAME = common dso_local global i64 0, align 8
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@CPC_MSG_TYPE_RTR_FRAME = common dso_local global i64 0, align 8
@CAN_RTR_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ems_usb*, %struct.ems_cpc_msg*)* @ems_usb_rx_can_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ems_usb_rx_can_msg(%struct.ems_usb* %0, %struct.ems_cpc_msg* %1) #0 {
  %3 = alloca %struct.ems_usb*, align 8
  %4 = alloca %struct.ems_cpc_msg*, align 8
  %5 = alloca %struct.can_frame*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device_stats*, align 8
  store %struct.ems_usb* %0, %struct.ems_usb** %3, align 8
  store %struct.ems_cpc_msg* %1, %struct.ems_cpc_msg** %4, align 8
  %9 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %10 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store %struct.net_device_stats* %12, %struct.net_device_stats** %8, align 8
  %13 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %14 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = call %struct.sk_buff* @netdev_alloc_skb(%struct.TYPE_6__* %15, i32 24)
  store %struct.sk_buff* %16, %struct.sk_buff** %6, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = icmp eq %struct.sk_buff* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %121

20:                                               ; preds = %2
  %21 = load i32, i32* @ETH_P_CAN, align 4
  %22 = call i32 @htons(i32 %21)
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = call i64 @skb_put(%struct.sk_buff* %25, i32 24)
  %27 = inttoptr i64 %26 to %struct.can_frame*
  store %struct.can_frame* %27, %struct.can_frame** %5, align 8
  %28 = load %struct.ems_cpc_msg*, %struct.ems_cpc_msg** %4, align 8
  %29 = getelementptr inbounds %struct.ems_cpc_msg, %struct.ems_cpc_msg* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @le32_to_cpu(i32 %32)
  %34 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %35 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @u8, align 4
  %37 = load %struct.ems_cpc_msg*, %struct.ems_cpc_msg** %4, align 8
  %38 = getelementptr inbounds %struct.ems_cpc_msg, %struct.ems_cpc_msg* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @min_t(i32 %36, i32 %41, i32 8)
  %43 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %44 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.ems_cpc_msg*, %struct.ems_cpc_msg** %4, align 8
  %46 = getelementptr inbounds %struct.ems_cpc_msg, %struct.ems_cpc_msg* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @CPC_MSG_TYPE_EXT_CAN_FRAME, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %56, label %50

50:                                               ; preds = %20
  %51 = load %struct.ems_cpc_msg*, %struct.ems_cpc_msg** %4, align 8
  %52 = getelementptr inbounds %struct.ems_cpc_msg, %struct.ems_cpc_msg* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @CPC_MSG_TYPE_EXT_RTR_FRAME, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %50, %20
  %57 = load i32, i32* @CAN_EFF_FLAG, align 4
  %58 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %59 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  br label %62

62:                                               ; preds = %56, %50
  %63 = load %struct.ems_cpc_msg*, %struct.ems_cpc_msg** %4, align 8
  %64 = getelementptr inbounds %struct.ems_cpc_msg, %struct.ems_cpc_msg* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @CPC_MSG_TYPE_RTR_FRAME, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %74, label %68

68:                                               ; preds = %62
  %69 = load %struct.ems_cpc_msg*, %struct.ems_cpc_msg** %4, align 8
  %70 = getelementptr inbounds %struct.ems_cpc_msg, %struct.ems_cpc_msg* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @CPC_MSG_TYPE_EXT_RTR_FRAME, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %68, %62
  %75 = load i32, i32* @CAN_RTR_FLAG, align 4
  %76 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %77 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 8
  br label %107

80:                                               ; preds = %68
  store i32 0, i32* %7, align 4
  br label %81

81:                                               ; preds = %103, %80
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %84 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %106

87:                                               ; preds = %81
  %88 = load %struct.ems_cpc_msg*, %struct.ems_cpc_msg** %4, align 8
  %89 = getelementptr inbounds %struct.ems_cpc_msg, %struct.ems_cpc_msg* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %98 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  store i32 %96, i32* %102, align 4
  br label %103

103:                                              ; preds = %87
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %7, align 4
  br label %81

106:                                              ; preds = %81
  br label %107

107:                                              ; preds = %106, %74
  %108 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %109 = call i32 @netif_rx(%struct.sk_buff* %108)
  %110 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %111 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 4
  %114 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %115 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %118 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, %116
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %107, %19
  ret void
}

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
