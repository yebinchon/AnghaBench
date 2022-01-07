; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btusb.c_btusb_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btusb.c_btusb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.usb_device_id = type { i32 }
%struct.btusb_data = type { i32*, %struct.usb_device*, i32, %struct.hci_dev*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.usb_interface*, %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor* }
%struct.usb_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.hci_dev = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.btusb_data*, i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"intf %p id %p\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@blacklist_table = common dso_local global i32 0, align 4
@BTUSB_IGNORE = common dso_local global i32 0, align 4
@ignore_dga = common dso_local global i64 0, align 8
@BTUSB_DIGIANSWER = common dso_local global i32 0, align 4
@ignore_csr = common dso_local global i64 0, align 8
@BTUSB_CSR = common dso_local global i32 0, align 4
@ignore_sniffer = common dso_local global i64 0, align 8
@BTUSB_SNIFFER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@btusb_work = common dso_local global i32 0, align 4
@btusb_waker = common dso_local global i32 0, align 4
@HCI_USB = common dso_local global i32 0, align 4
@btusb_open = common dso_local global i32 0, align 4
@btusb_close = common dso_local global i32 0, align 4
@btusb_flush = common dso_local global i32 0, align 4
@btusb_send_frame = common dso_local global i32 0, align 4
@btusb_destruct = common dso_local global i32 0, align 4
@btusb_notify = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@reset = common dso_local global i32 0, align 4
@HCI_QUIRK_NO_RESET = common dso_local global i32 0, align 4
@force_scofix = common dso_local global i64 0, align 8
@BTUSB_WRONG_SCO_MTU = common dso_local global i32 0, align 4
@disable_scofix = common dso_local global i32 0, align 4
@HCI_QUIRK_FIXUP_BUFFER_SIZE = common dso_local global i32 0, align 4
@BTUSB_BROKEN_ISOC = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@HCI_QUIRK_RAW_DEVICE = common dso_local global i32 0, align 4
@BTUSB_BCM92035 = common dso_local global i32 0, align 4
@__const.btusb_probe.cmd = private unnamed_addr constant [4 x i8] c";\FC\01\00", align 1
@btusb_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @btusb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btusb_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_endpoint_descriptor*, align 8
  %7 = alloca %struct.btusb_data*, align 8
  %8 = alloca %struct.hci_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.usb_device_id*, align 8
  %12 = alloca %struct.usb_device*, align 8
  %13 = alloca %struct.usb_device*, align 8
  %14 = alloca [4 x i8], align 1
  %15 = alloca %struct.sk_buff*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %16 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %17 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %18 = call i32 @BT_DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.usb_interface* %16, %struct.usb_device_id* %17)
  %19 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %20 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %19, i32 0, i32 1
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %427

29:                                               ; preds = %2
  %30 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %31 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %29
  %35 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %36 = load i32, i32* @blacklist_table, align 4
  %37 = call %struct.usb_device_id* @usb_match_id(%struct.usb_interface* %35, i32 %36)
  store %struct.usb_device_id* %37, %struct.usb_device_id** %11, align 8
  %38 = load %struct.usb_device_id*, %struct.usb_device_id** %11, align 8
  %39 = icmp ne %struct.usb_device_id* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load %struct.usb_device_id*, %struct.usb_device_id** %11, align 8
  store %struct.usb_device_id* %41, %struct.usb_device_id** %5, align 8
  br label %42

42:                                               ; preds = %40, %34
  br label %43

43:                                               ; preds = %42, %29
  %44 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %45 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @BTUSB_IGNORE, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %427

52:                                               ; preds = %43
  %53 = load i64, i64* @ignore_dga, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %52
  %56 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %57 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @BTUSB_DIGIANSWER, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load i32, i32* @ENODEV, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %427

65:                                               ; preds = %55, %52
  %66 = load i64, i64* @ignore_csr, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %65
  %69 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %70 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @BTUSB_CSR, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load i32, i32* @ENODEV, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %427

78:                                               ; preds = %68, %65
  %79 = load i64, i64* @ignore_sniffer, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %78
  %82 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %83 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @BTUSB_SNIFFER, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = load i32, i32* @ENODEV, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %427

91:                                               ; preds = %81, %78
  %92 = load i32, i32* @GFP_KERNEL, align 4
  %93 = call %struct.btusb_data* @kzalloc(i32 104, i32 %92)
  store %struct.btusb_data* %93, %struct.btusb_data** %7, align 8
  %94 = load %struct.btusb_data*, %struct.btusb_data** %7, align 8
  %95 = icmp ne %struct.btusb_data* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %91
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %3, align 4
  br label %427

99:                                               ; preds = %91
  store i32 0, i32* %9, align 4
  br label %100

100:                                              ; preds = %158, %99
  %101 = load i32, i32* %9, align 4
  %102 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %103 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %102, i32 0, i32 1
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = icmp slt i32 %101, %107
  br i1 %108, label %109, label %161

109:                                              ; preds = %100
  %110 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %111 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %110, i32 0, i32 1
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %118, %struct.usb_endpoint_descriptor** %6, align 8
  %119 = load %struct.btusb_data*, %struct.btusb_data** %7, align 8
  %120 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %119, i32 0, i32 16
  %121 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %120, align 8
  %122 = icmp ne %struct.usb_endpoint_descriptor* %121, null
  br i1 %122, label %131, label %123

123:                                              ; preds = %109
  %124 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %125 = call i64 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %123
  %128 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %129 = load %struct.btusb_data*, %struct.btusb_data** %7, align 8
  %130 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %129, i32 0, i32 16
  store %struct.usb_endpoint_descriptor* %128, %struct.usb_endpoint_descriptor** %130, align 8
  br label %158

131:                                              ; preds = %123, %109
  %132 = load %struct.btusb_data*, %struct.btusb_data** %7, align 8
  %133 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %132, i32 0, i32 15
  %134 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %133, align 8
  %135 = icmp ne %struct.usb_endpoint_descriptor* %134, null
  br i1 %135, label %144, label %136

136:                                              ; preds = %131
  %137 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %138 = call i64 @usb_endpoint_is_bulk_out(%struct.usb_endpoint_descriptor* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %136
  %141 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %142 = load %struct.btusb_data*, %struct.btusb_data** %7, align 8
  %143 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %142, i32 0, i32 15
  store %struct.usb_endpoint_descriptor* %141, %struct.usb_endpoint_descriptor** %143, align 8
  br label %158

144:                                              ; preds = %136, %131
  %145 = load %struct.btusb_data*, %struct.btusb_data** %7, align 8
  %146 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %145, i32 0, i32 14
  %147 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %146, align 8
  %148 = icmp ne %struct.usb_endpoint_descriptor* %147, null
  br i1 %148, label %157, label %149

149:                                              ; preds = %144
  %150 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %151 = call i64 @usb_endpoint_is_bulk_in(%struct.usb_endpoint_descriptor* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %149
  %154 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %155 = load %struct.btusb_data*, %struct.btusb_data** %7, align 8
  %156 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %155, i32 0, i32 14
  store %struct.usb_endpoint_descriptor* %154, %struct.usb_endpoint_descriptor** %156, align 8
  br label %158

157:                                              ; preds = %149, %144
  br label %158

158:                                              ; preds = %157, %153, %140, %127
  %159 = load i32, i32* %9, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %9, align 4
  br label %100

161:                                              ; preds = %100
  %162 = load %struct.btusb_data*, %struct.btusb_data** %7, align 8
  %163 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %162, i32 0, i32 16
  %164 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %163, align 8
  %165 = icmp ne %struct.usb_endpoint_descriptor* %164, null
  br i1 %165, label %166, label %176

166:                                              ; preds = %161
  %167 = load %struct.btusb_data*, %struct.btusb_data** %7, align 8
  %168 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %167, i32 0, i32 15
  %169 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %168, align 8
  %170 = icmp ne %struct.usb_endpoint_descriptor* %169, null
  br i1 %170, label %171, label %176

171:                                              ; preds = %166
  %172 = load %struct.btusb_data*, %struct.btusb_data** %7, align 8
  %173 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %172, i32 0, i32 14
  %174 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %173, align 8
  %175 = icmp ne %struct.usb_endpoint_descriptor* %174, null
  br i1 %175, label %181, label %176

176:                                              ; preds = %171, %166, %161
  %177 = load %struct.btusb_data*, %struct.btusb_data** %7, align 8
  %178 = call i32 @kfree(%struct.btusb_data* %177)
  %179 = load i32, i32* @ENODEV, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %3, align 4
  br label %427

181:                                              ; preds = %171
  %182 = load i32, i32* @USB_TYPE_CLASS, align 4
  %183 = load %struct.btusb_data*, %struct.btusb_data** %7, align 8
  %184 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %183, i32 0, i32 2
  store i32 %182, i32* %184, align 8
  %185 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %186 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %185)
  %187 = load %struct.btusb_data*, %struct.btusb_data** %7, align 8
  %188 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %187, i32 0, i32 1
  store %struct.usb_device* %186, %struct.usb_device** %188, align 8
  %189 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %190 = load %struct.btusb_data*, %struct.btusb_data** %7, align 8
  %191 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %190, i32 0, i32 13
  store %struct.usb_interface* %189, %struct.usb_interface** %191, align 8
  %192 = load %struct.btusb_data*, %struct.btusb_data** %7, align 8
  %193 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %192, i32 0, i32 12
  %194 = call i32 @spin_lock_init(i32* %193)
  %195 = load %struct.btusb_data*, %struct.btusb_data** %7, align 8
  %196 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %195, i32 0, i32 11
  %197 = load i32, i32* @btusb_work, align 4
  %198 = call i32 @INIT_WORK(i32* %196, i32 %197)
  %199 = load %struct.btusb_data*, %struct.btusb_data** %7, align 8
  %200 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %199, i32 0, i32 10
  %201 = load i32, i32* @btusb_waker, align 4
  %202 = call i32 @INIT_WORK(i32* %200, i32 %201)
  %203 = load %struct.btusb_data*, %struct.btusb_data** %7, align 8
  %204 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %203, i32 0, i32 9
  %205 = call i32 @spin_lock_init(i32* %204)
  %206 = load %struct.btusb_data*, %struct.btusb_data** %7, align 8
  %207 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %206, i32 0, i32 8
  %208 = call i32 @init_usb_anchor(i32* %207)
  %209 = load %struct.btusb_data*, %struct.btusb_data** %7, align 8
  %210 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %209, i32 0, i32 7
  %211 = call i32 @init_usb_anchor(i32* %210)
  %212 = load %struct.btusb_data*, %struct.btusb_data** %7, align 8
  %213 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %212, i32 0, i32 6
  %214 = call i32 @init_usb_anchor(i32* %213)
  %215 = load %struct.btusb_data*, %struct.btusb_data** %7, align 8
  %216 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %215, i32 0, i32 5
  %217 = call i32 @init_usb_anchor(i32* %216)
  %218 = load %struct.btusb_data*, %struct.btusb_data** %7, align 8
  %219 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %218, i32 0, i32 4
  %220 = call i32 @init_usb_anchor(i32* %219)
  %221 = call %struct.hci_dev* (...) @hci_alloc_dev()
  store %struct.hci_dev* %221, %struct.hci_dev** %8, align 8
  %222 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %223 = icmp ne %struct.hci_dev* %222, null
  br i1 %223, label %229, label %224

224:                                              ; preds = %181
  %225 = load %struct.btusb_data*, %struct.btusb_data** %7, align 8
  %226 = call i32 @kfree(%struct.btusb_data* %225)
  %227 = load i32, i32* @ENOMEM, align 4
  %228 = sub nsw i32 0, %227
  store i32 %228, i32* %3, align 4
  br label %427

229:                                              ; preds = %181
  %230 = load i32, i32* @HCI_USB, align 4
  %231 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %232 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %231, i32 0, i32 10
  store i32 %230, i32* %232, align 8
  %233 = load %struct.btusb_data*, %struct.btusb_data** %7, align 8
  %234 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %235 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %234, i32 0, i32 9
  store %struct.btusb_data* %233, %struct.btusb_data** %235, align 8
  %236 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %237 = load %struct.btusb_data*, %struct.btusb_data** %7, align 8
  %238 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %237, i32 0, i32 3
  store %struct.hci_dev* %236, %struct.hci_dev** %238, align 8
  %239 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %240 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %241 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %240, i32 0, i32 0
  %242 = call i32 @SET_HCIDEV_DEV(%struct.hci_dev* %239, i32* %241)
  %243 = load i32, i32* @btusb_open, align 4
  %244 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %245 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %244, i32 0, i32 8
  store i32 %243, i32* %245, align 8
  %246 = load i32, i32* @btusb_close, align 4
  %247 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %248 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %247, i32 0, i32 7
  store i32 %246, i32* %248, align 4
  %249 = load i32, i32* @btusb_flush, align 4
  %250 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %251 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %250, i32 0, i32 6
  store i32 %249, i32* %251, align 8
  %252 = load i32, i32* @btusb_send_frame, align 4
  %253 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %254 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %253, i32 0, i32 5
  store i32 %252, i32* %254, align 4
  %255 = load i32, i32* @btusb_destruct, align 4
  %256 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %257 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %256, i32 0, i32 4
  store i32 %255, i32* %257, align 8
  %258 = load i32, i32* @btusb_notify, align 4
  %259 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %260 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %259, i32 0, i32 3
  store i32 %258, i32* %260, align 4
  %261 = load i32, i32* @THIS_MODULE, align 4
  %262 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %263 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %262, i32 0, i32 2
  store i32 %261, i32* %263, align 8
  %264 = load %struct.btusb_data*, %struct.btusb_data** %7, align 8
  %265 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %264, i32 0, i32 1
  %266 = load %struct.usb_device*, %struct.usb_device** %265, align 8
  %267 = call i32* @usb_ifnum_to_if(%struct.usb_device* %266, i32 1)
  %268 = load %struct.btusb_data*, %struct.btusb_data** %7, align 8
  %269 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %268, i32 0, i32 0
  store i32* %267, i32** %269, align 8
  %270 = load i32, i32* @reset, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %277, label %272

272:                                              ; preds = %229
  %273 = load i32, i32* @HCI_QUIRK_NO_RESET, align 4
  %274 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %275 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %274, i32 0, i32 1
  %276 = call i32 @set_bit(i32 %273, i32* %275)
  br label %277

277:                                              ; preds = %272, %229
  %278 = load i64, i64* @force_scofix, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %287, label %280

280:                                              ; preds = %277
  %281 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %282 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* @BTUSB_WRONG_SCO_MTU, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %296

287:                                              ; preds = %280, %277
  %288 = load i32, i32* @disable_scofix, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %295, label %290

290:                                              ; preds = %287
  %291 = load i32, i32* @HCI_QUIRK_FIXUP_BUFFER_SIZE, align 4
  %292 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %293 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %292, i32 0, i32 1
  %294 = call i32 @set_bit(i32 %291, i32* %293)
  br label %295

295:                                              ; preds = %290, %287
  br label %296

296:                                              ; preds = %295, %280
  %297 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %298 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* @BTUSB_BROKEN_ISOC, align 4
  %301 = and i32 %299, %300
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %306

303:                                              ; preds = %296
  %304 = load %struct.btusb_data*, %struct.btusb_data** %7, align 8
  %305 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %304, i32 0, i32 0
  store i32* null, i32** %305, align 8
  br label %306

306:                                              ; preds = %303, %296
  %307 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %308 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* @BTUSB_DIGIANSWER, align 4
  %311 = and i32 %309, %310
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %321

313:                                              ; preds = %306
  %314 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %315 = load %struct.btusb_data*, %struct.btusb_data** %7, align 8
  %316 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %315, i32 0, i32 2
  store i32 %314, i32* %316, align 8
  %317 = load i32, i32* @HCI_QUIRK_NO_RESET, align 4
  %318 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %319 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %318, i32 0, i32 1
  %320 = call i32 @set_bit(i32 %317, i32* %319)
  br label %321

321:                                              ; preds = %313, %306
  %322 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %323 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 4
  %325 = load i32, i32* @BTUSB_CSR, align 4
  %326 = and i32 %324, %325
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %344

328:                                              ; preds = %321
  %329 = load %struct.btusb_data*, %struct.btusb_data** %7, align 8
  %330 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %329, i32 0, i32 1
  %331 = load %struct.usb_device*, %struct.usb_device** %330, align 8
  store %struct.usb_device* %331, %struct.usb_device** %12, align 8
  %332 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %333 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 4
  %336 = call i32 @le16_to_cpu(i32 %335)
  %337 = icmp slt i32 %336, 279
  br i1 %337, label %338, label %343

338:                                              ; preds = %328
  %339 = load i32, i32* @HCI_QUIRK_NO_RESET, align 4
  %340 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %341 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %340, i32 0, i32 1
  %342 = call i32 @set_bit(i32 %339, i32* %341)
  br label %343

343:                                              ; preds = %338, %328
  br label %344

344:                                              ; preds = %343, %321
  %345 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %346 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 4
  %348 = load i32, i32* @BTUSB_SNIFFER, align 4
  %349 = and i32 %347, %348
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %369

351:                                              ; preds = %344
  %352 = load %struct.btusb_data*, %struct.btusb_data** %7, align 8
  %353 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %352, i32 0, i32 1
  %354 = load %struct.usb_device*, %struct.usb_device** %353, align 8
  store %struct.usb_device* %354, %struct.usb_device** %13, align 8
  %355 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %356 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 4
  %359 = call i32 @le16_to_cpu(i32 %358)
  %360 = icmp sgt i32 %359, 2455
  br i1 %360, label %361, label %366

361:                                              ; preds = %351
  %362 = load i32, i32* @HCI_QUIRK_RAW_DEVICE, align 4
  %363 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %364 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %363, i32 0, i32 1
  %365 = call i32 @set_bit(i32 %362, i32* %364)
  br label %366

366:                                              ; preds = %361, %351
  %367 = load %struct.btusb_data*, %struct.btusb_data** %7, align 8
  %368 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %367, i32 0, i32 0
  store i32* null, i32** %368, align 8
  br label %369

369:                                              ; preds = %366, %344
  %370 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %371 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 4
  %373 = load i32, i32* @BTUSB_BCM92035, align 4
  %374 = and i32 %372, %373
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %392

376:                                              ; preds = %369
  %377 = bitcast [4 x i8]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %377, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.btusb_probe.cmd, i32 0, i32 0), i64 4, i1 false)
  %378 = load i32, i32* @GFP_KERNEL, align 4
  %379 = call %struct.sk_buff* @bt_skb_alloc(i32 4, i32 %378)
  store %struct.sk_buff* %379, %struct.sk_buff** %15, align 8
  %380 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %381 = icmp ne %struct.sk_buff* %380, null
  br i1 %381, label %382, label %391

382:                                              ; preds = %376
  %383 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %384 = call i32 @skb_put(%struct.sk_buff* %383, i32 4)
  %385 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i64 0, i64 0
  %386 = call i32 @memcpy(i32 %384, i8* %385, i32 4)
  %387 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %388 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %387, i32 0, i32 0
  %389 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %390 = call i32 @skb_queue_tail(i32* %388, %struct.sk_buff* %389)
  br label %391

391:                                              ; preds = %382, %376
  br label %392

392:                                              ; preds = %391, %369
  %393 = load %struct.btusb_data*, %struct.btusb_data** %7, align 8
  %394 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %393, i32 0, i32 0
  %395 = load i32*, i32** %394, align 8
  %396 = icmp ne i32* %395, null
  br i1 %396, label %397, label %412

397:                                              ; preds = %392
  %398 = load %struct.btusb_data*, %struct.btusb_data** %7, align 8
  %399 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %398, i32 0, i32 0
  %400 = load i32*, i32** %399, align 8
  %401 = load %struct.btusb_data*, %struct.btusb_data** %7, align 8
  %402 = call i32 @usb_driver_claim_interface(i32* @btusb_driver, i32* %400, %struct.btusb_data* %401)
  store i32 %402, i32* %10, align 4
  %403 = load i32, i32* %10, align 4
  %404 = icmp slt i32 %403, 0
  br i1 %404, label %405, label %411

405:                                              ; preds = %397
  %406 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %407 = call i32 @hci_free_dev(%struct.hci_dev* %406)
  %408 = load %struct.btusb_data*, %struct.btusb_data** %7, align 8
  %409 = call i32 @kfree(%struct.btusb_data* %408)
  %410 = load i32, i32* %10, align 4
  store i32 %410, i32* %3, align 4
  br label %427

411:                                              ; preds = %397
  br label %412

412:                                              ; preds = %411, %392
  %413 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %414 = call i32 @hci_register_dev(%struct.hci_dev* %413)
  store i32 %414, i32* %10, align 4
  %415 = load i32, i32* %10, align 4
  %416 = icmp slt i32 %415, 0
  br i1 %416, label %417, label %423

417:                                              ; preds = %412
  %418 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %419 = call i32 @hci_free_dev(%struct.hci_dev* %418)
  %420 = load %struct.btusb_data*, %struct.btusb_data** %7, align 8
  %421 = call i32 @kfree(%struct.btusb_data* %420)
  %422 = load i32, i32* %10, align 4
  store i32 %422, i32* %3, align 4
  br label %427

423:                                              ; preds = %412
  %424 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %425 = load %struct.btusb_data*, %struct.btusb_data** %7, align 8
  %426 = call i32 @usb_set_intfdata(%struct.usb_interface* %424, %struct.btusb_data* %425)
  store i32 0, i32* %3, align 4
  br label %427

427:                                              ; preds = %423, %417, %405, %224, %176, %96, %88, %75, %62, %49, %26
  %428 = load i32, i32* %3, align 4
  ret i32 %428
}

declare dso_local i32 @BT_DBG(i8*, %struct.usb_interface*, %struct.usb_device_id*) #1

declare dso_local %struct.usb_device_id* @usb_match_id(%struct.usb_interface*, i32) #1

declare dso_local %struct.btusb_data* @kzalloc(i32, i32) #1

declare dso_local i64 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_is_bulk_out(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_is_bulk_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @kfree(%struct.btusb_data*) #1

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @init_usb_anchor(i32*) #1

declare dso_local %struct.hci_dev* @hci_alloc_dev(...) #1

declare dso_local i32 @SET_HCIDEV_DEV(%struct.hci_dev*, i32*) #1

declare dso_local i32* @usb_ifnum_to_if(%struct.usb_device*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.sk_buff* @bt_skb_alloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @usb_driver_claim_interface(i32*, i32*, %struct.btusb_data*) #1

declare dso_local i32 @hci_free_dev(%struct.hci_dev*) #1

declare dso_local i32 @hci_register_dev(%struct.hci_dev*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.btusb_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
