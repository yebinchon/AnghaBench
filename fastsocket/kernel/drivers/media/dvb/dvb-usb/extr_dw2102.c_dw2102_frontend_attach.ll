; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dw2102.c_dw2102_frontend_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dw2102.c_dw2102_frontend_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }
%struct.dvb_usb_adapter = type { %struct.TYPE_8__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i32 }

@dw2102_properties = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@dw2102_serit_i2c_algo = common dso_local global i32 0, align 4
@si21xx_attach = common dso_local global i32 0, align 4
@serit_sp1511lhb_config = common dso_local global i32 0, align 4
@dw210x_set_voltage = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"Attached si21xx!\0A\00", align 1
@dw2102_earda_i2c_algo = common dso_local global i32 0, align 4
@stv0288_attach = common dso_local global i32 0, align 4
@earda_config = common dso_local global i32 0, align 4
@stb6000_attach = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Attached stv0288!\0A\00", align 1
@dw2102_i2c_algo = common dso_local global i32 0, align 4
@stv0299_attach = common dso_local global i32 0, align 4
@sharp_z0194a_config = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Attached stv0299!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @dw2102_frontend_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw2102_frontend_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  %4 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @dw2102_properties, i32 0, i32 0), align 8
  %5 = icmp eq i32* %4, @dw2102_serit_i2c_algo
  br i1 %5, label %6, label %30

6:                                                ; preds = %1
  %7 = load i32, i32* @si21xx_attach, align 4
  %8 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %8, i32 0, i32 1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = ptrtoint i32* %11 to i32
  %13 = call i8* (i32, %struct.TYPE_8__*, i32, ...) @dvb_attach(i32 %7, %struct.TYPE_8__* bitcast (i32* @serit_sp1511lhb_config to %struct.TYPE_8__*), i32 %12)
  %14 = bitcast i8* %13 to %struct.TYPE_8__*
  %15 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %15, i32 0, i32 0
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %16, align 8
  %17 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = icmp ne %struct.TYPE_8__* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %6
  %22 = load i8*, i8** @dw210x_set_voltage, align 8
  %23 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %24 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store i8* %22, i8** %27, align 8
  %28 = call i32 @info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %99

29:                                               ; preds = %6
  br label %30

30:                                               ; preds = %29, %1
  %31 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @dw2102_properties, i32 0, i32 0), align 8
  %32 = icmp eq i32* %31, @dw2102_earda_i2c_algo
  br i1 %32, label %33, label %69

33:                                               ; preds = %30
  %34 = load i32, i32* @stv0288_attach, align 4
  %35 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %36 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %35, i32 0, i32 1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = ptrtoint i32* %38 to i32
  %40 = call i8* (i32, %struct.TYPE_8__*, i32, ...) @dvb_attach(i32 %34, %struct.TYPE_8__* bitcast (i32* @earda_config to %struct.TYPE_8__*), i32 %39)
  %41 = bitcast i8* %40 to %struct.TYPE_8__*
  %42 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %43 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %42, i32 0, i32 0
  store %struct.TYPE_8__* %41, %struct.TYPE_8__** %43, align 8
  %44 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %45 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %44, i32 0, i32 0
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = icmp ne %struct.TYPE_8__* %46, null
  br i1 %47, label %48, label %68

48:                                               ; preds = %33
  %49 = load i32, i32* @stb6000_attach, align 4
  %50 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %51 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %50, i32 0, i32 0
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %54 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %53, i32 0, i32 1
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = call i8* (i32, %struct.TYPE_8__*, i32, ...) @dvb_attach(i32 %49, %struct.TYPE_8__* %52, i32 97, i32* %56)
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %48
  %60 = load i8*, i8** @dw210x_set_voltage, align 8
  %61 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %62 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %61, i32 0, i32 0
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  store i8* %60, i8** %65, align 8
  %66 = call i32 @info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %99

67:                                               ; preds = %48
  br label %68

68:                                               ; preds = %67, %33
  br label %69

69:                                               ; preds = %68, %30
  %70 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @dw2102_properties, i32 0, i32 0), align 8
  %71 = icmp eq i32* %70, @dw2102_i2c_algo
  br i1 %71, label %72, label %96

72:                                               ; preds = %69
  %73 = load i32, i32* @stv0299_attach, align 4
  %74 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %75 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %74, i32 0, i32 1
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = ptrtoint i32* %77 to i32
  %79 = call i8* (i32, %struct.TYPE_8__*, i32, ...) @dvb_attach(i32 %73, %struct.TYPE_8__* bitcast (i32* @sharp_z0194a_config to %struct.TYPE_8__*), i32 %78)
  %80 = bitcast i8* %79 to %struct.TYPE_8__*
  %81 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %82 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %81, i32 0, i32 0
  store %struct.TYPE_8__* %80, %struct.TYPE_8__** %82, align 8
  %83 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %84 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %83, i32 0, i32 0
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = icmp ne %struct.TYPE_8__* %85, null
  br i1 %86, label %87, label %95

87:                                               ; preds = %72
  %88 = load i8*, i8** @dw210x_set_voltage, align 8
  %89 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %90 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %89, i32 0, i32 0
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  store i8* %88, i8** %93, align 8
  %94 = call i32 @info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %99

95:                                               ; preds = %72
  br label %96

96:                                               ; preds = %95, %69
  %97 = load i32, i32* @EIO, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %96, %87, %59, %21
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i8* @dvb_attach(i32, %struct.TYPE_8__*, i32, ...) #1

declare dso_local i32 @info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
