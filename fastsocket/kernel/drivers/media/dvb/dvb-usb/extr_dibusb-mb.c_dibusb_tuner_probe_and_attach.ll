; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dibusb-mb.c_dibusb_tuner_probe_and_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dibusb-mb.c_dibusb_tuner_probe_and_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { %struct.TYPE_7__*, %struct.TYPE_5__*, %struct.dibusb_state* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*, i32)* }
%struct.TYPE_5__ = type { i32 }
%struct.dibusb_state = type { i32 }
%struct.i2c_msg = type { i32*, i32, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"tuner i2c write failed.\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"This device has the Thomson Cable onboard. Which is default.\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"This device has the Panasonic ENV77H11D5 onboard.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @dibusb_tuner_probe_and_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dibusb_tuner_probe_and_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca %struct.dvb_usb_adapter*, align 8
  %3 = alloca [2 x i32], align 4
  %4 = alloca [1 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca [2 x %struct.i2c_msg], align 16
  %7 = alloca %struct.dibusb_state*, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %2, align 8
  %8 = bitcast [2 x i32]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 8, i1 false)
  store i32 0, i32* %5, align 4
  %9 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %6, i64 0, i64 0
  %10 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 0
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  store i32* %11, i32** %10, align 8
  %12 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 1
  store i32 2, i32* %12, align 8
  %13 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 2
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 3
  store i32 0, i32* %14, align 8
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i64 1
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 0
  %17 = getelementptr inbounds [1 x i32], [1 x i32]* %4, i64 0, i64 0
  store i32* %17, i32** %16, align 8
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 1
  store i32 1, i32* %18, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 2
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 3
  %21 = load i32, i32* @I2C_M_RD, align 4
  store i32 %21, i32* %20, align 8
  %22 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %22, i32 0, i32 2
  %24 = load %struct.dibusb_state*, %struct.dibusb_state** %23, align 8
  store %struct.dibusb_state* %24, %struct.dibusb_state** %7, align 8
  %25 = load %struct.dibusb_state*, %struct.dibusb_state** %7, align 8
  %26 = getelementptr inbounds %struct.dibusb_state, %struct.dibusb_state* %25, i32 0, i32 0
  store i32 96, i32* %26, align 4
  %27 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %6, i64 0, i64 1
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %27, i32 0, i32 2
  store i32 96, i32* %28, align 4
  %29 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %6, i64 0, i64 0
  %30 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %29, i32 0, i32 2
  store i32 96, i32* %30, align 4
  %31 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %32 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %35, align 8
  %37 = icmp ne i32 (%struct.TYPE_7__*, i32)* %36, null
  br i1 %37, label %38, label %49

38:                                               ; preds = %1
  %39 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %40 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %39, i32 0, i32 0
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %43, align 8
  %45 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %46 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = call i32 %44(%struct.TYPE_7__* %47, i32 1)
  br label %49

49:                                               ; preds = %38, %1
  %50 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %51 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %50, i32 0, i32 1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %6, i64 0, i64 0
  %55 = call i32 @i2c_transfer(i32* %53, %struct.i2c_msg* %54, i32 2)
  %56 = icmp ne i32 %55, 2
  br i1 %56, label %57, label %61

57:                                               ; preds = %49
  %58 = call i32 @err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* @EREMOTEIO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %57, %49
  %62 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %63 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %62, i32 0, i32 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %66, align 8
  %68 = icmp ne i32 (%struct.TYPE_7__*, i32)* %67, null
  br i1 %68, label %69, label %80

69:                                               ; preds = %61
  %70 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %71 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %70, i32 0, i32 0
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %74, align 8
  %76 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %77 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %76, i32 0, i32 0
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = call i32 %75(%struct.TYPE_7__* %78, i32 0)
  br label %80

80:                                               ; preds = %69, %61
  %81 = getelementptr inbounds [1 x i32], [1 x i32]* %4, i64 0, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 254
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = call i32 @info(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  %86 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %87 = call i32 @dibusb_thomson_tuner_attach(%struct.dvb_usb_adapter* %86)
  store i32 %87, i32* %5, align 4
  br label %92

88:                                               ; preds = %80
  %89 = call i32 @info(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %90 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %91 = call i32 @dibusb_panasonic_tuner_attach(%struct.dvb_usb_adapter* %90)
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %88, %84
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #2

declare dso_local i32 @err(i8*) #2

declare dso_local i32 @info(i8*) #2

declare dso_local i32 @dibusb_thomson_tuner_attach(%struct.dvb_usb_adapter*) #2

declare dso_local i32 @dibusb_panasonic_tuner_attach(%struct.dvb_usb_adapter*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
