; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_bt3c_cs.c_bt3c_receive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_bt3c_cs.c_bt3c_receive.c"
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
@DATA_L = common dso_local global i64 0, align 8
@DATA_H = common dso_local global i64 0, align 8
@HCI_EVENT_HDR_SIZE = common dso_local global i64 0, align 8
@HCI_ACL_HDR_SIZE = common dso_local global i64 0, align 8
@HCI_SCO_HDR_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"Unknown HCI packet with type 0x%02x received\00", align 1
@HCI_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*)* @bt3c_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bt3c_receive(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hci_event_hdr*, align 8
  %9 = alloca %struct.hci_acl_hdr*, align 8
  %10 = alloca %struct.hci_sco_hdr*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  store i32 0, i32* %4, align 4
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %12 = icmp ne %struct.TYPE_21__* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %223

15:                                               ; preds = %1
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 4
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @bt3c_read(i32 %22, i32 28678)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @bt3c_address(i32 %24, i32 29824)
  br label %26

26:                                               ; preds = %219, %15
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %220

30:                                               ; preds = %26
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %41, align 8
  %43 = icmp eq %struct.TYPE_22__* %42, null
  br i1 %43, label %44, label %59

44:                                               ; preds = %30
  %45 = load i32, i32* @RECV_WAIT_PACKET_TYPE, align 4
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = load i32, i32* @HCI_MAX_FRAME_SIZE, align 4
  %51 = load i32, i32* @GFP_ATOMIC, align 4
  %52 = call %struct.TYPE_22__* @bt_skb_alloc(i32 %50, i32 %51)
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 2
  store %struct.TYPE_22__* %52, %struct.TYPE_22__** %54, align 8
  %55 = icmp ne %struct.TYPE_22__* %52, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %44
  %57 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %223

58:                                               ; preds = %44
  br label %59

59:                                               ; preds = %58, %30
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @RECV_WAIT_PACKET_TYPE, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %142

65:                                               ; preds = %59
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 3
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %67, align 8
  %69 = bitcast %struct.TYPE_20__* %68 to i8*
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 0
  store i8* %69, i8** %73, align 8
  %74 = load i32, i32* %3, align 4
  %75 = zext i32 %74 to i64
  %76 = load i64, i64* @DATA_L, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i8* @inb(i64 %77)
  %79 = ptrtoint i8* %78 to i32
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %81, align 8
  %83 = call %struct.TYPE_16__* @bt_cb(%struct.TYPE_22__* %82)
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  store i32 %79, i32* %84, align 4
  %85 = load i32, i32* %3, align 4
  %86 = zext i32 %85 to i64
  %87 = load i64, i64* @DATA_H, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i8* @inb(i64 %88)
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %91, align 8
  %93 = call %struct.TYPE_16__* @bt_cb(%struct.TYPE_22__* %92)
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  switch i32 %95, label %114 [
    i32 133, label %96
    i32 134, label %102
    i32 132, label %108
  ]

96:                                               ; preds = %65
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 0
  store i32 129, i32* %98, align 8
  %99 = load i64, i64* @HCI_EVENT_HDR_SIZE, align 8
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 1
  store i64 %99, i64* %101, align 8
  br label %141

102:                                              ; preds = %65
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 0
  store i32 131, i32* %104, align 8
  %105 = load i64, i64* @HCI_ACL_HDR_SIZE, align 8
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 1
  store i64 %105, i64* %107, align 8
  br label %141

108:                                              ; preds = %65
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 0
  store i32 128, i32* %110, align 8
  %111 = load i64, i64* @HCI_SCO_HDR_SIZE, align 8
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 1
  store i64 %111, i64* %113, align 8
  br label %141

114:                                              ; preds = %65
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 2
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %116, align 8
  %118 = call %struct.TYPE_16__* @bt_cb(%struct.TYPE_22__* %117)
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %120)
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 3
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 4
  %129 = load i32, i32* @HCI_RUNNING, align 4
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 3
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 0
  %134 = call i32 @clear_bit(i32 %129, i32* %133)
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 2
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %136, align 8
  %138 = call i32 @kfree_skb(%struct.TYPE_22__* %137)
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 2
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %140, align 8
  br label %141

141:                                              ; preds = %114, %108, %102, %96
  br label %219

142:                                              ; preds = %59
  %143 = load i32, i32* %3, align 4
  %144 = zext i32 %143 to i64
  %145 = load i64, i64* @DATA_L, align 8
  %146 = add nsw i64 %144, %145
  %147 = call i8* @inb(i64 %146)
  store i8* %147, i8** %6, align 8
  %148 = load i8*, i8** %6, align 8
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 2
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %150, align 8
  %152 = call i8** @skb_put(%struct.TYPE_22__* %151, i32 1)
  store i8* %148, i8** %152, align 8
  %153 = load i32, i32* %3, align 4
  %154 = zext i32 %153 to i64
  %155 = load i64, i64* @DATA_H, align 8
  %156 = add nsw i64 %154, %155
  %157 = call i8* @inb(i64 %156)
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = add nsw i64 %160, -1
  store i64 %161, i64* %159, align 8
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %218

166:                                              ; preds = %142
  %167 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  switch i32 %169, label %217 [
    i32 129, label %170
    i32 131, label %182
    i32 128, label %197
    i32 130, label %210
  ]

170:                                              ; preds = %166
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 2
  %173 = load %struct.TYPE_22__*, %struct.TYPE_22__** %172, align 8
  %174 = call %struct.hci_event_hdr* @hci_event_hdr(%struct.TYPE_22__* %173)
  store %struct.hci_event_hdr* %174, %struct.hci_event_hdr** %8, align 8
  %175 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %176 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %175, i32 0, i32 0
  store i32 130, i32* %176, align 8
  %177 = load %struct.hci_event_hdr*, %struct.hci_event_hdr** %8, align 8
  %178 = getelementptr inbounds %struct.hci_event_hdr, %struct.hci_event_hdr* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %181 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %180, i32 0, i32 1
  store i64 %179, i64* %181, align 8
  br label %217

182:                                              ; preds = %166
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %184 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %183, i32 0, i32 2
  %185 = load %struct.TYPE_22__*, %struct.TYPE_22__** %184, align 8
  %186 = call %struct.hci_acl_hdr* @hci_acl_hdr(%struct.TYPE_22__* %185)
  store %struct.hci_acl_hdr* %186, %struct.hci_acl_hdr** %9, align 8
  %187 = load %struct.hci_acl_hdr*, %struct.hci_acl_hdr** %9, align 8
  %188 = getelementptr inbounds %struct.hci_acl_hdr, %struct.hci_acl_hdr* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @__le16_to_cpu(i32 %189)
  store i32 %190, i32* %7, align 4
  %191 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %192 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %191, i32 0, i32 0
  store i32 130, i32* %192, align 8
  %193 = load i32, i32* %7, align 4
  %194 = sext i32 %193 to i64
  %195 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %196 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %195, i32 0, i32 1
  store i64 %194, i64* %196, align 8
  br label %217

197:                                              ; preds = %166
  %198 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %199 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %198, i32 0, i32 2
  %200 = load %struct.TYPE_22__*, %struct.TYPE_22__** %199, align 8
  %201 = call %struct.hci_sco_hdr* @hci_sco_hdr(%struct.TYPE_22__* %200)
  store %struct.hci_sco_hdr* %201, %struct.hci_sco_hdr** %10, align 8
  %202 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %203 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %202, i32 0, i32 0
  store i32 130, i32* %203, align 8
  %204 = load %struct.hci_sco_hdr*, %struct.hci_sco_hdr** %10, align 8
  %205 = getelementptr inbounds %struct.hci_sco_hdr, %struct.hci_sco_hdr* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = sext i32 %206 to i64
  %208 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %209 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %208, i32 0, i32 1
  store i64 %207, i64* %209, align 8
  br label %217

210:                                              ; preds = %166
  %211 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %212 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %211, i32 0, i32 2
  %213 = load %struct.TYPE_22__*, %struct.TYPE_22__** %212, align 8
  %214 = call i32 @hci_recv_frame(%struct.TYPE_22__* %213)
  %215 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %216 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %215, i32 0, i32 2
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %216, align 8
  br label %217

217:                                              ; preds = %166, %210, %197, %182, %170
  br label %218

218:                                              ; preds = %217, %142
  br label %219

219:                                              ; preds = %218, %141
  br label %26

220:                                              ; preds = %26
  %221 = load i32, i32* %3, align 4
  %222 = call i32 @bt3c_io_write(i32 %221, i32 28678, i32 0)
  br label %223

223:                                              ; preds = %220, %56, %13
  ret void
}

declare dso_local i32 @BT_ERR(i8*, ...) #1

declare dso_local i32 @bt3c_read(i32, i32) #1

declare dso_local i32 @bt3c_address(i32, i32) #1

declare dso_local %struct.TYPE_22__* @bt_skb_alloc(i32, i32) #1

declare dso_local i8* @inb(i64) #1

declare dso_local %struct.TYPE_16__* @bt_cb(%struct.TYPE_22__*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @kfree_skb(%struct.TYPE_22__*) #1

declare dso_local i8** @skb_put(%struct.TYPE_22__*, i32) #1

declare dso_local %struct.hci_event_hdr* @hci_event_hdr(%struct.TYPE_22__*) #1

declare dso_local %struct.hci_acl_hdr* @hci_acl_hdr(%struct.TYPE_22__*) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local %struct.hci_sco_hdr* @hci_sco_hdr(%struct.TYPE_22__*) #1

declare dso_local i32 @hci_recv_frame(%struct.TYPE_22__*) #1

declare dso_local i32 @bt3c_io_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
