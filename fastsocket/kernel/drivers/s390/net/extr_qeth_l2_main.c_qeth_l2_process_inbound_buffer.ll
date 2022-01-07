; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_process_inbound_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_process_inbound_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_11__, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, i32, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32 (%struct.sk_buff*)* }
%struct.sk_buff = type { i32, i64, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_14__ = type { i64, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32* }
%struct.qeth_hdr = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }

@PACKET_HOST = common dso_local global i32 0, align 4
@NO_CHECKSUMMING = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@ETH_P_802_2 = common dso_local global i32 0, align 4
@QETH_CARD_TYPE_OSN = common dso_local global i32 0, align 4
@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"inbunkno\00", align 1
@CTRL = common dso_local global i32 0, align 4
@QETH_DBF_CTRL_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, i32, i32*)* @qeth_l2_process_inbound_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l2_process_inbound_buffer(%struct.qeth_card* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.qeth_hdr*, align 8
  %10 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load i32*, i32** %6, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  br label %17

17:                                               ; preds = %135, %126, %3
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %151

20:                                               ; preds = %17
  %21 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %22 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %23 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %22, i32 0, i32 7
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %29 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %28, i32 0, i32 6
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %27, i64 %31
  %33 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %34 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %33, i32 0, i32 6
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 2
  %36 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %37 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %36, i32 0, i32 6
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 1
  %39 = call %struct.sk_buff* @qeth_core_get_next_skb(%struct.qeth_card* %21, i32* %32, i32* %35, i32* %38, %struct.qeth_hdr** %9)
  store %struct.sk_buff* %39, %struct.sk_buff** %8, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %41 = icmp ne %struct.sk_buff* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %20
  %43 = load i32*, i32** %6, align 8
  store i32 1, i32* %43, align 4
  br label %151

44:                                               ; preds = %20
  %45 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %46 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 8
  %50 = load %struct.qeth_hdr*, %struct.qeth_hdr** %9, align 8
  %51 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %126 [
    i32 129, label %55
    i32 128, label %103
  ]

55:                                               ; preds = %44
  %56 = load i32, i32* @PACKET_HOST, align 4
  %57 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 5
  store i32 %56, i32* %58, align 4
  %59 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @eth_type_trans(%struct.sk_buff* %59, i32 %62)
  %64 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %67 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @NO_CHECKSUMMING, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %55
  %73 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %74 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  br label %80

76:                                               ; preds = %55
  %77 = load i32, i32* @CHECKSUM_NONE, align 4
  %78 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %76, %72
  %81 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @ETH_P_802_2, align 4
  %85 = call i32 @htons(i32 %84)
  %86 = icmp eq i32 %83, %85
  br i1 %86, label %87, label %97

87:                                               ; preds = %80
  %88 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %89 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  %93 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %94 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %95 to i32*
  store i32 %92, i32* %96, align 4
  br label %97

97:                                               ; preds = %87, %80
  %98 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %99 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  store i32 %100, i32* %10, align 4
  %101 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %102 = call i32 @netif_receive_skb(%struct.sk_buff* %101)
  br label %135

103:                                              ; preds = %44
  %104 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %105 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @QETH_CARD_TYPE_OSN, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %125

110:                                              ; preds = %103
  %111 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %112 = call i32 @skb_push(%struct.sk_buff* %111, i32 4)
  %113 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %114 = load %struct.qeth_hdr*, %struct.qeth_hdr** %9, align 8
  %115 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %113, %struct.qeth_hdr* %114, i32 4)
  %116 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %117 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  store i32 %118, i32* %10, align 4
  %119 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %120 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 0
  %122 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %121, align 8
  %123 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %124 = call i32 %122(%struct.sk_buff* %123)
  br label %135

125:                                              ; preds = %103
  br label %126

126:                                              ; preds = %44, %125
  %127 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %128 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %127)
  %129 = load i32, i32* @TRACE, align 4
  %130 = call i32 @QETH_DBF_TEXT(i32 %129, i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %131 = load i32, i32* @CTRL, align 4
  %132 = load %struct.qeth_hdr*, %struct.qeth_hdr** %9, align 8
  %133 = load i32, i32* @QETH_DBF_CTRL_LEN, align 4
  %134 = call i32 @QETH_DBF_HEX(i32 %131, i32 3, %struct.qeth_hdr* %132, i32 %133)
  br label %17

135:                                              ; preds = %110, %97
  %136 = load i32, i32* %7, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %7, align 4
  %138 = load i32, i32* %5, align 4
  %139 = add nsw i32 %138, -1
  store i32 %139, i32* %5, align 4
  %140 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %141 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %142, align 4
  %145 = load i32, i32* %10, align 4
  %146 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %147 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = add i32 %149, %145
  store i32 %150, i32* %148, align 8
  br label %17

151:                                              ; preds = %42, %17
  %152 = load i32, i32* %7, align 4
  ret i32 %152
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.sk_buff* @qeth_core_get_next_skb(%struct.qeth_card*, i32*, i32*, i32*, %struct.qeth_hdr**) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, %struct.qeth_hdr*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @QETH_DBF_HEX(i32, i32, %struct.qeth_hdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
