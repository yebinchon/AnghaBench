; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_cxusb.c_cxusb_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_cxusb.c_cxusb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }

@cxusb_medion_properties = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@adapter_nr = common dso_local global i32 0, align 4
@cxusb_bluebird_lgh064f_properties = common dso_local global i32 0, align 4
@cxusb_bluebird_dee1601_properties = common dso_local global i32 0, align 4
@cxusb_bluebird_lgz201_properties = common dso_local global i32 0, align 4
@cxusb_bluebird_dtt7579_properties = common dso_local global i32 0, align 4
@cxusb_bluebird_dualdig4_properties = common dso_local global i32 0, align 4
@cxusb_bluebird_nano2_properties = common dso_local global i32 0, align 4
@cxusb_bluebird_nano2_needsfirmware_properties = common dso_local global i32 0, align 4
@cxusb_aver_a868r_properties = common dso_local global i32 0, align 4
@cxusb_bluebird_dualdig4_rev2_properties = common dso_local global i32 0, align 4
@cxusb_d680_dmb_properties = common dso_local global i32 0, align 4
@cxusb_mygica_d689_properties = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @cxusb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxusb_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %6 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %7 = load i32, i32* @THIS_MODULE, align 4
  %8 = load i32, i32* @adapter_nr, align 4
  %9 = call i64 @dvb_usb_device_init(%struct.usb_interface* %6, i32* @cxusb_medion_properties, i32 %7, i32* null, i32 %8)
  %10 = icmp eq i64 0, %9
  br i1 %10, label %77, label %11

11:                                               ; preds = %2
  %12 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %13 = load i32, i32* @THIS_MODULE, align 4
  %14 = load i32, i32* @adapter_nr, align 4
  %15 = call i64 @dvb_usb_device_init(%struct.usb_interface* %12, i32* @cxusb_bluebird_lgh064f_properties, i32 %13, i32* null, i32 %14)
  %16 = icmp eq i64 0, %15
  br i1 %16, label %77, label %17

17:                                               ; preds = %11
  %18 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %19 = load i32, i32* @THIS_MODULE, align 4
  %20 = load i32, i32* @adapter_nr, align 4
  %21 = call i64 @dvb_usb_device_init(%struct.usb_interface* %18, i32* @cxusb_bluebird_dee1601_properties, i32 %19, i32* null, i32 %20)
  %22 = icmp eq i64 0, %21
  br i1 %22, label %77, label %23

23:                                               ; preds = %17
  %24 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %25 = load i32, i32* @THIS_MODULE, align 4
  %26 = load i32, i32* @adapter_nr, align 4
  %27 = call i64 @dvb_usb_device_init(%struct.usb_interface* %24, i32* @cxusb_bluebird_lgz201_properties, i32 %25, i32* null, i32 %26)
  %28 = icmp eq i64 0, %27
  br i1 %28, label %77, label %29

29:                                               ; preds = %23
  %30 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %31 = load i32, i32* @THIS_MODULE, align 4
  %32 = load i32, i32* @adapter_nr, align 4
  %33 = call i64 @dvb_usb_device_init(%struct.usb_interface* %30, i32* @cxusb_bluebird_dtt7579_properties, i32 %31, i32* null, i32 %32)
  %34 = icmp eq i64 0, %33
  br i1 %34, label %77, label %35

35:                                               ; preds = %29
  %36 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %37 = load i32, i32* @THIS_MODULE, align 4
  %38 = load i32, i32* @adapter_nr, align 4
  %39 = call i64 @dvb_usb_device_init(%struct.usb_interface* %36, i32* @cxusb_bluebird_dualdig4_properties, i32 %37, i32* null, i32 %38)
  %40 = icmp eq i64 0, %39
  br i1 %40, label %77, label %41

41:                                               ; preds = %35
  %42 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %43 = load i32, i32* @THIS_MODULE, align 4
  %44 = load i32, i32* @adapter_nr, align 4
  %45 = call i64 @dvb_usb_device_init(%struct.usb_interface* %42, i32* @cxusb_bluebird_nano2_properties, i32 %43, i32* null, i32 %44)
  %46 = icmp eq i64 0, %45
  br i1 %46, label %77, label %47

47:                                               ; preds = %41
  %48 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %49 = load i32, i32* @THIS_MODULE, align 4
  %50 = load i32, i32* @adapter_nr, align 4
  %51 = call i64 @dvb_usb_device_init(%struct.usb_interface* %48, i32* @cxusb_bluebird_nano2_needsfirmware_properties, i32 %49, i32* null, i32 %50)
  %52 = icmp eq i64 0, %51
  br i1 %52, label %77, label %53

53:                                               ; preds = %47
  %54 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %55 = load i32, i32* @THIS_MODULE, align 4
  %56 = load i32, i32* @adapter_nr, align 4
  %57 = call i64 @dvb_usb_device_init(%struct.usb_interface* %54, i32* @cxusb_aver_a868r_properties, i32 %55, i32* null, i32 %56)
  %58 = icmp eq i64 0, %57
  br i1 %58, label %77, label %59

59:                                               ; preds = %53
  %60 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %61 = load i32, i32* @THIS_MODULE, align 4
  %62 = load i32, i32* @adapter_nr, align 4
  %63 = call i64 @dvb_usb_device_init(%struct.usb_interface* %60, i32* @cxusb_bluebird_dualdig4_rev2_properties, i32 %61, i32* null, i32 %62)
  %64 = icmp eq i64 0, %63
  br i1 %64, label %77, label %65

65:                                               ; preds = %59
  %66 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %67 = load i32, i32* @THIS_MODULE, align 4
  %68 = load i32, i32* @adapter_nr, align 4
  %69 = call i64 @dvb_usb_device_init(%struct.usb_interface* %66, i32* @cxusb_d680_dmb_properties, i32 %67, i32* null, i32 %68)
  %70 = icmp eq i64 0, %69
  br i1 %70, label %77, label %71

71:                                               ; preds = %65
  %72 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %73 = load i32, i32* @THIS_MODULE, align 4
  %74 = load i32, i32* @adapter_nr, align 4
  %75 = call i64 @dvb_usb_device_init(%struct.usb_interface* %72, i32* @cxusb_mygica_d689_properties, i32 %73, i32* null, i32 %74)
  %76 = icmp eq i64 0, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %71, %65, %59, %53, %47, %41, %35, %29, %23, %17, %11, %2
  store i32 0, i32* %3, align 4
  br label %81

78:                                               ; preds = %71
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %78, %77
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i64 @dvb_usb_device_init(%struct.usb_interface*, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
