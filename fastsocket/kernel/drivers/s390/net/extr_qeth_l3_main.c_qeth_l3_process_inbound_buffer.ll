; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_process_inbound_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_process_inbound_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_21__, i32, i32, %struct.TYPE_20__, %struct.TYPE_12__*, %struct.TYPE_18__, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 (%struct.sk_buff*, %struct.TYPE_12__*, i32, i32, i8*, i32)* }
%struct.sk_buff = type { i32, %struct.TYPE_12__*, i32, i8*, i32, i64 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_15__ = type { i64, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32* }
%struct.qeth_hdr = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }

@QETH_CARD_TYPE_IQD = common dso_local global i32 0, align 4
@ETH_P_AF_IUCV = common dso_local global i32 0, align 4
@PACKET_HOST = common dso_local global i8* null, align 8
@NET_SKB_PAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"FAKELL\00", align 1
@TRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"inbunkno\00", align 1
@CTRL = common dso_local global i32 0, align 4
@QETH_DBF_CTRL_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, i32, i32*)* @qeth_l3_process_inbound_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_process_inbound_buffer(%struct.qeth_card* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.qeth_hdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %14 = load i32*, i32** %6, align 8
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  br label %20

20:                                               ; preds = %173, %164, %3
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %189

23:                                               ; preds = %20
  %24 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %25 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %26 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %25, i32 0, i32 7
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %32 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %31, i32 0, i32 6
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32, i32* %30, i64 %34
  %36 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %37 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %36, i32 0, i32 6
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 2
  %39 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %40 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %39, i32 0, i32 6
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 1
  %42 = call %struct.sk_buff* @qeth_core_get_next_skb(%struct.qeth_card* %24, i32* %35, i32* %38, i32* %41, %struct.qeth_hdr** %9)
  store %struct.sk_buff* %42, %struct.sk_buff** %8, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %44 = icmp ne %struct.sk_buff* %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %23
  %46 = load i32*, i32** %6, align 8
  store i32 1, i32* %46, align 4
  br label %189

47:                                               ; preds = %23
  %48 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %49 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %48, i32 0, i32 4
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 1
  store %struct.TYPE_12__* %50, %struct.TYPE_12__** %52, align 8
  %53 = load %struct.qeth_hdr*, %struct.qeth_hdr** %9, align 8
  %54 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  switch i32 %57, label %164 [
    i32 128, label %58
    i32 129, label %148
  ]

58:                                               ; preds = %47
  %59 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 5
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i32*
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %13, align 4
  %64 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %65 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %64, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @QETH_CARD_TYPE_IQD, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %116

70:                                               ; preds = %58
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* @ETH_P_AF_IUCV, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %116

74:                                               ; preds = %70
  %75 = load i32, i32* @ETH_P_AF_IUCV, align 4
  %76 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %77 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load i8*, i8** @PACKET_HOST, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %80 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %79, i32 0, i32 3
  store i8* %78, i8** %80, align 8
  %81 = load i32, i32* @NET_SKB_PAD, align 4
  %82 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %83 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 8
  %84 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %85 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %84, i32 0, i32 4
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %85, align 8
  %87 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %88 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %87, i32 0, i32 1
  store %struct.TYPE_12__* %86, %struct.TYPE_12__** %88, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %90 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  store i32 %91, i32* %12, align 4
  %92 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %93 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %92, i32 0, i32 4
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 2
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 0
  %98 = load i32 (%struct.sk_buff*, %struct.TYPE_12__*, i32, i32, i8*, i32)*, i32 (%struct.sk_buff*, %struct.TYPE_12__*, i32, i32, i8*, i32)** %97, align 8
  %99 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %100 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %101 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %100, i32 0, i32 4
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %101, align 8
  %103 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %104 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %103, i32 0, i32 4
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %109 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %108, i32 0, i32 4
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 %98(%struct.sk_buff* %99, %struct.TYPE_12__* %102, i32 0, i32 %107, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %112)
  %114 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %115 = call i32 @netif_receive_skb(%struct.sk_buff* %114)
  br label %147

116:                                              ; preds = %70, %58
  %117 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %118 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %119 = load %struct.qeth_hdr*, %struct.qeth_hdr** %9, align 8
  %120 = call i32 @qeth_l3_rebuild_skb(%struct.qeth_card* %117, %struct.sk_buff* %118, %struct.qeth_hdr* %119, i32* %10)
  store i32 %120, i32* %11, align 4
  %121 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %122 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %11, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %141

126:                                              ; preds = %116
  %127 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %128 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %141, label %132

132:                                              ; preds = %126
  %133 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %134 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %133, i32 0, i32 1
  %135 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %136 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %10, align 4
  %139 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %140 = call i32 @vlan_gro_receive(i32* %134, i32 %137, i32 %138, %struct.sk_buff* %139)
  br label %146

141:                                              ; preds = %126, %116
  %142 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %143 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %142, i32 0, i32 1
  %144 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %145 = call i32 @napi_gro_receive(i32* %143, %struct.sk_buff* %144)
  br label %146

146:                                              ; preds = %141, %132
  br label %147

147:                                              ; preds = %146, %74
  br label %173

148:                                              ; preds = %47
  %149 = load i8*, i8** @PACKET_HOST, align 8
  %150 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %151 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %150, i32 0, i32 3
  store i8* %149, i8** %151, align 8
  %152 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %153 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %154 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %153, i32 0, i32 1
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %154, align 8
  %156 = call i32 @eth_type_trans(%struct.sk_buff* %152, %struct.TYPE_12__* %155)
  %157 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %158 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %157, i32 0, i32 2
  store i32 %156, i32* %158, align 8
  %159 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %160 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  store i32 %161, i32* %12, align 4
  %162 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %163 = call i32 @netif_receive_skb(%struct.sk_buff* %162)
  br label %173

164:                                              ; preds = %47
  %165 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %166 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %165)
  %167 = load i32, i32* @TRACE, align 4
  %168 = call i32 @QETH_DBF_TEXT(i32 %167, i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %169 = load i32, i32* @CTRL, align 4
  %170 = load %struct.qeth_hdr*, %struct.qeth_hdr** %9, align 8
  %171 = load i32, i32* @QETH_DBF_CTRL_LEN, align 4
  %172 = call i32 @QETH_DBF_HEX(i32 %169, i32 3, %struct.qeth_hdr* %170, i32 %171)
  br label %20

173:                                              ; preds = %148, %147
  %174 = load i32, i32* %7, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %7, align 4
  %176 = load i32, i32* %5, align 4
  %177 = add nsw i32 %176, -1
  store i32 %177, i32* %5, align 4
  %178 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %179 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %180, align 4
  %183 = load i32, i32* %12, align 4
  %184 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %185 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = add i32 %187, %183
  store i32 %188, i32* %186, align 8
  br label %20

189:                                              ; preds = %45, %20
  %190 = load i32, i32* %7, align 4
  ret i32 %190
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.sk_buff* @qeth_core_get_next_skb(%struct.qeth_card*, i32*, i32*, i32*, %struct.qeth_hdr**) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

declare dso_local i32 @qeth_l3_rebuild_skb(%struct.qeth_card*, %struct.sk_buff*, %struct.qeth_hdr*, i32*) #1

declare dso_local i32 @vlan_gro_receive(i32*, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.TYPE_12__*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @QETH_DBF_HEX(i32, i32, %struct.qeth_hdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
