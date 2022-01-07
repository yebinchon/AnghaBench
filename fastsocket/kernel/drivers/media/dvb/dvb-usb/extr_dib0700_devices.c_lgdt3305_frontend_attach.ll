; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dib0700_devices.c_lgdt3305_frontend_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dib0700_devices.c_lgdt3305_frontend_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.dib0700_state* }
%struct.dib0700_state = type { i32, i32 }

@GPIO6 = common dso_local global i32 0, align 4
@GPIO_OUT = common dso_local global i32 0, align 4
@GPIO10 = common dso_local global i32 0, align 4
@lgdt3305_attach = common dso_local global i32 0, align 4
@hcw_lgdt3305_config = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @lgdt3305_frontend_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lgdt3305_frontend_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca %struct.dvb_usb_adapter*, align 8
  %3 = alloca %struct.dib0700_state*, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %2, align 8
  %4 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load %struct.dib0700_state*, %struct.dib0700_state** %7, align 8
  store %struct.dib0700_state* %8, %struct.dib0700_state** %3, align 8
  %9 = load %struct.dib0700_state*, %struct.dib0700_state** %3, align 8
  %10 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %9, i32 0, i32 0
  store i32 1, i32* %10, align 4
  %11 = load %struct.dib0700_state*, %struct.dib0700_state** %3, align 8
  %12 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %11, i32 0, i32 1
  store i32 1, i32* %12, align 4
  %13 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* @GPIO6, align 4
  %17 = load i32, i32* @GPIO_OUT, align 4
  %18 = call i32 @dib0700_set_gpio(%struct.TYPE_2__* %15, i32 %16, i32 %17, i32 0)
  %19 = call i32 @msleep(i32 30)
  %20 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %21 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* @GPIO6, align 4
  %24 = load i32, i32* @GPIO_OUT, align 4
  %25 = call i32 @dib0700_set_gpio(%struct.TYPE_2__* %22, i32 %23, i32 %24, i32 1)
  %26 = call i32 @msleep(i32 30)
  %27 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %28 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* @GPIO10, align 4
  %31 = load i32, i32* @GPIO_OUT, align 4
  %32 = call i32 @dib0700_set_gpio(%struct.TYPE_2__* %29, i32 %30, i32 %31, i32 1)
  %33 = call i32 @msleep(i32 30)
  %34 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %35 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* @GPIO10, align 4
  %38 = load i32, i32* @GPIO_OUT, align 4
  %39 = call i32 @dib0700_set_gpio(%struct.TYPE_2__* %36, i32 %37, i32 %38, i32 0)
  %40 = call i32 @msleep(i32 30)
  %41 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %42 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* @GPIO10, align 4
  %45 = load i32, i32* @GPIO_OUT, align 4
  %46 = call i32 @dib0700_set_gpio(%struct.TYPE_2__* %43, i32 %44, i32 %45, i32 1)
  %47 = call i32 @msleep(i32 30)
  %48 = load i32, i32* @lgdt3305_attach, align 4
  %49 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %50 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = call i32* @dvb_attach(i32 %48, i32* @hcw_lgdt3305_config, i32* %52)
  %54 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %55 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %54, i32 0, i32 0
  store i32* %53, i32** %55, align 8
  %56 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %57 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %1
  %61 = load i32, i32* @ENODEV, align 4
  %62 = sub nsw i32 0, %61
  br label %64

63:                                               ; preds = %1
  br label %64

64:                                               ; preds = %63, %60
  %65 = phi i32 [ %62, %60 ], [ 0, %63 ]
  ret i32 %65
}

declare dso_local i32 @dib0700_set_gpio(%struct.TYPE_2__*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32* @dvb_attach(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
