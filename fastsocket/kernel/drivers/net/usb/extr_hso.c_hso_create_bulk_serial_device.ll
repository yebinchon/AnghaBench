; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_hso.c_hso_create_bulk_serial_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_hso.c_hso_create_bulk_serial_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hso_device = type { i32, i32, i8*, i8*, %struct.hso_tiocmget*, %struct.TYPE_2__, %struct.hso_device* }
%struct.hso_tiocmget = type { i8*, i32, i32, i64 }
%struct.TYPE_2__ = type { %struct.hso_serial* }
%struct.hso_serial = type { i32, i32, i8*, i8*, %struct.hso_tiocmget*, %struct.TYPE_2__, %struct.hso_serial* }
%struct.usb_interface = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@HSO_PORT_MASK = common dso_local global i32 0, align 4
@HSO_PORT_MODEM = common dso_local global i32 0, align 4
@USB_ENDPOINT_XFER_INT = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@BULK_URB_RX_SIZE = common dso_local global i32 0, align 4
@BULK_URB_TX_SIZE = common dso_local global i32 0, align 4
@USB_ENDPOINT_XFER_BULK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to find BULK IN ep\0A\00", align 1
@USB_DIR_OUT = common dso_local global i32 0, align 4
@hso_std_serial_write_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hso_device* (%struct.usb_interface*, i32)* @hso_create_bulk_serial_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hso_device* @hso_create_bulk_serial_device(%struct.usb_interface* %0, i32 %1) #0 {
  %3 = alloca %struct.hso_device*, align 8
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hso_device*, align 8
  %7 = alloca %struct.hso_serial*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.hso_tiocmget*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.hso_serial* @hso_create_device(%struct.usb_interface* %10, i32 %11)
  %13 = bitcast %struct.hso_serial* %12 to %struct.hso_device*
  store %struct.hso_device* %13, %struct.hso_device** %6, align 8
  %14 = load %struct.hso_device*, %struct.hso_device** %6, align 8
  %15 = icmp ne %struct.hso_device* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store %struct.hso_device* null, %struct.hso_device** %3, align 8
  br label %138

17:                                               ; preds = %2
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @kzalloc(i32 48, i32 %18)
  %20 = bitcast i8* %19 to %struct.hso_serial*
  store %struct.hso_serial* %20, %struct.hso_serial** %7, align 8
  %21 = load %struct.hso_serial*, %struct.hso_serial** %7, align 8
  %22 = icmp ne %struct.hso_serial* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  br label %130

24:                                               ; preds = %17
  %25 = load %struct.hso_device*, %struct.hso_device** %6, align 8
  %26 = bitcast %struct.hso_device* %25 to %struct.hso_serial*
  %27 = load %struct.hso_serial*, %struct.hso_serial** %7, align 8
  %28 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %27, i32 0, i32 6
  store %struct.hso_serial* %26, %struct.hso_serial** %28, align 8
  %29 = load %struct.hso_serial*, %struct.hso_serial** %7, align 8
  %30 = load %struct.hso_device*, %struct.hso_device** %6, align 8
  %31 = getelementptr inbounds %struct.hso_device, %struct.hso_device* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store %struct.hso_serial* %29, %struct.hso_serial** %32, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @HSO_PORT_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @HSO_PORT_MODEM, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %78

38:                                               ; preds = %24
  store i32 2, i32* %8, align 4
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i8* @kzalloc(i32 24, i32 %39)
  %41 = bitcast i8* %40 to %struct.hso_tiocmget*
  %42 = load %struct.hso_serial*, %struct.hso_serial** %7, align 8
  %43 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %42, i32 0, i32 4
  store %struct.hso_tiocmget* %41, %struct.hso_tiocmget** %43, align 8
  %44 = load %struct.hso_serial*, %struct.hso_serial** %7, align 8
  %45 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %44, i32 0, i32 4
  %46 = load %struct.hso_tiocmget*, %struct.hso_tiocmget** %45, align 8
  %47 = icmp ne %struct.hso_tiocmget* %46, null
  br i1 %47, label %48, label %77

48:                                               ; preds = %38
  %49 = load %struct.hso_serial*, %struct.hso_serial** %7, align 8
  %50 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %49, i32 0, i32 4
  %51 = load %struct.hso_tiocmget*, %struct.hso_tiocmget** %50, align 8
  store %struct.hso_tiocmget* %51, %struct.hso_tiocmget** %9, align 8
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i64 @usb_alloc_urb(i32 0, i32 %52)
  %54 = load %struct.hso_tiocmget*, %struct.hso_tiocmget** %9, align 8
  %55 = getelementptr inbounds %struct.hso_tiocmget, %struct.hso_tiocmget* %54, i32 0, i32 3
  store i64 %53, i64* %55, align 8
  %56 = load %struct.hso_tiocmget*, %struct.hso_tiocmget** %9, align 8
  %57 = getelementptr inbounds %struct.hso_tiocmget, %struct.hso_tiocmget* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %48
  %61 = load %struct.hso_tiocmget*, %struct.hso_tiocmget** %9, align 8
  %62 = getelementptr inbounds %struct.hso_tiocmget, %struct.hso_tiocmget* %61, i32 0, i32 2
  %63 = call i32 @mutex_init(i32* %62)
  %64 = load %struct.hso_tiocmget*, %struct.hso_tiocmget** %9, align 8
  %65 = getelementptr inbounds %struct.hso_tiocmget, %struct.hso_tiocmget* %64, i32 0, i32 1
  %66 = call i32 @init_waitqueue_head(i32* %65)
  %67 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %68 = load i32, i32* @USB_ENDPOINT_XFER_INT, align 4
  %69 = load i32, i32* @USB_DIR_IN, align 4
  %70 = call i8* @hso_get_ep(%struct.usb_interface* %67, i32 %68, i32 %69)
  %71 = load %struct.hso_tiocmget*, %struct.hso_tiocmget** %9, align 8
  %72 = getelementptr inbounds %struct.hso_tiocmget, %struct.hso_tiocmget* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  br label %76

73:                                               ; preds = %48
  %74 = load %struct.hso_serial*, %struct.hso_serial** %7, align 8
  %75 = call i32 @hso_free_tiomget(%struct.hso_serial* %74)
  br label %76

76:                                               ; preds = %73, %60
  br label %77

77:                                               ; preds = %76, %38
  br label %79

78:                                               ; preds = %24
  store i32 1, i32* %8, align 4
  br label %79

79:                                               ; preds = %78, %77
  %80 = load %struct.hso_serial*, %struct.hso_serial** %7, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @BULK_URB_RX_SIZE, align 4
  %83 = load i32, i32* @BULK_URB_TX_SIZE, align 4
  %84 = call i64 @hso_serial_common_create(%struct.hso_serial* %80, i32 %81, i32 %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %130

87:                                               ; preds = %79
  %88 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %89 = load i32, i32* @USB_ENDPOINT_XFER_BULK, align 4
  %90 = load i32, i32* @USB_DIR_IN, align 4
  %91 = call i8* @hso_get_ep(%struct.usb_interface* %88, i32 %89, i32 %90)
  %92 = load %struct.hso_serial*, %struct.hso_serial** %7, align 8
  %93 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %92, i32 0, i32 3
  store i8* %91, i8** %93, align 8
  %94 = load %struct.hso_serial*, %struct.hso_serial** %7, align 8
  %95 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %94, i32 0, i32 3
  %96 = load i8*, i8** %95, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %102, label %98

98:                                               ; preds = %87
  %99 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %100 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %99, i32 0, i32 0
  %101 = call i32 @dev_err(i32* %100, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %127

102:                                              ; preds = %87
  %103 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %104 = load i32, i32* @USB_ENDPOINT_XFER_BULK, align 4
  %105 = load i32, i32* @USB_DIR_OUT, align 4
  %106 = call i8* @hso_get_ep(%struct.usb_interface* %103, i32 %104, i32 %105)
  %107 = load %struct.hso_serial*, %struct.hso_serial** %7, align 8
  %108 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %107, i32 0, i32 2
  store i8* %106, i8** %108, align 8
  %109 = icmp ne i8* %106, null
  br i1 %109, label %114, label %110

110:                                              ; preds = %102
  %111 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %112 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %111, i32 0, i32 0
  %113 = call i32 @dev_err(i32* %112, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %127

114:                                              ; preds = %102
  %115 = load i32, i32* @hso_std_serial_write_data, align 4
  %116 = load %struct.hso_serial*, %struct.hso_serial** %7, align 8
  %117 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load %struct.hso_serial*, %struct.hso_serial** %7, align 8
  %119 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.hso_serial*, %struct.hso_serial** %7, align 8
  %122 = call i32 @set_serial_by_index(i32 %120, %struct.hso_serial* %121)
  %123 = load %struct.hso_device*, %struct.hso_device** %6, align 8
  %124 = bitcast %struct.hso_device* %123 to %struct.hso_serial*
  %125 = call i32 @hso_log_port(%struct.hso_serial* %124)
  %126 = load %struct.hso_device*, %struct.hso_device** %6, align 8
  store %struct.hso_device* %126, %struct.hso_device** %3, align 8
  br label %138

127:                                              ; preds = %110, %98
  %128 = load %struct.hso_serial*, %struct.hso_serial** %7, align 8
  %129 = call i32 @hso_serial_common_free(%struct.hso_serial* %128)
  br label %130

130:                                              ; preds = %127, %86, %23
  %131 = load %struct.hso_serial*, %struct.hso_serial** %7, align 8
  %132 = call i32 @hso_free_tiomget(%struct.hso_serial* %131)
  %133 = load %struct.hso_serial*, %struct.hso_serial** %7, align 8
  %134 = call i32 @kfree(%struct.hso_serial* %133)
  %135 = load %struct.hso_device*, %struct.hso_device** %6, align 8
  %136 = bitcast %struct.hso_device* %135 to %struct.hso_serial*
  %137 = call i32 @kfree(%struct.hso_serial* %136)
  store %struct.hso_device* null, %struct.hso_device** %3, align 8
  br label %138

138:                                              ; preds = %130, %114, %16
  %139 = load %struct.hso_device*, %struct.hso_device** %3, align 8
  ret %struct.hso_device* %139
}

declare dso_local %struct.hso_serial* @hso_create_device(%struct.usb_interface*, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i64 @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i8* @hso_get_ep(%struct.usb_interface*, i32, i32) #1

declare dso_local i32 @hso_free_tiomget(%struct.hso_serial*) #1

declare dso_local i64 @hso_serial_common_create(%struct.hso_serial*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @set_serial_by_index(i32, %struct.hso_serial*) #1

declare dso_local i32 @hso_log_port(%struct.hso_serial*) #1

declare dso_local i32 @hso_serial_common_free(%struct.hso_serial*) #1

declare dso_local i32 @kfree(%struct.hso_serial*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
