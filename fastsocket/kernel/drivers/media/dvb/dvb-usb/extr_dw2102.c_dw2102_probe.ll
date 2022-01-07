; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dw2102.c_dw2102_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dw2102.c_dw2102_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, %struct.TYPE_11__*, i32, i32, i32* }
%struct.TYPE_11__ = type { i32 }
%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@p7500 = common dso_local global %struct.TYPE_12__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@s6x0_properties = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str = private unnamed_addr constant [17 x i8] c"dvb-usb-p7500.fw\00", align 1
@d7500 = common dso_local global i32 0, align 4
@rc_map_tbs_table = common dso_local global i32 0, align 4
@prof_7500_frontend_attach = common dso_local global i32 0, align 4
@dw2102_properties = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@THIS_MODULE = common dso_local global i32 0, align 4
@adapter_nr = common dso_local global i32 0, align 4
@dw2104_properties = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@dw3101_properties = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @dw2102_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw2102_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.TYPE_12__* @kzalloc(i32 4, i32 %6)
  store %struct.TYPE_12__* %7, %struct.TYPE_12__** @p7500, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** @p7500, align 8
  %9 = icmp ne %struct.TYPE_12__* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %69

13:                                               ; preds = %2
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** @p7500, align 8
  %15 = call i32 @memcpy(%struct.TYPE_12__* %14, %struct.TYPE_12__* @s6x0_properties, i32 4)
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** @p7500, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  %18 = load i32, i32* @d7500, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** @p7500, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 4
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 %18, i32* %22, align 4
  %23 = load i32, i32* @rc_map_tbs_table, align 4
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** @p7500, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @rc_map_tbs_table, align 4
  %27 = call i32 @ARRAY_SIZE(i32 %26)
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** @p7500, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @prof_7500_frontend_attach, align 4
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** @p7500, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  store i32 %30, i32* %34, align 4
  %35 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %36 = load i32, i32* @THIS_MODULE, align 4
  %37 = load i32, i32* @adapter_nr, align 4
  %38 = call i64 @dvb_usb_device_init(%struct.usb_interface* %35, %struct.TYPE_12__* @dw2102_properties, i32 %36, i32* null, i32 %37)
  %39 = icmp eq i64 0, %38
  br i1 %39, label %65, label %40

40:                                               ; preds = %13
  %41 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %42 = load i32, i32* @THIS_MODULE, align 4
  %43 = load i32, i32* @adapter_nr, align 4
  %44 = call i64 @dvb_usb_device_init(%struct.usb_interface* %41, %struct.TYPE_12__* @dw2104_properties, i32 %42, i32* null, i32 %43)
  %45 = icmp eq i64 0, %44
  br i1 %45, label %65, label %46

46:                                               ; preds = %40
  %47 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %48 = load i32, i32* @THIS_MODULE, align 4
  %49 = load i32, i32* @adapter_nr, align 4
  %50 = call i64 @dvb_usb_device_init(%struct.usb_interface* %47, %struct.TYPE_12__* @dw3101_properties, i32 %48, i32* null, i32 %49)
  %51 = icmp eq i64 0, %50
  br i1 %51, label %65, label %52

52:                                               ; preds = %46
  %53 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %54 = load i32, i32* @THIS_MODULE, align 4
  %55 = load i32, i32* @adapter_nr, align 4
  %56 = call i64 @dvb_usb_device_init(%struct.usb_interface* %53, %struct.TYPE_12__* @s6x0_properties, i32 %54, i32* null, i32 %55)
  %57 = icmp eq i64 0, %56
  br i1 %57, label %65, label %58

58:                                               ; preds = %52
  %59 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** @p7500, align 8
  %61 = load i32, i32* @THIS_MODULE, align 4
  %62 = load i32, i32* @adapter_nr, align 4
  %63 = call i64 @dvb_usb_device_init(%struct.usb_interface* %59, %struct.TYPE_12__* %60, i32 %61, i32* null, i32 %62)
  %64 = icmp eq i64 0, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %58, %52, %46, %40, %13
  store i32 0, i32* %3, align 4
  br label %69

66:                                               ; preds = %58
  %67 = load i32, i32* @ENODEV, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %66, %65, %10
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.TYPE_12__* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_12__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i64 @dvb_usb_device_init(%struct.usb_interface*, %struct.TYPE_12__*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
