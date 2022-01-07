; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/iforce/extr_iforce-usb.c_iforce_usb_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/iforce/extr_iforce-usb.c_iforce_usb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32, i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { i32 }
%struct.iforce = type { i8*, i8*, i8*, i32, %struct.TYPE_4__, %struct.iforce*, %struct.usb_device*, i32 }
%struct.TYPE_4__ = type { i32, i32, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IFORCE_USB = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@iforce_usb_irq = common dso_local global i32 0, align 4
@iforce_usb_out = common dso_local global i32 0, align 4
@iforce_usb_ctrl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @iforce_usb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iforce_usb_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.usb_host_interface*, align 8
  %8 = alloca %struct.usb_endpoint_descriptor*, align 8
  %9 = alloca %struct.usb_endpoint_descriptor*, align 8
  %10 = alloca %struct.iforce*, align 8
  %11 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %12 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %13 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %12)
  store %struct.usb_device* %13, %struct.usb_device** %6, align 8
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %11, align 4
  %16 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %17 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %16, i32 0, i32 0
  %18 = load %struct.usb_host_interface*, %struct.usb_host_interface** %17, align 8
  store %struct.usb_host_interface* %18, %struct.usb_host_interface** %7, align 8
  %19 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %20 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %23, %struct.usb_endpoint_descriptor** %8, align 8
  %24 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %25 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %28, %struct.usb_endpoint_descriptor** %9, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.iforce* @kzalloc(i32 104, i32 %29)
  store %struct.iforce* %30, %struct.iforce** %10, align 8
  %31 = icmp ne %struct.iforce* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %2
  br label %135

33:                                               ; preds = %2
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8* @usb_alloc_urb(i32 0, i32 %34)
  %36 = load %struct.iforce*, %struct.iforce** %10, align 8
  %37 = getelementptr inbounds %struct.iforce, %struct.iforce* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  %38 = icmp ne i8* %35, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  br label %135

40:                                               ; preds = %33
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i8* @usb_alloc_urb(i32 0, i32 %41)
  %43 = load %struct.iforce*, %struct.iforce** %10, align 8
  %44 = getelementptr inbounds %struct.iforce, %struct.iforce* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = icmp ne i8* %42, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  br label %135

47:                                               ; preds = %40
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call i8* @usb_alloc_urb(i32 0, i32 %48)
  %50 = load %struct.iforce*, %struct.iforce** %10, align 8
  %51 = getelementptr inbounds %struct.iforce, %struct.iforce* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  %52 = icmp ne i8* %49, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %47
  br label %135

54:                                               ; preds = %47
  %55 = load i32, i32* @IFORCE_USB, align 4
  %56 = load %struct.iforce*, %struct.iforce** %10, align 8
  %57 = getelementptr inbounds %struct.iforce, %struct.iforce* %56, i32 0, i32 7
  store i32 %55, i32* %57, align 8
  %58 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %59 = load %struct.iforce*, %struct.iforce** %10, align 8
  %60 = getelementptr inbounds %struct.iforce, %struct.iforce* %59, i32 0, i32 6
  store %struct.usb_device* %58, %struct.usb_device** %60, align 8
  %61 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %62 = load i32, i32* @USB_DIR_IN, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %65 = or i32 %63, %64
  %66 = load %struct.iforce*, %struct.iforce** %10, align 8
  %67 = getelementptr inbounds %struct.iforce, %struct.iforce* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 8
  %69 = load %struct.iforce*, %struct.iforce** %10, align 8
  %70 = getelementptr inbounds %struct.iforce, %struct.iforce* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  store i64 0, i64* %71, align 8
  %72 = call i32 @cpu_to_le16(i32 16)
  %73 = load %struct.iforce*, %struct.iforce** %10, align 8
  %74 = getelementptr inbounds %struct.iforce, %struct.iforce* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  store i32 %72, i32* %75, align 4
  %76 = load %struct.iforce*, %struct.iforce** %10, align 8
  %77 = getelementptr inbounds %struct.iforce, %struct.iforce* %76, i32 0, i32 2
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %80 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %81 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %82 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @usb_rcvintpipe(%struct.usb_device* %80, i32 %83)
  %85 = load %struct.iforce*, %struct.iforce** %10, align 8
  %86 = getelementptr inbounds %struct.iforce, %struct.iforce* %85, i32 0, i32 5
  %87 = load %struct.iforce*, %struct.iforce** %86, align 8
  %88 = load i32, i32* @iforce_usb_irq, align 4
  %89 = load %struct.iforce*, %struct.iforce** %10, align 8
  %90 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %91 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @usb_fill_int_urb(i8* %78, %struct.usb_device* %79, i32 %84, %struct.iforce* %87, i32 16, i32 %88, %struct.iforce* %89, i32 %92)
  %94 = load %struct.iforce*, %struct.iforce** %10, align 8
  %95 = getelementptr inbounds %struct.iforce, %struct.iforce* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %98 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %99 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %100 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @usb_sndintpipe(%struct.usb_device* %98, i32 %101)
  %103 = load %struct.iforce*, %struct.iforce** %10, align 8
  %104 = getelementptr inbounds %struct.iforce, %struct.iforce* %103, i64 1
  %105 = load i32, i32* @iforce_usb_out, align 4
  %106 = load %struct.iforce*, %struct.iforce** %10, align 8
  %107 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %108 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @usb_fill_int_urb(i8* %96, %struct.usb_device* %97, i32 %102, %struct.iforce* %104, i32 32, i32 %105, %struct.iforce* %106, i32 %109)
  %111 = load %struct.iforce*, %struct.iforce** %10, align 8
  %112 = getelementptr inbounds %struct.iforce, %struct.iforce* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %115 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %116 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %115, i32 0)
  %117 = load %struct.iforce*, %struct.iforce** %10, align 8
  %118 = getelementptr inbounds %struct.iforce, %struct.iforce* %117, i32 0, i32 4
  %119 = bitcast %struct.TYPE_4__* %118 to i8*
  %120 = load %struct.iforce*, %struct.iforce** %10, align 8
  %121 = getelementptr inbounds %struct.iforce, %struct.iforce* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @iforce_usb_ctrl, align 4
  %124 = load %struct.iforce*, %struct.iforce** %10, align 8
  %125 = call i32 @usb_fill_control_urb(i8* %113, %struct.usb_device* %114, i32 %116, i8* %119, i32 %122, i32 16, i32 %123, %struct.iforce* %124)
  %126 = load %struct.iforce*, %struct.iforce** %10, align 8
  %127 = call i32 @iforce_init_device(%struct.iforce* %126)
  store i32 %127, i32* %11, align 4
  %128 = load i32, i32* %11, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %54
  br label %135

131:                                              ; preds = %54
  %132 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %133 = load %struct.iforce*, %struct.iforce** %10, align 8
  %134 = call i32 @usb_set_intfdata(%struct.usb_interface* %132, %struct.iforce* %133)
  store i32 0, i32* %3, align 4
  br label %155

135:                                              ; preds = %130, %53, %46, %39, %32
  %136 = load %struct.iforce*, %struct.iforce** %10, align 8
  %137 = icmp ne %struct.iforce* %136, null
  br i1 %137, label %138, label %153

138:                                              ; preds = %135
  %139 = load %struct.iforce*, %struct.iforce** %10, align 8
  %140 = getelementptr inbounds %struct.iforce, %struct.iforce* %139, i32 0, i32 2
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @usb_free_urb(i8* %141)
  %143 = load %struct.iforce*, %struct.iforce** %10, align 8
  %144 = getelementptr inbounds %struct.iforce, %struct.iforce* %143, i32 0, i32 1
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 @usb_free_urb(i8* %145)
  %147 = load %struct.iforce*, %struct.iforce** %10, align 8
  %148 = getelementptr inbounds %struct.iforce, %struct.iforce* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 @usb_free_urb(i8* %149)
  %151 = load %struct.iforce*, %struct.iforce** %10, align 8
  %152 = call i32 @kfree(%struct.iforce* %151)
  br label %153

153:                                              ; preds = %138, %135
  %154 = load i32, i32* %11, align 4
  store i32 %154, i32* %3, align 4
  br label %155

155:                                              ; preds = %153, %131
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.iforce* @kzalloc(i32, i32) #1

declare dso_local i8* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @usb_fill_int_urb(i8*, %struct.usb_device*, i32, %struct.iforce*, i32, i32, %struct.iforce*, i32) #1

declare dso_local i32 @usb_rcvintpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_sndintpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_fill_control_urb(i8*, %struct.usb_device*, i32, i8*, i32, i32, i32, %struct.iforce*) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @iforce_init_device(%struct.iforce*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.iforce*) #1

declare dso_local i32 @usb_free_urb(i8*) #1

declare dso_local i32 @kfree(%struct.iforce*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
