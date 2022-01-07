; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vfpf_storm_rx_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vfpf_storm_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { %struct.pfvf_general_resp_tlv }
%struct.pfvf_general_resp_tlv = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_8__ = type { %struct.vfpf_set_q_filters_tlv }
%struct.vfpf_set_q_filters_tlv = type { %struct.TYPE_13__, i64, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@CHANNEL_TLV_SET_Q_FILTERS = common dso_local global i32 0, align 4
@NETIF_MSG_IFUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Rx mode is %d\0A\00", align 1
@VFPF_RX_MASK_ACCEPT_NONE = common dso_local global i32 0, align 4
@VFPF_RX_MASK_ACCEPT_MATCHED_MULTICAST = common dso_local global i32 0, align 4
@VFPF_RX_MASK_ACCEPT_MATCHED_UNICAST = common dso_local global i32 0, align 4
@VFPF_RX_MASK_ACCEPT_BROADCAST = common dso_local global i32 0, align 4
@VFPF_RX_MASK_ACCEPT_ALL_MULTICAST = common dso_local global i32 0, align 4
@VFPF_RX_MASK_ACCEPT_ALL_UNICAST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"BAD rx mode (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VFPF_SET_Q_FILTERS_RX_MASK_CHANGED = common dso_local global i32 0, align 4
@CHANNEL_TLV_LIST_END = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Sending a message failed: %d\0A\00", align 1
@PFVF_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Set Rx mode failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_vfpf_storm_rx_mode(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.vfpf_set_q_filters_tlv*, align 8
  %5 = alloca %struct.pfvf_general_resp_tlv*, align 8
  %6 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %7 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %8 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %3, align 4
  %10 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %11 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %10, i32 0, i32 2
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  store %struct.vfpf_set_q_filters_tlv* %14, %struct.vfpf_set_q_filters_tlv** %4, align 8
  %15 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %16 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %15, i32 0, i32 2
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  store %struct.pfvf_general_resp_tlv* %19, %struct.pfvf_general_resp_tlv** %5, align 8
  %20 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %21 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %4, align 8
  %22 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %21, i32 0, i32 0
  %23 = load i32, i32* @CHANNEL_TLV_SET_Q_FILTERS, align 4
  %24 = call i32 @bnx2x_vfpf_prep(%struct.bnx2x* %20, %struct.TYPE_13__* %22, i32 %23, i32 24)
  %25 = load i32, i32* @NETIF_MSG_IFUP, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @DP(i32 %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %3, align 4
  switch i32 %28, label %75 [
    i32 130, label %29
    i32 129, label %33
    i32 131, label %47
    i32 128, label %61
  ]

29:                                               ; preds = %1
  %30 = load i32, i32* @VFPF_RX_MASK_ACCEPT_NONE, align 4
  %31 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %4, align 8
  %32 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  br label %80

33:                                               ; preds = %1
  %34 = load i32, i32* @VFPF_RX_MASK_ACCEPT_MATCHED_MULTICAST, align 4
  %35 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %4, align 8
  %36 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @VFPF_RX_MASK_ACCEPT_MATCHED_UNICAST, align 4
  %38 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %4, align 8
  %39 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* @VFPF_RX_MASK_ACCEPT_BROADCAST, align 4
  %43 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %4, align 8
  %44 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %80

47:                                               ; preds = %1
  %48 = load i32, i32* @VFPF_RX_MASK_ACCEPT_ALL_MULTICAST, align 4
  %49 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %4, align 8
  %50 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @VFPF_RX_MASK_ACCEPT_MATCHED_UNICAST, align 4
  %52 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %4, align 8
  %53 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load i32, i32* @VFPF_RX_MASK_ACCEPT_BROADCAST, align 4
  %57 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %4, align 8
  %58 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %80

61:                                               ; preds = %1
  %62 = load i32, i32* @VFPF_RX_MASK_ACCEPT_ALL_UNICAST, align 4
  %63 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %4, align 8
  %64 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @VFPF_RX_MASK_ACCEPT_ALL_MULTICAST, align 4
  %66 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %4, align 8
  %67 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* @VFPF_RX_MASK_ACCEPT_BROADCAST, align 4
  %71 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %4, align 8
  %72 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %80

75:                                               ; preds = %1
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %6, align 4
  br label %129

80:                                               ; preds = %61, %47, %33, %29
  %81 = load i32, i32* @VFPF_SET_Q_FILTERS_RX_MASK_CHANGED, align 4
  %82 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %4, align 8
  %83 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  %86 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %4, align 8
  %87 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %86, i32 0, i32 1
  store i64 0, i64* %87, align 8
  %88 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %89 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %4, align 8
  %90 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %4, align 8
  %91 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @CHANNEL_TLV_LIST_END, align 4
  %96 = call i32 @bnx2x_add_tlv(%struct.bnx2x* %88, %struct.vfpf_set_q_filters_tlv* %89, i32 %94, i32 %95, i32 4)
  %97 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %98 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %4, align 8
  %99 = call i32 @bnx2x_dp_tlv_list(%struct.bnx2x* %97, %struct.vfpf_set_q_filters_tlv* %98)
  %100 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %101 = load %struct.pfvf_general_resp_tlv*, %struct.pfvf_general_resp_tlv** %5, align 8
  %102 = getelementptr inbounds %struct.pfvf_general_resp_tlv, %struct.pfvf_general_resp_tlv* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %105 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @bnx2x_send_msg2pf(%struct.bnx2x* %100, i32* %103, i32 %106)
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %80
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %111)
  br label %113

113:                                              ; preds = %110, %80
  %114 = load %struct.pfvf_general_resp_tlv*, %struct.pfvf_general_resp_tlv** %5, align 8
  %115 = getelementptr inbounds %struct.pfvf_general_resp_tlv, %struct.pfvf_general_resp_tlv* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @PFVF_STATUS_SUCCESS, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %128

120:                                              ; preds = %113
  %121 = load %struct.pfvf_general_resp_tlv*, %struct.pfvf_general_resp_tlv** %5, align 8
  %122 = getelementptr inbounds %struct.pfvf_general_resp_tlv, %struct.pfvf_general_resp_tlv* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %6, align 4
  br label %128

128:                                              ; preds = %120, %113
  br label %129

129:                                              ; preds = %128, %75
  %130 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %131 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %4, align 8
  %132 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %131, i32 0, i32 0
  %133 = call i32 @bnx2x_vfpf_finalize(%struct.bnx2x* %130, %struct.TYPE_13__* %132)
  %134 = load i32, i32* %6, align 4
  ret i32 %134
}

declare dso_local i32 @bnx2x_vfpf_prep(%struct.bnx2x*, %struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @DP(i32, i8*, i32) #1

declare dso_local i32 @BNX2X_ERR(i8*, i32) #1

declare dso_local i32 @bnx2x_add_tlv(%struct.bnx2x*, %struct.vfpf_set_q_filters_tlv*, i32, i32, i32) #1

declare dso_local i32 @bnx2x_dp_tlv_list(%struct.bnx2x*, %struct.vfpf_set_q_filters_tlv*) #1

declare dso_local i32 @bnx2x_send_msg2pf(%struct.bnx2x*, i32*, i32) #1

declare dso_local i32 @bnx2x_vfpf_finalize(%struct.bnx2x*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
