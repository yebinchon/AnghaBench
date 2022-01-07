; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btuart_cs.c_btuart_receive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btuart_cs.c_btuart_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i64, %struct.TYPE_22__*, %struct.TYPE_20__*, %struct.TYPE_18__* }
%struct.TYPE_22__ = type { i8* }
%struct.TYPE_20__ = type { i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.hci_event_hdr = type { i64 }
%struct.hci_acl_hdr = type { i32 }
%struct.hci_sco_hdr = type { i32 }
%struct.TYPE_16__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"Unknown device\00", align 1
@RECV_WAIT_PACKET_TYPE = common dso_local global i32 0, align 4
@HCI_MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Can't allocate mem for new packet\00", align 1
@UART_RX = common dso_local global i64 0, align 8
@HCI_EVENT_HDR_SIZE = common dso_local global i64 0, align 8
@HCI_ACL_HDR_SIZE = common dso_local global i64 0, align 8
@HCI_SCO_HDR_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"Unknown HCI packet with type 0x%02x received\00", align 1
@HCI_RUNNING = common dso_local global i32 0, align 4
@UART_LSR = common dso_local global i64 0, align 8
@UART_LSR_DR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*)* @btuart_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btuart_receive(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.hci_event_hdr*, align 8
  %7 = alloca %struct.hci_acl_hdr*, align 8
  %8 = alloca %struct.hci_sco_hdr*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %10 = icmp ne %struct.TYPE_21__* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %210

13:                                               ; preds = %1
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 4
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %201, %13
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %29, align 8
  %31 = icmp eq %struct.TYPE_22__* %30, null
  br i1 %31, label %32, label %47

32:                                               ; preds = %20
  %33 = load i32, i32* @RECV_WAIT_PACKET_TYPE, align 4
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* @HCI_MAX_FRAME_SIZE, align 4
  %39 = load i32, i32* @GFP_ATOMIC, align 4
  %40 = call %struct.TYPE_22__* @bt_skb_alloc(i32 %38, i32 %39)
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 2
  store %struct.TYPE_22__* %40, %struct.TYPE_22__** %42, align 8
  %43 = icmp ne %struct.TYPE_22__* %40, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %32
  %45 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %210

46:                                               ; preds = %32
  br label %47

47:                                               ; preds = %46, %20
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @RECV_WAIT_PACKET_TYPE, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %124

53:                                               ; preds = %47
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 3
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %55, align 8
  %57 = bitcast %struct.TYPE_20__* %56 to i8*
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i32 0, i32 0
  store i8* %57, i8** %61, align 8
  %62 = load i32, i32* %3, align 4
  %63 = zext i32 %62 to i64
  %64 = load i64, i64* @UART_RX, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @inb(i64 %65)
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %68, align 8
  %70 = call %struct.TYPE_16__* @bt_cb(%struct.TYPE_22__* %69)
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  store i32 %66, i32* %71, align 4
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %73, align 8
  %75 = call %struct.TYPE_16__* @bt_cb(%struct.TYPE_22__* %74)
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  switch i32 %77, label %96 [
    i32 133, label %78
    i32 134, label %84
    i32 132, label %90
  ]

78:                                               ; preds = %53
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 0
  store i32 129, i32* %80, align 8
  %81 = load i64, i64* @HCI_EVENT_HDR_SIZE, align 8
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 1
  store i64 %81, i64* %83, align 8
  br label %123

84:                                               ; preds = %53
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 0
  store i32 131, i32* %86, align 8
  %87 = load i64, i64* @HCI_ACL_HDR_SIZE, align 8
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 1
  store i64 %87, i64* %89, align 8
  br label %123

90:                                               ; preds = %53
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 0
  store i32 128, i32* %92, align 8
  %93 = load i64, i64* @HCI_SCO_HDR_SIZE, align 8
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 1
  store i64 %93, i64* %95, align 8
  br label %123

96:                                               ; preds = %53
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %98, align 8
  %100 = call %struct.TYPE_16__* @bt_cb(%struct.TYPE_22__* %99)
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %102)
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 3
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 4
  %111 = load i32, i32* @HCI_RUNNING, align 4
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 3
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 0
  %116 = call i32 @clear_bit(i32 %111, i32* %115)
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %118, align 8
  %120 = call i32 @kfree_skb(%struct.TYPE_22__* %119)
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 2
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %122, align 8
  br label %123

123:                                              ; preds = %96, %90, %84, %78
  br label %195

124:                                              ; preds = %47
  %125 = load i32, i32* %3, align 4
  %126 = zext i32 %125 to i64
  %127 = load i64, i64* @UART_RX, align 8
  %128 = add nsw i64 %126, %127
  %129 = call i32 @inb(i64 %128)
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 2
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %131, align 8
  %133 = call i32* @skb_put(%struct.TYPE_22__* %132, i32 1)
  store i32 %129, i32* %133, align 4
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %136, -1
  store i64 %137, i64* %135, align 8
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %194

142:                                              ; preds = %124
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  switch i32 %145, label %193 [
    i32 129, label %146
    i32 131, label %158
    i32 128, label %173
    i32 130, label %186
  ]

146:                                              ; preds = %142
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 2
  %149 = load %struct.TYPE_22__*, %struct.TYPE_22__** %148, align 8
  %150 = call %struct.hci_event_hdr* @hci_event_hdr(%struct.TYPE_22__* %149)
  store %struct.hci_event_hdr* %150, %struct.hci_event_hdr** %6, align 8
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 0
  store i32 130, i32* %152, align 8
  %153 = load %struct.hci_event_hdr*, %struct.hci_event_hdr** %6, align 8
  %154 = getelementptr inbounds %struct.hci_event_hdr, %struct.hci_event_hdr* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 1
  store i64 %155, i64* %157, align 8
  br label %193

158:                                              ; preds = %142
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %159, i32 0, i32 2
  %161 = load %struct.TYPE_22__*, %struct.TYPE_22__** %160, align 8
  %162 = call %struct.hci_acl_hdr* @hci_acl_hdr(%struct.TYPE_22__* %161)
  store %struct.hci_acl_hdr* %162, %struct.hci_acl_hdr** %7, align 8
  %163 = load %struct.hci_acl_hdr*, %struct.hci_acl_hdr** %7, align 8
  %164 = getelementptr inbounds %struct.hci_acl_hdr, %struct.hci_acl_hdr* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @__le16_to_cpu(i32 %165)
  store i32 %166, i32* %5, align 4
  %167 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %167, i32 0, i32 0
  store i32 130, i32* %168, align 8
  %169 = load i32, i32* %5, align 4
  %170 = sext i32 %169 to i64
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 1
  store i64 %170, i64* %172, align 8
  br label %193

173:                                              ; preds = %142
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i32 0, i32 2
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %175, align 8
  %177 = call %struct.hci_sco_hdr* @hci_sco_hdr(%struct.TYPE_22__* %176)
  store %struct.hci_sco_hdr* %177, %struct.hci_sco_hdr** %8, align 8
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %178, i32 0, i32 0
  store i32 130, i32* %179, align 8
  %180 = load %struct.hci_sco_hdr*, %struct.hci_sco_hdr** %8, align 8
  %181 = getelementptr inbounds %struct.hci_sco_hdr, %struct.hci_sco_hdr* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = sext i32 %182 to i64
  %184 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %185 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %184, i32 0, i32 1
  store i64 %183, i64* %185, align 8
  br label %193

186:                                              ; preds = %142
  %187 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %188 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %187, i32 0, i32 2
  %189 = load %struct.TYPE_22__*, %struct.TYPE_22__** %188, align 8
  %190 = call i32 @hci_recv_frame(%struct.TYPE_22__* %189)
  %191 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %192 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %191, i32 0, i32 2
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %192, align 8
  br label %193

193:                                              ; preds = %142, %186, %173, %158, %146
  br label %194

194:                                              ; preds = %193, %124
  br label %195

195:                                              ; preds = %194, %123
  %196 = load i32, i32* %4, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %4, align 4
  %198 = icmp sgt i32 %196, 16
  br i1 %198, label %199, label %200

199:                                              ; preds = %195
  br label %210

200:                                              ; preds = %195
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %3, align 4
  %203 = zext i32 %202 to i64
  %204 = load i64, i64* @UART_LSR, align 8
  %205 = add nsw i64 %203, %204
  %206 = call i32 @inb(i64 %205)
  %207 = load i32, i32* @UART_LSR_DR, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %20, label %210

210:                                              ; preds = %11, %44, %201, %199
  ret void
}

declare dso_local i32 @BT_ERR(i8*, ...) #1

declare dso_local %struct.TYPE_22__* @bt_skb_alloc(i32, i32) #1

declare dso_local i32 @inb(i64) #1

declare dso_local %struct.TYPE_16__* @bt_cb(%struct.TYPE_22__*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @kfree_skb(%struct.TYPE_22__*) #1

declare dso_local i32* @skb_put(%struct.TYPE_22__*, i32) #1

declare dso_local %struct.hci_event_hdr* @hci_event_hdr(%struct.TYPE_22__*) #1

declare dso_local %struct.hci_acl_hdr* @hci_acl_hdr(%struct.TYPE_22__*) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local %struct.hci_sco_hdr* @hci_sco_hdr(%struct.TYPE_22__*) #1

declare dso_local i32 @hci_recv_frame(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
