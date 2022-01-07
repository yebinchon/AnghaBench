; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_ds.c_pcmcia_device_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_ds.c_pcmcia_device_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pcmcia_device = type { i64, %struct.pcmcia_socket*, %struct.TYPE_5__, i32, i32, i32 }
%struct.pcmcia_socket = type { i32 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.pcmcia_driver = type { i32 (%struct.pcmcia_device.0*)*, i32, %struct.TYPE_6__ }
%struct.pcmcia_device.0 = type opaque
%struct.TYPE_6__ = type { i32 }
%struct.pcmcia_device_id = type { i32 }
%struct.TYPE_7__ = type { i64*, i64 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"trying to bind to %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CISTPL_CONFIG = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"pcmcia: could not parse base and rmask0 of CIS\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"binding to %s failed with %d\0A\00", align 1
@PCMCIA_DEV_ID_MATCH_DEVICE_NO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @pcmcia_device_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcmcia_device_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.pcmcia_device*, align 8
  %5 = alloca %struct.pcmcia_driver*, align 8
  %6 = alloca %struct.pcmcia_device_id*, align 8
  %7 = alloca %struct.pcmcia_socket*, align 8
  %8 = alloca %struct.TYPE_7__, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call %struct.device* @get_device(%struct.device* %10)
  store %struct.device* %11, %struct.device** %3, align 8
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = icmp ne %struct.device* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %150

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %3, align 8
  %19 = call %struct.pcmcia_device* @to_pcmcia_dev(%struct.device* %18)
  store %struct.pcmcia_device* %19, %struct.pcmcia_device** %4, align 8
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.pcmcia_driver* @to_pcmcia_drv(i32 %22)
  store %struct.pcmcia_driver* %23, %struct.pcmcia_driver** %5, align 8
  %24 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %25 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %24, i32 0, i32 1
  %26 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %25, align 8
  store %struct.pcmcia_socket* %26, %struct.pcmcia_socket** %7, align 8
  %27 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %28 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %27, i32 0, i32 5
  %29 = call %struct.pcmcia_device_id* @dev_get_drvdata(i32* %28)
  store %struct.pcmcia_device_id* %29, %struct.pcmcia_device_id** %6, align 8
  %30 = load %struct.device*, %struct.device** %3, align 8
  %31 = load %struct.pcmcia_driver*, %struct.pcmcia_driver** %5, align 8
  %32 = getelementptr inbounds %struct.pcmcia_driver, %struct.pcmcia_driver* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i32, %struct.device*, i8*, i32, ...) @ds_dev_dbg(i32 1, %struct.device* %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load %struct.pcmcia_driver*, %struct.pcmcia_driver** %5, align 8
  %37 = getelementptr inbounds %struct.pcmcia_driver, %struct.pcmcia_driver* %36, i32 0, i32 0
  %38 = load i32 (%struct.pcmcia_device.0*)*, i32 (%struct.pcmcia_device.0*)** %37, align 8
  %39 = icmp ne i32 (%struct.pcmcia_device.0*)* %38, null
  br i1 %39, label %40, label %51

40:                                               ; preds = %17
  %41 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %42 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load %struct.pcmcia_driver*, %struct.pcmcia_driver** %5, align 8
  %47 = getelementptr inbounds %struct.pcmcia_driver, %struct.pcmcia_driver* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @try_module_get(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %45, %40, %17
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %9, align 4
  br label %142

54:                                               ; preds = %45
  %55 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %56 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %55, i32 0, i32 1
  %57 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %56, align 8
  %58 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %59 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @CISTPL_CONFIG, align 4
  %62 = call i32 @pccard_read_tuple(%struct.pcmcia_socket* %57, i32 %60, i32 %61, %struct.TYPE_7__* %8)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %78, label %65

65:                                               ; preds = %54
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %69 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  store i64 %67, i64* %70, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %76 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  store i64 %74, i64* %77, align 8
  br label %88

78:                                               ; preds = %54
  %79 = load i32, i32* @KERN_INFO, align 4
  %80 = load %struct.device*, %struct.device** %3, align 8
  %81 = call i32 @dev_printk(i32 %79, %struct.device* %80, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %82 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %83 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  store i64 0, i64* %84, align 8
  %85 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %86 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  store i64 0, i64* %87, align 8
  br label %88

88:                                               ; preds = %78, %65
  %89 = load %struct.pcmcia_driver*, %struct.pcmcia_driver** %5, align 8
  %90 = getelementptr inbounds %struct.pcmcia_driver, %struct.pcmcia_driver* %89, i32 0, i32 0
  %91 = load i32 (%struct.pcmcia_device.0*)*, i32 (%struct.pcmcia_device.0*)** %90, align 8
  %92 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %93 = bitcast %struct.pcmcia_device* %92 to %struct.pcmcia_device.0*
  %94 = call i32 %91(%struct.pcmcia_device.0* %93)
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %88
  %98 = load %struct.device*, %struct.device** %3, align 8
  %99 = load %struct.pcmcia_driver*, %struct.pcmcia_driver** %5, align 8
  %100 = getelementptr inbounds %struct.pcmcia_driver, %struct.pcmcia_driver* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i32 (i32, %struct.device*, i8*, i32, ...) @ds_dev_dbg(i32 1, %struct.device* %98, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %102, i32 %103)
  br label %133

105:                                              ; preds = %88
  %106 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %6, align 8
  %107 = icmp ne %struct.pcmcia_device_id* %106, null
  br i1 %107, label %108, label %132

108:                                              ; preds = %105
  %109 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %6, align 8
  %110 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @PCMCIA_DEV_ID_MATCH_DEVICE_NO, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %132

115:                                              ; preds = %108
  %116 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %117 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %116, i32 0, i32 1
  %118 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %117, align 8
  %119 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %122, label %132

122:                                              ; preds = %115
  %123 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %124 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %122
  %128 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %129 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %128, i32 0, i32 1
  %130 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %129, align 8
  %131 = call i32 @pcmcia_add_device_later(%struct.pcmcia_socket* %130, i32 0)
  br label %132

132:                                              ; preds = %127, %122, %115, %108, %105
  br label %133

133:                                              ; preds = %132, %97
  %134 = load i32, i32* %9, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %133
  %137 = load %struct.pcmcia_driver*, %struct.pcmcia_driver** %5, align 8
  %138 = getelementptr inbounds %struct.pcmcia_driver, %struct.pcmcia_driver* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @module_put(i32 %139)
  br label %141

141:                                              ; preds = %136, %133
  br label %142

142:                                              ; preds = %141, %51
  %143 = load i32, i32* %9, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = load %struct.device*, %struct.device** %3, align 8
  %147 = call i32 @put_device(%struct.device* %146)
  br label %148

148:                                              ; preds = %145, %142
  %149 = load i32, i32* %9, align 4
  store i32 %149, i32* %2, align 4
  br label %150

150:                                              ; preds = %148, %14
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local %struct.device* @get_device(%struct.device*) #1

declare dso_local %struct.pcmcia_device* @to_pcmcia_dev(%struct.device*) #1

declare dso_local %struct.pcmcia_driver* @to_pcmcia_drv(i32) #1

declare dso_local %struct.pcmcia_device_id* @dev_get_drvdata(i32*) #1

declare dso_local i32 @ds_dev_dbg(i32, %struct.device*, i8*, i32, ...) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @pccard_read_tuple(%struct.pcmcia_socket*, i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @dev_printk(i32, %struct.device*, i8*) #1

declare dso_local i32 @pcmcia_add_device_later(%struct.pcmcia_socket*, i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
