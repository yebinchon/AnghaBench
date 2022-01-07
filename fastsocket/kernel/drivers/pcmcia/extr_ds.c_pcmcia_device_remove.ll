; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_ds.c_pcmcia_device_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_ds.c_pcmcia_device_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pcmcia_device = type { i64, i32, i64, i64, i64, i32*, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.pcmcia_driver = type { i32, %struct.TYPE_3__, i32 (%struct.pcmcia_device.0*)* }
%struct.TYPE_3__ = type { i32 }
%struct.pcmcia_device.0 = type opaque
%struct.pcmcia_device_id = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"removing device\0A\00", align 1
@PCMCIA_DEV_ID_MATCH_DEVICE_NO = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"pcmcia: driver %s did not release config properly\0A\00", align 1
@MAX_WIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"pcmcia: driver %s did not release window properly\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @pcmcia_device_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcmcia_device_remove(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.pcmcia_device*, align 8
  %5 = alloca %struct.pcmcia_driver*, align 8
  %6 = alloca %struct.pcmcia_device_id*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.pcmcia_device* @to_pcmcia_dev(%struct.device* %8)
  store %struct.pcmcia_device* %9, %struct.pcmcia_device** %4, align 8
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.pcmcia_driver* @to_pcmcia_drv(i32 %12)
  store %struct.pcmcia_driver* %13, %struct.pcmcia_driver** %5, align 8
  %14 = load %struct.device*, %struct.device** %3, align 8
  %15 = call i32 @ds_dev_dbg(i32 1, %struct.device* %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %17 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %16, i32 0, i32 7
  %18 = call %struct.pcmcia_device_id* @dev_get_drvdata(i32* %17)
  store %struct.pcmcia_device_id* %18, %struct.pcmcia_device_id** %6, align 8
  %19 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %6, align 8
  %20 = icmp ne %struct.pcmcia_device_id* %19, null
  br i1 %20, label %21, label %46

21:                                               ; preds = %1
  %22 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %6, align 8
  %23 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PCMCIA_DEV_ID_MATCH_DEVICE_NO, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %21
  %29 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %30 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %29, i32 0, i32 6
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %28
  %36 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %37 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %42 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %41, i32 0, i32 6
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %45 = call i32 @pcmcia_card_remove(%struct.TYPE_4__* %43, %struct.pcmcia_device* %44)
  br label %46

46:                                               ; preds = %40, %35, %28, %21, %1
  %47 = load %struct.pcmcia_driver*, %struct.pcmcia_driver** %5, align 8
  %48 = icmp ne %struct.pcmcia_driver* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %119

50:                                               ; preds = %46
  %51 = load %struct.pcmcia_driver*, %struct.pcmcia_driver** %5, align 8
  %52 = getelementptr inbounds %struct.pcmcia_driver, %struct.pcmcia_driver* %51, i32 0, i32 2
  %53 = load i32 (%struct.pcmcia_device.0*)*, i32 (%struct.pcmcia_device.0*)** %52, align 8
  %54 = icmp ne i32 (%struct.pcmcia_device.0*)* %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load %struct.pcmcia_driver*, %struct.pcmcia_driver** %5, align 8
  %57 = getelementptr inbounds %struct.pcmcia_driver, %struct.pcmcia_driver* %56, i32 0, i32 2
  %58 = load i32 (%struct.pcmcia_device.0*)*, i32 (%struct.pcmcia_device.0*)** %57, align 8
  %59 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %60 = bitcast %struct.pcmcia_device* %59 to %struct.pcmcia_device.0*
  %61 = call i32 %58(%struct.pcmcia_device.0* %60)
  br label %62

62:                                               ; preds = %55, %50
  %63 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %64 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %63, i32 0, i32 5
  store i32* null, i32** %64, align 8
  %65 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %66 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %79, label %69

69:                                               ; preds = %62
  %70 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %71 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %69
  %75 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %76 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %74, %69, %62
  %80 = load i32, i32* @KERN_INFO, align 4
  %81 = load %struct.device*, %struct.device** %3, align 8
  %82 = load %struct.pcmcia_driver*, %struct.pcmcia_driver** %5, align 8
  %83 = getelementptr inbounds %struct.pcmcia_driver, %struct.pcmcia_driver* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @dev_printk(i32 %80, %struct.device* %81, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %79, %74
  store i32 0, i32* %7, align 4
  br label %88

88:                                               ; preds = %109, %87
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @MAX_WIN, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %112

92:                                               ; preds = %88
  %93 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %94 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @CLIENT_WIN_REQ(i32 %96)
  %98 = and i32 %95, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %92
  %101 = load i32, i32* @KERN_INFO, align 4
  %102 = load %struct.device*, %struct.device** %3, align 8
  %103 = load %struct.pcmcia_driver*, %struct.pcmcia_driver** %5, align 8
  %104 = getelementptr inbounds %struct.pcmcia_driver, %struct.pcmcia_driver* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @dev_printk(i32 %101, %struct.device* %102, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %100, %92
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %7, align 4
  br label %88

112:                                              ; preds = %88
  %113 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %114 = call i32 @pcmcia_put_dev(%struct.pcmcia_device* %113)
  %115 = load %struct.pcmcia_driver*, %struct.pcmcia_driver** %5, align 8
  %116 = getelementptr inbounds %struct.pcmcia_driver, %struct.pcmcia_driver* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @module_put(i32 %117)
  store i32 0, i32* %2, align 4
  br label %119

119:                                              ; preds = %112, %49
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local %struct.pcmcia_device* @to_pcmcia_dev(%struct.device*) #1

declare dso_local %struct.pcmcia_driver* @to_pcmcia_drv(i32) #1

declare dso_local i32 @ds_dev_dbg(i32, %struct.device*, i8*) #1

declare dso_local %struct.pcmcia_device_id* @dev_get_drvdata(i32*) #1

declare dso_local i32 @pcmcia_card_remove(%struct.TYPE_4__*, %struct.pcmcia_device*) #1

declare dso_local i32 @dev_printk(i32, %struct.device*, i8*, i32) #1

declare dso_local i32 @CLIENT_WIN_REQ(i32) #1

declare dso_local i32 @pcmcia_put_dev(%struct.pcmcia_device*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
