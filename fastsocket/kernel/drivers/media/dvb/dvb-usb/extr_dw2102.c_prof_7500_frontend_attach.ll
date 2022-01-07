; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dw2102.c_prof_7500_frontend_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dw2102.c_prof_7500_frontend_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@stv0900_attach = common dso_local global i32 0, align 4
@prof_7500_stv0900_config = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@dw210x_set_voltage = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Attached STV0900+STB6100A!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @prof_7500_frontend_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prof_7500_frontend_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  %4 = load i32, i32* @stv0900_attach, align 4
  %5 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %6 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = call %struct.TYPE_6__* @dvb_attach(i32 %4, i32* @prof_7500_stv0900_config, i32* %8, i32 0)
  %10 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %10, i32 0, i32 0
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %11, align 8
  %12 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = icmp eq %struct.TYPE_6__* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %27

19:                                               ; preds = %1
  %20 = load i32, i32* @dw210x_set_voltage, align 4
  %21 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i32 %20, i32* %25, align 4
  %26 = call i32 @info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %19, %16
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local %struct.TYPE_6__* @dvb_attach(i32, i32*, i32*, i32) #1

declare dso_local i32 @info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
