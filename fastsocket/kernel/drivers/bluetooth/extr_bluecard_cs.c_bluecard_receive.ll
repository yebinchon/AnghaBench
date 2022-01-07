; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_bluecard_cs.c_bluecard_receive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_bluecard_cs.c_bluecard_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i64, %struct.TYPE_22__*, %struct.TYPE_24__*, i32, %struct.TYPE_20__* }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_24__ = type { i8* }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.hci_event_hdr = type { i64 }
%struct.hci_acl_hdr = type { i32 }
%struct.hci_sco_hdr = type { i32 }
%struct.TYPE_18__ = type { i8 }

@.str = private unnamed_addr constant [15 x i8] c"Unknown device\00", align 1
@XMIT_SENDING_READY = common dso_local global i32 0, align 4
@RECV_WAIT_PACKET_TYPE = common dso_local global i32 0, align 4
@HCI_MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Can't allocate mem for new packet\00", align 1
@XMIT_BUF_ONE_READY = common dso_local global i32 0, align 4
@XMIT_BUF_TWO_READY = common dso_local global i32 0, align 4
@HCI_EVENT_HDR_SIZE = common dso_local global i64 0, align 8
@HCI_ACL_HDR_SIZE = common dso_local global i64 0, align 8
@HCI_SCO_HDR_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"Unknown HCI packet with type 0x%02x received\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*, i32)* @bluecard_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bluecard_receive(%struct.TYPE_23__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [31 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hci_event_hdr*, align 8
  %11 = alloca %struct.hci_acl_hdr*, align 8
  %12 = alloca %struct.hci_sco_hdr*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %14 = icmp ne %struct.TYPE_23__* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %241

17:                                               ; preds = %2
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 5
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @XMIT_SENDING_READY, align 4
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 4
  %27 = call i64 @test_bit(i32 %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %17
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %31 = call i32 @bluecard_enable_activity_led(%struct.TYPE_23__* %30)
  br label %32

32:                                               ; preds = %29, %17
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %4, align 4
  %35 = getelementptr inbounds [31 x i8], [31 x i8]* %6, i64 0, i64 0
  %36 = call i32 @bluecard_read(i32 %33, i32 %34, i8* %35, i32 31)
  store i32 %36, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %229, %32
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %232

41:                                               ; preds = %37
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** %43, align 8
  %45 = icmp eq %struct.TYPE_24__* %44, null
  br i1 %45, label %46, label %61

46:                                               ; preds = %41
  %47 = load i32, i32* @RECV_WAIT_PACKET_TYPE, align 4
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = load i32, i32* @HCI_MAX_FRAME_SIZE, align 4
  %53 = load i32, i32* @GFP_ATOMIC, align 4
  %54 = call %struct.TYPE_24__* @bt_skb_alloc(i32 %52, i32 %53)
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 3
  store %struct.TYPE_24__* %54, %struct.TYPE_24__** %56, align 8
  %57 = icmp ne %struct.TYPE_24__* %54, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %46
  %59 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %241

60:                                               ; preds = %46
  br label %61

61:                                               ; preds = %60, %41
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @RECV_WAIT_PACKET_TYPE, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %158

67:                                               ; preds = %61
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %69, align 8
  %71 = bitcast %struct.TYPE_22__* %70 to i8*
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 3
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %74, i32 0, i32 0
  store i8* %71, i8** %75, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [31 x i8], [31 x i8]* %6, i64 0, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 3
  %82 = load %struct.TYPE_24__*, %struct.TYPE_24__** %81, align 8
  %83 = call %struct.TYPE_18__* @bt_cb(%struct.TYPE_24__* %82)
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  store i8 %79, i8* %84, align 1
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %85, i32 0, i32 3
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %86, align 8
  %88 = call %struct.TYPE_18__* @bt_cb(%struct.TYPE_24__* %87)
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 0
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  switch i32 %91, label %135 [
    i32 0, label %92
    i32 133, label %117
    i32 134, label %123
    i32 132, label %129
  ]

92:                                               ; preds = %67
  %93 = load i32, i32* %4, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %110

95:                                               ; preds = %92
  %96 = load i32, i32* @XMIT_BUF_ONE_READY, align 4
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i32 0, i32 4
  %99 = call i32 @set_bit(i32 %96, i32* %98)
  %100 = load i32, i32* @XMIT_BUF_TWO_READY, align 4
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 4
  %103 = call i32 @set_bit(i32 %100, i32* %102)
  %104 = load i32, i32* @XMIT_SENDING_READY, align 4
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 4
  %107 = call i32 @set_bit(i32 %104, i32* %106)
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %109 = call i32 @bluecard_write_wakeup(%struct.TYPE_23__* %108)
  br label %110

110:                                              ; preds = %95, %92
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 3
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %112, align 8
  %114 = call i32 @kfree_skb(%struct.TYPE_24__* %113)
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 3
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %116, align 8
  br label %157

117:                                              ; preds = %67
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %118, i32 0, i32 0
  store i32 129, i32* %119, align 8
  %120 = load i64, i64* @HCI_EVENT_HDR_SIZE, align 8
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i32 0, i32 1
  store i64 %120, i64* %122, align 8
  br label %157

123:                                              ; preds = %67
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i32 0, i32 0
  store i32 131, i32* %125, align 8
  %126 = load i64, i64* @HCI_ACL_HDR_SIZE, align 8
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %127, i32 0, i32 1
  store i64 %126, i64* %128, align 8
  br label %157

129:                                              ; preds = %67
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %130, i32 0, i32 0
  store i32 128, i32* %131, align 8
  %132 = load i64, i64* @HCI_SCO_HDR_SIZE, align 8
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %133, i32 0, i32 1
  store i64 %132, i64* %134, align 8
  br label %157

135:                                              ; preds = %67
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 3
  %138 = load %struct.TYPE_24__*, %struct.TYPE_24__** %137, align 8
  %139 = call %struct.TYPE_18__* @bt_cb(%struct.TYPE_24__* %138)
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 0
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %142)
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %144, i32 0, i32 2
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %148, align 4
  %151 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %151, i32 0, i32 3
  %153 = load %struct.TYPE_24__*, %struct.TYPE_24__** %152, align 8
  %154 = call i32 @kfree_skb(%struct.TYPE_24__* %153)
  %155 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %155, i32 0, i32 3
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %156, align 8
  br label %157

157:                                              ; preds = %135, %129, %123, %117, %110
  br label %228

158:                                              ; preds = %61
  %159 = load i32, i32* %7, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [31 x i8], [31 x i8]* %6, i64 0, i64 %160
  %162 = load i8, i8* %161, align 1
  %163 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %163, i32 0, i32 3
  %165 = load %struct.TYPE_24__*, %struct.TYPE_24__** %164, align 8
  %166 = call i8* @skb_put(%struct.TYPE_24__* %165, i32 1)
  store i8 %162, i8* %166, align 1
  %167 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = add nsw i64 %169, -1
  store i64 %170, i64* %168, align 8
  %171 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %227

175:                                              ; preds = %158
  %176 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  switch i32 %178, label %226 [
    i32 129, label %179
    i32 131, label %191
    i32 128, label %206
    i32 130, label %219
  ]

179:                                              ; preds = %175
  %180 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %180, i32 0, i32 3
  %182 = load %struct.TYPE_24__*, %struct.TYPE_24__** %181, align 8
  %183 = call %struct.hci_event_hdr* @hci_event_hdr(%struct.TYPE_24__* %182)
  store %struct.hci_event_hdr* %183, %struct.hci_event_hdr** %10, align 8
  %184 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %184, i32 0, i32 0
  store i32 130, i32* %185, align 8
  %186 = load %struct.hci_event_hdr*, %struct.hci_event_hdr** %10, align 8
  %187 = getelementptr inbounds %struct.hci_event_hdr, %struct.hci_event_hdr* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %189, i32 0, i32 1
  store i64 %188, i64* %190, align 8
  br label %226

191:                                              ; preds = %175
  %192 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %192, i32 0, i32 3
  %194 = load %struct.TYPE_24__*, %struct.TYPE_24__** %193, align 8
  %195 = call %struct.hci_acl_hdr* @hci_acl_hdr(%struct.TYPE_24__* %194)
  store %struct.hci_acl_hdr* %195, %struct.hci_acl_hdr** %11, align 8
  %196 = load %struct.hci_acl_hdr*, %struct.hci_acl_hdr** %11, align 8
  %197 = getelementptr inbounds %struct.hci_acl_hdr, %struct.hci_acl_hdr* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @__le16_to_cpu(i32 %198)
  store i32 %199, i32* %9, align 4
  %200 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %200, i32 0, i32 0
  store i32 130, i32* %201, align 8
  %202 = load i32, i32* %9, align 4
  %203 = sext i32 %202 to i64
  %204 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %204, i32 0, i32 1
  store i64 %203, i64* %205, align 8
  br label %226

206:                                              ; preds = %175
  %207 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %207, i32 0, i32 3
  %209 = load %struct.TYPE_24__*, %struct.TYPE_24__** %208, align 8
  %210 = call %struct.hci_sco_hdr* @hci_sco_hdr(%struct.TYPE_24__* %209)
  store %struct.hci_sco_hdr* %210, %struct.hci_sco_hdr** %12, align 8
  %211 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %211, i32 0, i32 0
  store i32 130, i32* %212, align 8
  %213 = load %struct.hci_sco_hdr*, %struct.hci_sco_hdr** %12, align 8
  %214 = getelementptr inbounds %struct.hci_sco_hdr, %struct.hci_sco_hdr* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = sext i32 %215 to i64
  %217 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %217, i32 0, i32 1
  store i64 %216, i64* %218, align 8
  br label %226

219:                                              ; preds = %175
  %220 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %220, i32 0, i32 3
  %222 = load %struct.TYPE_24__*, %struct.TYPE_24__** %221, align 8
  %223 = call i32 @hci_recv_frame(%struct.TYPE_24__* %222)
  %224 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %224, i32 0, i32 3
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %225, align 8
  br label %226

226:                                              ; preds = %175, %219, %206, %191, %179
  br label %227

227:                                              ; preds = %226, %158
  br label %228

228:                                              ; preds = %227, %157
  br label %229

229:                                              ; preds = %228
  %230 = load i32, i32* %7, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %7, align 4
  br label %37

232:                                              ; preds = %37
  %233 = load i32, i32* %8, align 4
  %234 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %234, i32 0, i32 2
  %236 = load %struct.TYPE_22__*, %struct.TYPE_22__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = add nsw i32 %239, %233
  store i32 %240, i32* %238, align 4
  br label %241

241:                                              ; preds = %232, %58, %15
  ret void
}

declare dso_local i32 @BT_ERR(i8*, ...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @bluecard_enable_activity_led(%struct.TYPE_23__*) #1

declare dso_local i32 @bluecard_read(i32, i32, i8*, i32) #1

declare dso_local %struct.TYPE_24__* @bt_skb_alloc(i32, i32) #1

declare dso_local %struct.TYPE_18__* @bt_cb(%struct.TYPE_24__*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @bluecard_write_wakeup(%struct.TYPE_23__*) #1

declare dso_local i32 @kfree_skb(%struct.TYPE_24__*) #1

declare dso_local i8* @skb_put(%struct.TYPE_24__*, i32) #1

declare dso_local %struct.hci_event_hdr* @hci_event_hdr(%struct.TYPE_24__*) #1

declare dso_local %struct.hci_acl_hdr* @hci_acl_hdr(%struct.TYPE_24__*) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local %struct.hci_sco_hdr* @hci_sco_hdr(%struct.TYPE_24__*) #1

declare dso_local i32 @hci_recv_frame(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
