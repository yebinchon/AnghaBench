; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dib0700_devices.c_stk807xpvr_frontend_attach0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dib0700_devices.c_stk807xpvr_frontend_attach0.c"
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
@dib807x_dib8000_config = common dso_local global i32* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @stk807xpvr_frontend_attach0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk807xpvr_frontend_attach0(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca %struct.dvb_usb_adapter*, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %2, align 8
  %3 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %4 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %3, i32 0, i32 1
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = load i32, i32* @GPIO6, align 4
  %7 = load i32, i32* @GPIO_OUT, align 4
  %8 = call i32 @dib0700_set_gpio(%struct.TYPE_3__* %5, i32 %6, i32 %7, i32 0)
  %9 = call i32 @msleep(i32 30)
  %10 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = load i32, i32* @GPIO6, align 4
  %14 = load i32, i32* @GPIO_OUT, align 4
  %15 = call i32 @dib0700_set_gpio(%struct.TYPE_3__* %12, i32 %13, i32 %14, i32 1)
  %16 = call i32 @msleep(i32 500)
  %17 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = load i32, i32* @GPIO9, align 4
  %21 = load i32, i32* @GPIO_OUT, align 4
  %22 = call i32 @dib0700_set_gpio(%struct.TYPE_3__* %19, i32 %20, i32 %21, i32 1)
  %23 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %24 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load i32, i32* @GPIO4, align 4
  %27 = load i32, i32* @GPIO_OUT, align 4
  %28 = call i32 @dib0700_set_gpio(%struct.TYPE_3__* %25, i32 %26, i32 %27, i32 1)
  %29 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %30 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load i32, i32* @GPIO7, align 4
  %33 = load i32, i32* @GPIO_OUT, align 4
  %34 = call i32 @dib0700_set_gpio(%struct.TYPE_3__* %31, i32 %32, i32 %33, i32 1)
  %35 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %36 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = load i32, i32* @GPIO10, align 4
  %39 = load i32, i32* @GPIO_OUT, align 4
  %40 = call i32 @dib0700_set_gpio(%struct.TYPE_3__* %37, i32 %38, i32 %39, i32 0)
  %41 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %42 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = call i32 @dib0700_ctrl_clock(%struct.TYPE_3__* %43, i32 72, i32 1)
  %45 = call i32 @msleep(i32 10)
  %46 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %47 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load i32, i32* @GPIO10, align 4
  %50 = load i32, i32* @GPIO_OUT, align 4
  %51 = call i32 @dib0700_set_gpio(%struct.TYPE_3__* %48, i32 %49, i32 %50, i32 1)
  %52 = call i32 @msleep(i32 10)
  %53 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %54 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = load i32, i32* @GPIO0, align 4
  %57 = load i32, i32* @GPIO_OUT, align 4
  %58 = call i32 @dib0700_set_gpio(%struct.TYPE_3__* %55, i32 %56, i32 %57, i32 1)
  %59 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %60 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %59, i32 0, i32 1
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = call i32 @dib8000_i2c_enumeration(i32* %62, i32 1, i32 34, i32 128)
  %64 = load i32, i32* @dib8000_attach, align 4
  %65 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %66 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %65, i32 0, i32 1
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32*, i32** @dib807x_dib8000_config, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = call i32* @dvb_attach(i32 %64, i32* %68, i32 128, i32* %70)
  %72 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %73 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %72, i32 0, i32 0
  store i32* %71, i32** %73, align 8
  %74 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %75 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %1
  %79 = load i32, i32* @ENODEV, align 4
  %80 = sub nsw i32 0, %79
  br label %82

81:                                               ; preds = %1
  br label %82

82:                                               ; preds = %81, %78
  %83 = phi i32 [ %80, %78 ], [ 0, %81 ]
  ret i32 %83
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
