; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_m920x.c_m920x_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_m920x.c_m920x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m920x_inits = type { i32 }
%struct.usb_interface = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.dvb_usb_device = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"Probing for m920x device at interface %d\0A\00", align 1
@megasky_properties = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@adapter_nr = common dso_local global i32 0, align 4
@megasky_rc_init = common dso_local global %struct.m920x_inits* null, align 8
@digivox_mini_ii_properties = common dso_local global i32 0, align 4
@tvwalkertwin_properties = common dso_local global i32 0, align 4
@tvwalkertwin_rc_init = common dso_local global %struct.m920x_inits* null, align 8
@dposh_properties = common dso_local global i32 0, align 4
@pinnacle_pctv310e_properties = common dso_local global i32 0, align 4
@pinnacle310e_init = common dso_local global %struct.m920x_inits* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @m920x_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m920x_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.dvb_usb_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.m920x_inits*, align 8
  %9 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  store %struct.dvb_usb_device* null, %struct.dvb_usb_device** %6, align 8
  store %struct.m920x_inits* null, %struct.m920x_inits** %8, align 8
  %10 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %11 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @deb(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %9, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %65

20:                                               ; preds = %2
  %21 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %22 = load i32, i32* @THIS_MODULE, align 4
  %23 = load i32, i32* @adapter_nr, align 4
  %24 = call i32 @dvb_usb_device_init(%struct.usb_interface* %21, i32* @megasky_properties, i32 %22, %struct.dvb_usb_device** %6, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load %struct.m920x_inits*, %struct.m920x_inits** @megasky_rc_init, align 8
  store %struct.m920x_inits* %28, %struct.m920x_inits** %8, align 8
  br label %67

29:                                               ; preds = %20
  %30 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %31 = load i32, i32* @THIS_MODULE, align 4
  %32 = load i32, i32* @adapter_nr, align 4
  %33 = call i32 @dvb_usb_device_init(%struct.usb_interface* %30, i32* @digivox_mini_ii_properties, i32 %31, %struct.dvb_usb_device** %6, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %67

37:                                               ; preds = %29
  %38 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %39 = load i32, i32* @THIS_MODULE, align 4
  %40 = load i32, i32* @adapter_nr, align 4
  %41 = call i32 @dvb_usb_device_init(%struct.usb_interface* %38, i32* @tvwalkertwin_properties, i32 %39, %struct.dvb_usb_device** %6, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load %struct.m920x_inits*, %struct.m920x_inits** @tvwalkertwin_rc_init, align 8
  store %struct.m920x_inits* %45, %struct.m920x_inits** %8, align 8
  br label %67

46:                                               ; preds = %37
  %47 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %48 = load i32, i32* @THIS_MODULE, align 4
  %49 = load i32, i32* @adapter_nr, align 4
  %50 = call i32 @dvb_usb_device_init(%struct.usb_interface* %47, i32* @dposh_properties, i32 %48, %struct.dvb_usb_device** %6, i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %67

54:                                               ; preds = %46
  %55 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %56 = load i32, i32* @THIS_MODULE, align 4
  %57 = load i32, i32* @adapter_nr, align 4
  %58 = call i32 @dvb_usb_device_init(%struct.usb_interface* %55, i32* @pinnacle_pctv310e_properties, i32 %56, %struct.dvb_usb_device** %6, i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load %struct.m920x_inits*, %struct.m920x_inits** @pinnacle310e_init, align 8
  store %struct.m920x_inits* %62, %struct.m920x_inits** %8, align 8
  br label %67

63:                                               ; preds = %54
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %3, align 4
  br label %85

65:                                               ; preds = %2
  br label %66

66:                                               ; preds = %65
  br label %67

67:                                               ; preds = %66, %61, %53, %44, %36, %27
  %68 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %69 = call i32 @m920x_init_ep(%struct.usb_interface* %68)
  store i32 %69, i32* %7, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %3, align 4
  br label %85

73:                                               ; preds = %67
  %74 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %75 = icmp ne %struct.dvb_usb_device* %74, null
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %78 = load %struct.m920x_inits*, %struct.m920x_inits** %8, align 8
  %79 = call i32 @m920x_init(%struct.dvb_usb_device* %77, %struct.m920x_inits* %78)
  store i32 %79, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %3, align 4
  br label %85

83:                                               ; preds = %76, %73
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %83, %81, %71, %63
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @deb(i8*, i32) #1

declare dso_local i32 @dvb_usb_device_init(%struct.usb_interface*, i32*, i32, %struct.dvb_usb_device**, i32) #1

declare dso_local i32 @m920x_init_ep(%struct.usb_interface*) #1

declare dso_local i32 @m920x_init(%struct.dvb_usb_device*, %struct.m920x_inits*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
