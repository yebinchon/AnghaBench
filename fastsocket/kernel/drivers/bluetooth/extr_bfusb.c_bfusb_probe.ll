; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_bfusb.c_bfusb_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_bfusb.c_bfusb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.usb_host_endpoint*, %struct.TYPE_4__ }
%struct.usb_host_endpoint = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.firmware = type { %struct.usb_device_id*, %struct.usb_interface* }
%struct.usb_device = type { i32 }
%struct.hci_dev = type { i32, i32, i32, i32, i32, i32, i32, %struct.bfusb_data*, i32 }
%struct.bfusb_data = type { %struct.hci_dev*, i32, i32, i32, i32*, i32, i32, i32, i32, %struct.usb_device* }

@.str = private unnamed_addr constant [14 x i8] c"intf %p id %p\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Bulk endpoints not found\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Can't allocate memory for control structure\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"bfubase.frm\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Firmware request failed\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"firmware data %p size %zu\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Firmware loading failed\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Can't allocate HCI device\00", align 1
@HCI_USB = common dso_local global i32 0, align 4
@bfusb_open = common dso_local global i32 0, align 4
@bfusb_close = common dso_local global i32 0, align 4
@bfusb_flush = common dso_local global i32 0, align 4
@bfusb_send_frame = common dso_local global i32 0, align 4
@bfusb_destruct = common dso_local global i32 0, align 4
@bfusb_ioctl = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"Can't register HCI device\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @bfusb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfusb_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.firmware*, align 8
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca %struct.usb_host_endpoint*, align 8
  %9 = alloca %struct.usb_host_endpoint*, align 8
  %10 = alloca %struct.hci_dev*, align 8
  %11 = alloca %struct.bfusb_data*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %12 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %13 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %12)
  store %struct.usb_device* %13, %struct.usb_device** %7, align 8
  %14 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %15 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %16 = call i32 @BT_DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.usb_interface* %14, %struct.usb_device_id* %15)
  %17 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %18 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %17, i32 0, i32 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %22, 2
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %179

27:                                               ; preds = %2
  %28 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %29 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %28, i32 0, i32 1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %31, align 8
  %33 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %32, i64 0
  store %struct.usb_host_endpoint* %33, %struct.usb_host_endpoint** %8, align 8
  %34 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %35 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %34, i32 0, i32 1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %37, align 8
  %39 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %38, i64 1
  store %struct.usb_host_endpoint* %39, %struct.usb_host_endpoint** %9, align 8
  %40 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %8, align 8
  %41 = icmp ne %struct.usb_host_endpoint* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %27
  %43 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %9, align 8
  %44 = icmp ne %struct.usb_host_endpoint* %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %42, %27
  %46 = call i32 @BT_ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %176

47:                                               ; preds = %42
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call %struct.bfusb_data* @kzalloc(i32 56, i32 %48)
  store %struct.bfusb_data* %49, %struct.bfusb_data** %11, align 8
  %50 = load %struct.bfusb_data*, %struct.bfusb_data** %11, align 8
  %51 = icmp ne %struct.bfusb_data* %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %47
  %53 = call i32 @BT_ERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %176

54:                                               ; preds = %47
  %55 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %56 = load %struct.bfusb_data*, %struct.bfusb_data** %11, align 8
  %57 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %56, i32 0, i32 9
  store %struct.usb_device* %55, %struct.usb_device** %57, align 8
  %58 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %9, align 8
  %59 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.bfusb_data*, %struct.bfusb_data** %11, align 8
  %63 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %62, i32 0, i32 8
  store i32 %61, i32* %63, align 4
  %64 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %8, align 8
  %65 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.bfusb_data*, %struct.bfusb_data** %11, align 8
  %69 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %68, i32 0, i32 7
  store i32 %67, i32* %69, align 8
  %70 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %8, align 8
  %71 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @le16_to_cpu(i32 %73)
  %75 = load %struct.bfusb_data*, %struct.bfusb_data** %11, align 8
  %76 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %75, i32 0, i32 6
  store i32 %74, i32* %76, align 4
  %77 = load %struct.bfusb_data*, %struct.bfusb_data** %11, align 8
  %78 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %77, i32 0, i32 5
  %79 = call i32 @rwlock_init(i32* %78)
  %80 = load %struct.bfusb_data*, %struct.bfusb_data** %11, align 8
  %81 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %80, i32 0, i32 4
  store i32* null, i32** %81, align 8
  %82 = load %struct.bfusb_data*, %struct.bfusb_data** %11, align 8
  %83 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %82, i32 0, i32 3
  %84 = call i32 @skb_queue_head_init(i32* %83)
  %85 = load %struct.bfusb_data*, %struct.bfusb_data** %11, align 8
  %86 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %85, i32 0, i32 2
  %87 = call i32 @skb_queue_head_init(i32* %86)
  %88 = load %struct.bfusb_data*, %struct.bfusb_data** %11, align 8
  %89 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %88, i32 0, i32 1
  %90 = call i32 @skb_queue_head_init(i32* %89)
  %91 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %92 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %91, i32 0, i32 0
  %93 = call i64 @request_firmware(%struct.firmware** %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32* %92)
  %94 = icmp slt i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %54
  %96 = call i32 @BT_ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %173

97:                                               ; preds = %54
  %98 = load %struct.firmware*, %struct.firmware** %6, align 8
  %99 = getelementptr inbounds %struct.firmware, %struct.firmware* %98, i32 0, i32 1
  %100 = load %struct.usb_interface*, %struct.usb_interface** %99, align 8
  %101 = load %struct.firmware*, %struct.firmware** %6, align 8
  %102 = getelementptr inbounds %struct.firmware, %struct.firmware* %101, i32 0, i32 0
  %103 = load %struct.usb_device_id*, %struct.usb_device_id** %102, align 8
  %104 = call i32 @BT_DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), %struct.usb_interface* %100, %struct.usb_device_id* %103)
  %105 = load %struct.bfusb_data*, %struct.bfusb_data** %11, align 8
  %106 = load %struct.firmware*, %struct.firmware** %6, align 8
  %107 = getelementptr inbounds %struct.firmware, %struct.firmware* %106, i32 0, i32 1
  %108 = load %struct.usb_interface*, %struct.usb_interface** %107, align 8
  %109 = load %struct.firmware*, %struct.firmware** %6, align 8
  %110 = getelementptr inbounds %struct.firmware, %struct.firmware* %109, i32 0, i32 0
  %111 = load %struct.usb_device_id*, %struct.usb_device_id** %110, align 8
  %112 = call i64 @bfusb_load_firmware(%struct.bfusb_data* %105, %struct.usb_interface* %108, %struct.usb_device_id* %111)
  %113 = icmp slt i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %97
  %115 = call i32 @BT_ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  br label %170

116:                                              ; preds = %97
  %117 = load %struct.firmware*, %struct.firmware** %6, align 8
  %118 = call i32 @release_firmware(%struct.firmware* %117)
  %119 = call %struct.hci_dev* (...) @hci_alloc_dev()
  store %struct.hci_dev* %119, %struct.hci_dev** %10, align 8
  %120 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %121 = icmp ne %struct.hci_dev* %120, null
  br i1 %121, label %124, label %122

122:                                              ; preds = %116
  %123 = call i32 @BT_ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  br label %173

124:                                              ; preds = %116
  %125 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %126 = load %struct.bfusb_data*, %struct.bfusb_data** %11, align 8
  %127 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %126, i32 0, i32 0
  store %struct.hci_dev* %125, %struct.hci_dev** %127, align 8
  %128 = load i32, i32* @HCI_USB, align 4
  %129 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %130 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %129, i32 0, i32 8
  store i32 %128, i32* %130, align 8
  %131 = load %struct.bfusb_data*, %struct.bfusb_data** %11, align 8
  %132 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %133 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %132, i32 0, i32 7
  store %struct.bfusb_data* %131, %struct.bfusb_data** %133, align 8
  %134 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %135 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %136 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %135, i32 0, i32 0
  %137 = call i32 @SET_HCIDEV_DEV(%struct.hci_dev* %134, i32* %136)
  %138 = load i32, i32* @bfusb_open, align 4
  %139 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %140 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %139, i32 0, i32 6
  store i32 %138, i32* %140, align 8
  %141 = load i32, i32* @bfusb_close, align 4
  %142 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %143 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %142, i32 0, i32 5
  store i32 %141, i32* %143, align 4
  %144 = load i32, i32* @bfusb_flush, align 4
  %145 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %146 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %145, i32 0, i32 4
  store i32 %144, i32* %146, align 8
  %147 = load i32, i32* @bfusb_send_frame, align 4
  %148 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %149 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %148, i32 0, i32 3
  store i32 %147, i32* %149, align 4
  %150 = load i32, i32* @bfusb_destruct, align 4
  %151 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %152 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %151, i32 0, i32 2
  store i32 %150, i32* %152, align 8
  %153 = load i32, i32* @bfusb_ioctl, align 4
  %154 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %155 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 4
  %156 = load i32, i32* @THIS_MODULE, align 4
  %157 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %158 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 8
  %159 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %160 = call i64 @hci_register_dev(%struct.hci_dev* %159)
  %161 = icmp slt i64 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %124
  %163 = call i32 @BT_ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  %164 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %165 = call i32 @hci_free_dev(%struct.hci_dev* %164)
  br label %173

166:                                              ; preds = %124
  %167 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %168 = load %struct.bfusb_data*, %struct.bfusb_data** %11, align 8
  %169 = call i32 @usb_set_intfdata(%struct.usb_interface* %167, %struct.bfusb_data* %168)
  store i32 0, i32* %3, align 4
  br label %179

170:                                              ; preds = %114
  %171 = load %struct.firmware*, %struct.firmware** %6, align 8
  %172 = call i32 @release_firmware(%struct.firmware* %171)
  br label %173

173:                                              ; preds = %170, %162, %122, %95
  %174 = load %struct.bfusb_data*, %struct.bfusb_data** %11, align 8
  %175 = call i32 @kfree(%struct.bfusb_data* %174)
  br label %176

176:                                              ; preds = %173, %52, %45
  %177 = load i32, i32* @EIO, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %3, align 4
  br label %179

179:                                              ; preds = %176, %166, %24
  %180 = load i32, i32* %3, align 4
  ret i32 %180
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @BT_DBG(i8*, %struct.usb_interface*, %struct.usb_device_id*) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local %struct.bfusb_data* @kzalloc(i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i64 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i64 @bfusb_load_firmware(%struct.bfusb_data*, %struct.usb_interface*, %struct.usb_device_id*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local %struct.hci_dev* @hci_alloc_dev(...) #1

declare dso_local i32 @SET_HCIDEV_DEV(%struct.hci_dev*, i32*) #1

declare dso_local i64 @hci_register_dev(%struct.hci_dev*) #1

declare dso_local i32 @hci_free_dev(%struct.hci_dev*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.bfusb_data*) #1

declare dso_local i32 @kfree(%struct.bfusb_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
