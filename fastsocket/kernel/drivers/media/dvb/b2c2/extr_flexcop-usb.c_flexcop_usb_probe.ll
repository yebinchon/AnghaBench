; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/b2c2/extr_flexcop-usb.c_flexcop_usb_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/b2c2/extr_flexcop-usb.c_flexcop_usb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { i32 }
%struct.flexcop_usb = type { %struct.usb_interface*, %struct.usb_device*, %struct.flexcop_device* }
%struct.flexcop_device = type { i32, i32, i32*, i32, i32, i32, i32, i32, i32, %struct.flexcop_usb* }

@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@flexcop_usb_read_ibi_reg = common dso_local global i32 0, align 4
@flexcop_usb_write_ibi_reg = common dso_local global i32 0, align 4
@flexcop_usb_i2c_request = common dso_local global i32 0, align 4
@flexcop_usb_get_mac_addr = common dso_local global i32 0, align 4
@flexcop_usb_stream_control = common dso_local global i32 0, align 4
@FC_USB = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"%s successfully initialized and connected.\00", align 1
@DRIVER_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @flexcop_usb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flexcop_usb_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.flexcop_usb*, align 8
  %8 = alloca %struct.flexcop_device*, align 8
  %9 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %10 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %11 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %10)
  store %struct.usb_device* %11, %struct.usb_device** %6, align 8
  store %struct.flexcop_usb* null, %struct.flexcop_usb** %7, align 8
  store %struct.flexcop_device* null, %struct.flexcop_device** %8, align 8
  %12 = call %struct.flexcop_device* @flexcop_device_kmalloc(i32 24)
  store %struct.flexcop_device* %12, %struct.flexcop_device** %8, align 8
  %13 = icmp eq %struct.flexcop_device* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = call i32 @err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %85

18:                                               ; preds = %2
  %19 = load %struct.flexcop_device*, %struct.flexcop_device** %8, align 8
  %20 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %19, i32 0, i32 9
  %21 = load %struct.flexcop_usb*, %struct.flexcop_usb** %20, align 8
  store %struct.flexcop_usb* %21, %struct.flexcop_usb** %7, align 8
  %22 = load %struct.flexcop_device*, %struct.flexcop_device** %8, align 8
  %23 = load %struct.flexcop_usb*, %struct.flexcop_usb** %7, align 8
  %24 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %23, i32 0, i32 2
  store %struct.flexcop_device* %22, %struct.flexcop_device** %24, align 8
  %25 = load i32, i32* @flexcop_usb_read_ibi_reg, align 4
  %26 = load %struct.flexcop_device*, %struct.flexcop_device** %8, align 8
  %27 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %26, i32 0, i32 8
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @flexcop_usb_write_ibi_reg, align 4
  %29 = load %struct.flexcop_device*, %struct.flexcop_device** %8, align 8
  %30 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %29, i32 0, i32 7
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @flexcop_usb_i2c_request, align 4
  %32 = load %struct.flexcop_device*, %struct.flexcop_device** %8, align 8
  %33 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %32, i32 0, i32 6
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @flexcop_usb_get_mac_addr, align 4
  %35 = load %struct.flexcop_device*, %struct.flexcop_device** %8, align 8
  %36 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @flexcop_usb_stream_control, align 4
  %38 = load %struct.flexcop_device*, %struct.flexcop_device** %8, align 8
  %39 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 4
  %40 = load %struct.flexcop_device*, %struct.flexcop_device** %8, align 8
  %41 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load i32, i32* @FC_USB, align 4
  %43 = load %struct.flexcop_device*, %struct.flexcop_device** %8, align 8
  %44 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 8
  %45 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %46 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %45, i32 0, i32 0
  %47 = load %struct.flexcop_device*, %struct.flexcop_device** %8, align 8
  %48 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %47, i32 0, i32 2
  store i32* %46, i32** %48, align 8
  %49 = load i32, i32* @THIS_MODULE, align 4
  %50 = load %struct.flexcop_device*, %struct.flexcop_device** %8, align 8
  %51 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %53 = load %struct.flexcop_usb*, %struct.flexcop_usb** %7, align 8
  %54 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %53, i32 0, i32 1
  store %struct.usb_device* %52, %struct.usb_device** %54, align 8
  %55 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %56 = load %struct.flexcop_usb*, %struct.flexcop_usb** %7, align 8
  %57 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %56, i32 0, i32 0
  store %struct.usb_interface* %55, %struct.usb_interface** %57, align 8
  %58 = load %struct.flexcop_usb*, %struct.flexcop_usb** %7, align 8
  %59 = call i32 @flexcop_usb_init(%struct.flexcop_usb* %58)
  store i32 %59, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %18
  br label %81

62:                                               ; preds = %18
  %63 = load %struct.flexcop_device*, %struct.flexcop_device** %8, align 8
  %64 = call i32 @flexcop_device_initialize(%struct.flexcop_device* %63)
  store i32 %64, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %78

67:                                               ; preds = %62
  %68 = load %struct.flexcop_usb*, %struct.flexcop_usb** %7, align 8
  %69 = call i32 @flexcop_usb_transfer_init(%struct.flexcop_usb* %68)
  store i32 %69, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %75

72:                                               ; preds = %67
  %73 = load i32, i32* @DRIVER_NAME, align 4
  %74 = call i32 @info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  store i32 0, i32* %3, align 4
  br label %85

75:                                               ; preds = %71
  %76 = load %struct.flexcop_device*, %struct.flexcop_device** %8, align 8
  %77 = call i32 @flexcop_device_exit(%struct.flexcop_device* %76)
  br label %78

78:                                               ; preds = %75, %66
  %79 = load %struct.flexcop_usb*, %struct.flexcop_usb** %7, align 8
  %80 = call i32 @flexcop_usb_exit(%struct.flexcop_usb* %79)
  br label %81

81:                                               ; preds = %78, %61
  %82 = load %struct.flexcop_device*, %struct.flexcop_device** %8, align 8
  %83 = call i32 @flexcop_device_kfree(%struct.flexcop_device* %82)
  %84 = load i32, i32* %9, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %81, %72, %14
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.flexcop_device* @flexcop_device_kmalloc(i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @flexcop_usb_init(%struct.flexcop_usb*) #1

declare dso_local i32 @flexcop_device_initialize(%struct.flexcop_device*) #1

declare dso_local i32 @flexcop_usb_transfer_init(%struct.flexcop_usb*) #1

declare dso_local i32 @info(i8*, i32) #1

declare dso_local i32 @flexcop_device_exit(%struct.flexcop_device*) #1

declare dso_local i32 @flexcop_usb_exit(%struct.flexcop_usb*) #1

declare dso_local i32 @flexcop_device_kfree(%struct.flexcop_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
