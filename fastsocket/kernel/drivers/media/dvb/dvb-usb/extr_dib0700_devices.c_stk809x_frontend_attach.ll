; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dib0700_devices.c_stk809x_frontend_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dib0700_devices.c_stk809x_frontend_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@GPIO6 = common dso_local global i32 0, align 4
@GPIO_OUT = common dso_local global i32 0, align 4
@GPIO9 = common dso_local global i32 0, align 4
@GPIO4 = common dso_local global i32 0, align 4
@GPIO7 = common dso_local global i32 0, align 4
@GPIO10 = common dso_local global i32 0, align 4
@GPIO0 = common dso_local global i32 0, align 4
@dib8000_attach = common dso_local global i32 0, align 4
@dib809x_dib8000_config = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @stk809x_frontend_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk809x_frontend_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca %struct.dvb_usb_adapter*, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %2, align 8
  %3 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %4 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %3, i32 0, i32 1
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = load i32, i32* @GPIO6, align 4
  %7 = load i32, i32* @GPIO_OUT, align 4
  %8 = call i32 @dib0700_set_gpio(%struct.TYPE_3__* %5, i32 %6, i32 %7, i32 1)
  %9 = call i32 @msleep(i32 10)
  %10 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = load i32, i32* @GPIO9, align 4
  %14 = load i32, i32* @GPIO_OUT, align 4
  %15 = call i32 @dib0700_set_gpio(%struct.TYPE_3__* %12, i32 %13, i32 %14, i32 1)
  %16 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = load i32, i32* @GPIO4, align 4
  %20 = load i32, i32* @GPIO_OUT, align 4
  %21 = call i32 @dib0700_set_gpio(%struct.TYPE_3__* %18, i32 %19, i32 %20, i32 1)
  %22 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load i32, i32* @GPIO7, align 4
  %26 = load i32, i32* @GPIO_OUT, align 4
  %27 = call i32 @dib0700_set_gpio(%struct.TYPE_3__* %24, i32 %25, i32 %26, i32 1)
  %28 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %29 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load i32, i32* @GPIO10, align 4
  %32 = load i32, i32* @GPIO_OUT, align 4
  %33 = call i32 @dib0700_set_gpio(%struct.TYPE_3__* %30, i32 %31, i32 %32, i32 0)
  %34 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %35 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = call i32 @dib0700_ctrl_clock(%struct.TYPE_3__* %36, i32 72, i32 1)
  %38 = call i32 @msleep(i32 10)
  %39 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %40 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load i32, i32* @GPIO10, align 4
  %43 = load i32, i32* @GPIO_OUT, align 4
  %44 = call i32 @dib0700_set_gpio(%struct.TYPE_3__* %41, i32 %42, i32 %43, i32 1)
  %45 = call i32 @msleep(i32 10)
  %46 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %47 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load i32, i32* @GPIO0, align 4
  %50 = load i32, i32* @GPIO_OUT, align 4
  %51 = call i32 @dib0700_set_gpio(%struct.TYPE_3__* %48, i32 %49, i32 %50, i32 1)
  %52 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %53 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %52, i32 0, i32 1
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = call i32 @dib8000_i2c_enumeration(i32* %55, i32 1, i32 18, i32 128)
  %57 = load i32, i32* @dib8000_attach, align 4
  %58 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %59 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %58, i32 0, i32 1
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = call i32* @dvb_attach(i32 %57, i32* %61, i32 128, i32* @dib809x_dib8000_config)
  %63 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %64 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %63, i32 0, i32 0
  store i32* %62, i32** %64, align 8
  %65 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %66 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %1
  %70 = load i32, i32* @ENODEV, align 4
  %71 = sub nsw i32 0, %70
  br label %73

72:                                               ; preds = %1
  br label %73

73:                                               ; preds = %72, %69
  %74 = phi i32 [ %71, %69 ], [ 0, %72 ]
  ret i32 %74
}

declare dso_local i32 @dib0700_set_gpio(%struct.TYPE_3__*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dib0700_ctrl_clock(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @dib8000_i2c_enumeration(i32*, i32, i32, i32) #1

declare dso_local i32* @dvb_attach(i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
