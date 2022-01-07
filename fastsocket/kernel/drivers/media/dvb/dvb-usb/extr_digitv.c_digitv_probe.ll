; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_digitv.c_digitv_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_digitv.c_digitv_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.dvb_usb_device = type { i32 }

@digitv_properties = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@adapter_nr = common dso_local global i32 0, align 4
@USB_WRITE_REMOTE_TYPE = common dso_local global i32 0, align 4
@USB_WRITE_REMOTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @digitv_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @digitv_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca %struct.usb_device_id*, align 8
  %5 = alloca %struct.dvb_usb_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 16
  store %struct.usb_interface* %0, %struct.usb_interface** %3, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %4, align 8
  %8 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %9 = load i32, i32* @THIS_MODULE, align 4
  %10 = load i32, i32* @adapter_nr, align 4
  %11 = call i32 @dvb_usb_device_init(%struct.usb_interface* %8, i32* @digitv_properties, i32 %9, %struct.dvb_usb_device** %5, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %2
  %15 = bitcast [4 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 16, i1 false)
  %16 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %17 = icmp ne %struct.dvb_usb_device* %16, null
  br i1 %17, label %18, label %29

18:                                               ; preds = %14
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 1, i32* %19, align 16
  %20 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %21 = load i32, i32* @USB_WRITE_REMOTE_TYPE, align 4
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %23 = call i32 @digitv_ctrl_msg(%struct.dvb_usb_device* %20, i32 %21, i32 0, i32* %22, i32 4, i32* null, i32 0)
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 0, i32* %24, align 16
  %25 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %26 = load i32, i32* @USB_WRITE_REMOTE, align 4
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %28 = call i32 @digitv_ctrl_msg(%struct.dvb_usb_device* %25, i32 %26, i32 0, i32* %27, i32 4, i32* null, i32 0)
  br label %29

29:                                               ; preds = %18, %14
  br label %30

30:                                               ; preds = %29, %2
  %31 = load i32, i32* %6, align 4
  ret i32 %31
}

declare dso_local i32 @dvb_usb_device_init(%struct.usb_interface*, i32*, i32, %struct.dvb_usb_device**, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @digitv_ctrl_msg(%struct.dvb_usb_device*, i32, i32, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
