; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btusb.c_btusb_send_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btusb.c_btusb_send_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i64 }
%struct.hci_dev = type { i32, %struct.TYPE_9__, %struct.TYPE_7__, i32, %struct.btusb_data* }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.btusb_data = type { i32, i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_6__*, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.usb_ctrlrequest = type { i32, i32, i32, i32, i32 }
%struct.urb = type { i32, i32, i32, i32, i32, i32, i32, %struct.sk_buff*, i32 }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@HCI_RUNNING = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@btusb_tx_complete = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@BTUSB_MAX_ISOC_FRAMES = common dso_local global i32 0, align 4
@btusb_isoc_tx_complete = common dso_local global i32 0, align 4
@URB_ISO_ASAP = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"%s urb %p submission failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @btusb_send_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btusb_send_frame(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca %struct.btusb_data*, align 8
  %6 = alloca %struct.usb_ctrlrequest*, align 8
  %7 = alloca %struct.urb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.hci_dev*
  store %struct.hci_dev* %13, %struct.hci_dev** %4, align 8
  %14 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %15 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %14, i32 0, i32 4
  %16 = load %struct.btusb_data*, %struct.btusb_data** %15, align 8
  store %struct.btusb_data* %16, %struct.btusb_data** %5, align 8
  %17 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %18 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @HCI_RUNNING, align 4
  %22 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %23 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %22, i32 0, i32 3
  %24 = call i32 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %278

29:                                               ; preds = %1
  %30 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %31 = call %struct.TYPE_10__* @bt_cb(%struct.sk_buff* %30)
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %229 [
    i32 129, label %34
    i32 130, label %95
    i32 128, label %146
  ]

34:                                               ; preds = %29
  %35 = load i32, i32* @GFP_ATOMIC, align 4
  %36 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %35)
  store %struct.urb* %36, %struct.urb** %7, align 8
  %37 = load %struct.urb*, %struct.urb** %7, align 8
  %38 = icmp ne %struct.urb* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %278

42:                                               ; preds = %34
  %43 = load i32, i32* @GFP_ATOMIC, align 4
  %44 = call %struct.usb_ctrlrequest* @kmalloc(i32 20, i32 %43)
  store %struct.usb_ctrlrequest* %44, %struct.usb_ctrlrequest** %6, align 8
  %45 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %6, align 8
  %46 = icmp ne %struct.usb_ctrlrequest* %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load %struct.urb*, %struct.urb** %7, align 8
  %49 = call i32 @usb_free_urb(%struct.urb* %48)
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %278

52:                                               ; preds = %42
  %53 = load %struct.btusb_data*, %struct.btusb_data** %5, align 8
  %54 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %6, align 8
  %57 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 4
  %58 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %6, align 8
  %59 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %58, i32 0, i32 3
  store i32 0, i32* %59, align 4
  %60 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %6, align 8
  %61 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %60, i32 0, i32 2
  store i32 0, i32* %61, align 4
  %62 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %6, align 8
  %63 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %62, i32 0, i32 1
  store i32 0, i32* %63, align 4
  %64 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @__cpu_to_le16(i32 %66)
  %68 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %6, align 8
  %69 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.btusb_data*, %struct.btusb_data** %5, align 8
  %71 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @usb_sndctrlpipe(i32 %72, i32 0)
  store i32 %73, i32* %8, align 4
  %74 = load %struct.urb*, %struct.urb** %7, align 8
  %75 = load %struct.btusb_data*, %struct.btusb_data** %5, align 8
  %76 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %6, align 8
  %80 = bitcast %struct.usb_ctrlrequest* %79 to i8*
  %81 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %85 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @btusb_tx_complete, align 4
  %88 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %89 = call i32 @usb_fill_control_urb(%struct.urb* %74, i32 %77, i32 %78, i8* %80, i32 %83, i32 %86, i32 %87, %struct.sk_buff* %88)
  %90 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %91 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  br label %232

95:                                               ; preds = %29
  %96 = load %struct.btusb_data*, %struct.btusb_data** %5, align 8
  %97 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %96, i32 0, i32 5
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = icmp ne %struct.TYPE_6__* %98, null
  br i1 %99, label %100, label %106

100:                                              ; preds = %95
  %101 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %102 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp slt i32 %104, 1
  br i1 %105, label %106, label %109

106:                                              ; preds = %100, %95
  %107 = load i32, i32* @ENODEV, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %2, align 4
  br label %278

109:                                              ; preds = %100
  %110 = load i32, i32* @GFP_ATOMIC, align 4
  %111 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %110)
  store %struct.urb* %111, %struct.urb** %7, align 8
  %112 = load %struct.urb*, %struct.urb** %7, align 8
  %113 = icmp ne %struct.urb* %112, null
  br i1 %113, label %117, label %114

114:                                              ; preds = %109
  %115 = load i32, i32* @ENOMEM, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %2, align 4
  br label %278

117:                                              ; preds = %109
  %118 = load %struct.btusb_data*, %struct.btusb_data** %5, align 8
  %119 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.btusb_data*, %struct.btusb_data** %5, align 8
  %122 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %121, i32 0, i32 5
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @usb_sndbulkpipe(i32 %120, i32 %125)
  store i32 %126, i32* %8, align 4
  %127 = load %struct.urb*, %struct.urb** %7, align 8
  %128 = load %struct.btusb_data*, %struct.btusb_data** %5, align 8
  %129 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %8, align 4
  %132 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %133 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %136 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @btusb_tx_complete, align 4
  %139 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %140 = call i32 @usb_fill_bulk_urb(%struct.urb* %127, i32 %130, i32 %131, i32 %134, i32 %137, i32 %138, %struct.sk_buff* %139)
  %141 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %142 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %143, align 4
  br label %232

146:                                              ; preds = %29
  %147 = load %struct.btusb_data*, %struct.btusb_data** %5, align 8
  %148 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %147, i32 0, i32 4
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %148, align 8
  %150 = icmp ne %struct.TYPE_8__* %149, null
  br i1 %150, label %151, label %157

151:                                              ; preds = %146
  %152 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %153 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = icmp slt i32 %155, 1
  br i1 %156, label %157, label %160

157:                                              ; preds = %151, %146
  %158 = load i32, i32* @ENODEV, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %2, align 4
  br label %278

160:                                              ; preds = %151
  %161 = load i32, i32* @BTUSB_MAX_ISOC_FRAMES, align 4
  %162 = load i32, i32* @GFP_ATOMIC, align 4
  %163 = call %struct.urb* @usb_alloc_urb(i32 %161, i32 %162)
  store %struct.urb* %163, %struct.urb** %7, align 8
  %164 = load %struct.urb*, %struct.urb** %7, align 8
  %165 = icmp ne %struct.urb* %164, null
  br i1 %165, label %169, label %166

166:                                              ; preds = %160
  %167 = load i32, i32* @ENOMEM, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %2, align 4
  br label %278

169:                                              ; preds = %160
  %170 = load %struct.btusb_data*, %struct.btusb_data** %5, align 8
  %171 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.btusb_data*, %struct.btusb_data** %5, align 8
  %174 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %173, i32 0, i32 4
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @usb_sndisocpipe(i32 %172, i32 %177)
  store i32 %178, i32* %8, align 4
  %179 = load %struct.btusb_data*, %struct.btusb_data** %5, align 8
  %180 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.urb*, %struct.urb** %7, align 8
  %183 = getelementptr inbounds %struct.urb, %struct.urb* %182, i32 0, i32 8
  store i32 %181, i32* %183, align 8
  %184 = load i32, i32* %8, align 4
  %185 = load %struct.urb*, %struct.urb** %7, align 8
  %186 = getelementptr inbounds %struct.urb, %struct.urb* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 8
  %187 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %188 = load %struct.urb*, %struct.urb** %7, align 8
  %189 = getelementptr inbounds %struct.urb, %struct.urb* %188, i32 0, i32 7
  store %struct.sk_buff* %187, %struct.sk_buff** %189, align 8
  %190 = load i32, i32* @btusb_isoc_tx_complete, align 4
  %191 = load %struct.urb*, %struct.urb** %7, align 8
  %192 = getelementptr inbounds %struct.urb, %struct.urb* %191, i32 0, i32 6
  store i32 %190, i32* %192, align 8
  %193 = load %struct.btusb_data*, %struct.btusb_data** %5, align 8
  %194 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %193, i32 0, i32 4
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.urb*, %struct.urb** %7, align 8
  %199 = getelementptr inbounds %struct.urb, %struct.urb* %198, i32 0, i32 5
  store i32 %197, i32* %199, align 4
  %200 = load i32, i32* @URB_ISO_ASAP, align 4
  %201 = load %struct.urb*, %struct.urb** %7, align 8
  %202 = getelementptr inbounds %struct.urb, %struct.urb* %201, i32 0, i32 4
  store i32 %200, i32* %202, align 8
  %203 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %204 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.urb*, %struct.urb** %7, align 8
  %207 = getelementptr inbounds %struct.urb, %struct.urb* %206, i32 0, i32 3
  store i32 %205, i32* %207, align 4
  %208 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %209 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.urb*, %struct.urb** %7, align 8
  %212 = getelementptr inbounds %struct.urb, %struct.urb* %211, i32 0, i32 2
  store i32 %210, i32* %212, align 8
  %213 = load %struct.urb*, %struct.urb** %7, align 8
  %214 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %215 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.btusb_data*, %struct.btusb_data** %5, align 8
  %218 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %217, i32 0, i32 4
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @le16_to_cpu(i32 %221)
  %223 = call i32 @__fill_isoc_descriptor(%struct.urb* %213, i32 %216, i32 %222)
  %224 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %225 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %226, align 4
  br label %246

229:                                              ; preds = %29
  %230 = load i32, i32* @EILSEQ, align 4
  %231 = sub nsw i32 0, %230
  store i32 %231, i32* %2, align 4
  br label %278

232:                                              ; preds = %117, %52
  %233 = load %struct.btusb_data*, %struct.btusb_data** %5, align 8
  %234 = call i32 @inc_tx(%struct.btusb_data* %233)
  store i32 %234, i32* %9, align 4
  %235 = load i32, i32* %9, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %245

237:                                              ; preds = %232
  %238 = load %struct.urb*, %struct.urb** %7, align 8
  %239 = load %struct.btusb_data*, %struct.btusb_data** %5, align 8
  %240 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %239, i32 0, i32 3
  %241 = call i32 @usb_anchor_urb(%struct.urb* %238, i32* %240)
  %242 = load %struct.btusb_data*, %struct.btusb_data** %5, align 8
  %243 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %242, i32 0, i32 2
  %244 = call i32 @schedule_work(i32* %243)
  store i32 0, i32* %9, align 4
  br label %276

245:                                              ; preds = %232
  br label %246

246:                                              ; preds = %245, %169
  %247 = load %struct.urb*, %struct.urb** %7, align 8
  %248 = load %struct.btusb_data*, %struct.btusb_data** %5, align 8
  %249 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %248, i32 0, i32 1
  %250 = call i32 @usb_anchor_urb(%struct.urb* %247, i32* %249)
  %251 = load %struct.urb*, %struct.urb** %7, align 8
  %252 = load i32, i32* @GFP_ATOMIC, align 4
  %253 = call i32 @usb_submit_urb(%struct.urb* %251, i32 %252)
  store i32 %253, i32* %9, align 4
  %254 = load i32, i32* %9, align 4
  %255 = icmp slt i32 %254, 0
  br i1 %255, label %256, label %268

256:                                              ; preds = %246
  %257 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %258 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.urb*, %struct.urb** %7, align 8
  %261 = call i32 @BT_ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %259, %struct.urb* %260)
  %262 = load %struct.urb*, %struct.urb** %7, align 8
  %263 = getelementptr inbounds %struct.urb, %struct.urb* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @kfree(i32 %264)
  %266 = load %struct.urb*, %struct.urb** %7, align 8
  %267 = call i32 @usb_unanchor_urb(%struct.urb* %266)
  br label %273

268:                                              ; preds = %246
  %269 = load %struct.btusb_data*, %struct.btusb_data** %5, align 8
  %270 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = call i32 @usb_mark_last_busy(i32 %271)
  br label %273

273:                                              ; preds = %268, %256
  %274 = load %struct.urb*, %struct.urb** %7, align 8
  %275 = call i32 @usb_free_urb(%struct.urb* %274)
  br label %276

276:                                              ; preds = %273, %237
  %277 = load i32, i32* %9, align 4
  store i32 %277, i32* %2, align 4
  br label %278

278:                                              ; preds = %276, %229, %166, %157, %114, %106, %47, %39, %26
  %279 = load i32, i32* %2, align 4
  ret i32 %279
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.TYPE_10__* @bt_cb(%struct.sk_buff*) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local %struct.usb_ctrlrequest* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @__cpu_to_le16(i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @usb_fill_control_urb(%struct.urb*, i32, i32, i8*, i32, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i32, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @usb_sndisocpipe(i32, i32) #1

declare dso_local i32 @__fill_isoc_descriptor(%struct.urb*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @inc_tx(%struct.btusb_data*) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @BT_ERR(i8*, i32, %struct.urb*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

declare dso_local i32 @usb_mark_last_busy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
