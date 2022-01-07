; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dw2102.c_dw2104_frontend_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dw2102.c_dw2104_frontend_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, %struct.dvb_tuner_ops }
%struct.dvb_tuner_ops = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@demod_probe = common dso_local global i32 0, align 4
@stv0900_attach = common dso_local global i32 0, align 4
@dw2104a_stv0900_config = common dso_local global i32 0, align 4
@stb6100_attach = common dso_local global i32 0, align 4
@dw2104a_stb6100_config = common dso_local global i32 0, align 4
@stb6100_set_freq = common dso_local global i32 0, align 4
@stb6100_get_freq = common dso_local global i32 0, align 4
@stb6100_set_bandw = common dso_local global i32 0, align 4
@stb6100_get_bandw = common dso_local global i32 0, align 4
@dw210x_set_voltage = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"Attached STV0900+STB6100!\0A\00", align 1
@dw2104_stv0900_config = common dso_local global i32 0, align 4
@stv6110_attach = common dso_local global i32 0, align 4
@dw2104_stv6110_config = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Attached STV0900+STV6110A!\0A\00", align 1
@cx24116_attach = common dso_local global i32 0, align 4
@dw2104_config = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Attached cx24116!\0A\00", align 1
@ds3000_attach = common dso_local global i32 0, align 4
@dw2104_ds3000_config = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"Attached DS3000!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @dw2104_frontend_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw2104_frontend_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  %4 = alloca %struct.dvb_tuner_ops*, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  store %struct.dvb_tuner_ops* null, %struct.dvb_tuner_ops** %4, align 8
  %5 = load i32, i32* @demod_probe, align 4
  %6 = and i32 %5, 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %60

8:                                                ; preds = %1
  %9 = load i32, i32* @stv0900_attach, align 4
  %10 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = call i8* (i32, %struct.TYPE_6__*, i32*, ...) @dvb_attach(i32 %9, %struct.TYPE_6__* bitcast (i32* @dw2104a_stv0900_config to %struct.TYPE_6__*), i32* %13, i32 0)
  %15 = bitcast i8* %14 to %struct.TYPE_6__*
  %16 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %16, i32 0, i32 0
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %17, align 8
  %18 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = icmp ne %struct.TYPE_6__* %20, null
  br i1 %21, label %22, label %59

22:                                               ; preds = %8
  %23 = load i32, i32* @stb6100_attach, align 4
  %24 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %28 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = call i8* (i32, %struct.TYPE_6__*, i32*, ...) @dvb_attach(i32 %23, %struct.TYPE_6__* %26, i32* @dw2104a_stb6100_config, i32* %30)
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %58

33:                                               ; preds = %22
  %34 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %35 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  store %struct.dvb_tuner_ops* %38, %struct.dvb_tuner_ops** %4, align 8
  %39 = load i32, i32* @stb6100_set_freq, align 4
  %40 = load %struct.dvb_tuner_ops*, %struct.dvb_tuner_ops** %4, align 8
  %41 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @stb6100_get_freq, align 4
  %43 = load %struct.dvb_tuner_ops*, %struct.dvb_tuner_ops** %4, align 8
  %44 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @stb6100_set_bandw, align 4
  %46 = load %struct.dvb_tuner_ops*, %struct.dvb_tuner_ops** %4, align 8
  %47 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @stb6100_get_bandw, align 4
  %49 = load %struct.dvb_tuner_ops*, %struct.dvb_tuner_ops** %4, align 8
  %50 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load i8*, i8** @dw210x_set_voltage, align 8
  %52 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %53 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i8* %51, i8** %56, align 8
  %57 = call i32 @info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %151

58:                                               ; preds = %22
  br label %59

59:                                               ; preds = %58, %8
  br label %60

60:                                               ; preds = %59, %1
  %61 = load i32, i32* @demod_probe, align 4
  %62 = and i32 %61, 2
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %99

64:                                               ; preds = %60
  %65 = load i32, i32* @stv0900_attach, align 4
  %66 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %67 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = call i8* (i32, %struct.TYPE_6__*, i32*, ...) @dvb_attach(i32 %65, %struct.TYPE_6__* bitcast (i32* @dw2104_stv0900_config to %struct.TYPE_6__*), i32* %69, i32 0)
  %71 = bitcast i8* %70 to %struct.TYPE_6__*
  %72 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %73 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %72, i32 0, i32 0
  store %struct.TYPE_6__* %71, %struct.TYPE_6__** %73, align 8
  %74 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %75 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %74, i32 0, i32 0
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = icmp ne %struct.TYPE_6__* %76, null
  br i1 %77, label %78, label %98

78:                                               ; preds = %64
  %79 = load i32, i32* @stv6110_attach, align 4
  %80 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %81 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %80, i32 0, i32 0
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %84 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %83, i32 0, i32 1
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = call i8* (i32, %struct.TYPE_6__*, i32*, ...) @dvb_attach(i32 %79, %struct.TYPE_6__* %82, i32* @dw2104_stv6110_config, i32* %86)
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %97

89:                                               ; preds = %78
  %90 = load i8*, i8** @dw210x_set_voltage, align 8
  %91 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %92 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %91, i32 0, i32 0
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  store i8* %90, i8** %95, align 8
  %96 = call i32 @info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %151

97:                                               ; preds = %78
  br label %98

98:                                               ; preds = %97, %64
  br label %99

99:                                               ; preds = %98, %60
  %100 = load i32, i32* @demod_probe, align 4
  %101 = and i32 %100, 1
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %126

103:                                              ; preds = %99
  %104 = load i32, i32* @cx24116_attach, align 4
  %105 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %106 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %105, i32 0, i32 1
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = call i8* (i32, %struct.TYPE_6__*, i32*, ...) @dvb_attach(i32 %104, %struct.TYPE_6__* bitcast (i32* @dw2104_config to %struct.TYPE_6__*), i32* %108)
  %110 = bitcast i8* %109 to %struct.TYPE_6__*
  %111 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %112 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %111, i32 0, i32 0
  store %struct.TYPE_6__* %110, %struct.TYPE_6__** %112, align 8
  %113 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %114 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %113, i32 0, i32 0
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = icmp ne %struct.TYPE_6__* %115, null
  br i1 %116, label %117, label %125

117:                                              ; preds = %103
  %118 = load i8*, i8** @dw210x_set_voltage, align 8
  %119 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %120 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %119, i32 0, i32 0
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  store i8* %118, i8** %123, align 8
  %124 = call i32 @info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %151

125:                                              ; preds = %103
  br label %126

126:                                              ; preds = %125, %99
  %127 = load i32, i32* @ds3000_attach, align 4
  %128 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %129 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %128, i32 0, i32 1
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = call i8* (i32, %struct.TYPE_6__*, i32*, ...) @dvb_attach(i32 %127, %struct.TYPE_6__* bitcast (i32* @dw2104_ds3000_config to %struct.TYPE_6__*), i32* %131)
  %133 = bitcast i8* %132 to %struct.TYPE_6__*
  %134 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %135 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %134, i32 0, i32 0
  store %struct.TYPE_6__* %133, %struct.TYPE_6__** %135, align 8
  %136 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %137 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %136, i32 0, i32 0
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = icmp ne %struct.TYPE_6__* %138, null
  br i1 %139, label %140, label %148

140:                                              ; preds = %126
  %141 = load i8*, i8** @dw210x_set_voltage, align 8
  %142 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %143 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %142, i32 0, i32 0
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  store i8* %141, i8** %146, align 8
  %147 = call i32 @info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %151

148:                                              ; preds = %126
  %149 = load i32, i32* @EIO, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %2, align 4
  br label %151

151:                                              ; preds = %148, %140, %117, %89, %33
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local i8* @dvb_attach(i32, %struct.TYPE_6__*, i32*, ...) #1

declare dso_local i32 @info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
