; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dw2102.c_s6x0_frontend_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dw2102.c_s6x0_frontend_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i32 }

@mt312_attach = common dso_local global i32 0, align 4
@zl313_config = common dso_local global i32 0, align 4
@zl10039_attach = common dso_local global i32 0, align 4
@dw210x_set_voltage = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"Attached zl100313+zl10039!\0A\00", align 1
@stv0288_attach = common dso_local global i32 0, align 4
@earda_config = common dso_local global i32 0, align 4
@stb6000_attach = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Attached stv0288+stb6000!\0A\00", align 1
@ds3000_attach = common dso_local global i32 0, align 4
@dw2104_ds3000_config = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Attached ds3000+ds2020!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @s6x0_frontend_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s6x0_frontend_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  %4 = load i32, i32* @mt312_attach, align 4
  %5 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %6 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = ptrtoint i32* %8 to i32
  %10 = call i8* (i32, %struct.TYPE_6__*, i32, ...) @dvb_attach(i32 %4, %struct.TYPE_6__* bitcast (i32* @zl313_config to %struct.TYPE_6__*), i32 %9)
  %11 = bitcast i8* %10 to %struct.TYPE_6__*
  %12 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %12, i32 0, i32 0
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %13, align 8
  %14 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = icmp ne %struct.TYPE_6__* %16, null
  br i1 %17, label %18, label %38

18:                                               ; preds = %1
  %19 = load i32, i32* @zl10039_attach, align 4
  %20 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %24 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = call i8* (i32, %struct.TYPE_6__*, i32, ...) @dvb_attach(i32 %19, %struct.TYPE_6__* %22, i32 96, i32* %26)
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %18
  %30 = load i8*, i8** @dw210x_set_voltage, align 8
  %31 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i8* %30, i8** %35, align 8
  %36 = call i32 @info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %99

37:                                               ; preds = %18
  br label %38

38:                                               ; preds = %37, %1
  %39 = load i32, i32* @stv0288_attach, align 4
  %40 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %41 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = ptrtoint i32* %43 to i32
  %45 = call i8* (i32, %struct.TYPE_6__*, i32, ...) @dvb_attach(i32 %39, %struct.TYPE_6__* bitcast (i32* @earda_config to %struct.TYPE_6__*), i32 %44)
  %46 = bitcast i8* %45 to %struct.TYPE_6__*
  %47 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %48 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %47, i32 0, i32 0
  store %struct.TYPE_6__* %46, %struct.TYPE_6__** %48, align 8
  %49 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %50 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = icmp ne %struct.TYPE_6__* %51, null
  br i1 %52, label %53, label %73

53:                                               ; preds = %38
  %54 = load i32, i32* @stb6000_attach, align 4
  %55 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %56 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %59 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = call i8* (i32, %struct.TYPE_6__*, i32, ...) @dvb_attach(i32 %54, %struct.TYPE_6__* %57, i32 97, i32* %61)
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %53
  %65 = load i8*, i8** @dw210x_set_voltage, align 8
  %66 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %67 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %66, i32 0, i32 0
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  store i8* %65, i8** %70, align 8
  %71 = call i32 @info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %99

72:                                               ; preds = %53
  br label %73

73:                                               ; preds = %72, %38
  %74 = load i32, i32* @ds3000_attach, align 4
  %75 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %76 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = ptrtoint i32* %78 to i32
  %80 = call i8* (i32, %struct.TYPE_6__*, i32, ...) @dvb_attach(i32 %74, %struct.TYPE_6__* bitcast (i32* @dw2104_ds3000_config to %struct.TYPE_6__*), i32 %79)
  %81 = bitcast i8* %80 to %struct.TYPE_6__*
  %82 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %83 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %82, i32 0, i32 0
  store %struct.TYPE_6__* %81, %struct.TYPE_6__** %83, align 8
  %84 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %85 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %84, i32 0, i32 0
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = icmp ne %struct.TYPE_6__* %86, null
  br i1 %87, label %88, label %96

88:                                               ; preds = %73
  %89 = load i8*, i8** @dw210x_set_voltage, align 8
  %90 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %91 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %90, i32 0, i32 0
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  store i8* %89, i8** %94, align 8
  %95 = call i32 @info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %99

96:                                               ; preds = %73
  %97 = load i32, i32* @EIO, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %96, %88, %64, %29
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i8* @dvb_attach(i32, %struct.TYPE_6__*, i32, ...) #1

declare dso_local i32 @info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
