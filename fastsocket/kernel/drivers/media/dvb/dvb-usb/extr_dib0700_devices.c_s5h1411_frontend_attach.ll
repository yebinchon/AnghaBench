; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dib0700_devices.c_s5h1411_frontend_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dib0700_devices.c_s5h1411_frontend_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.dib0700_state* }
%struct.dib0700_state = type { i32, i32 }

@GPIO0 = common dso_local global i32 0, align 4
@GPIO_OUT = common dso_local global i32 0, align 4
@GPIO3 = common dso_local global i32 0, align 4
@GPIO6 = common dso_local global i32 0, align 4
@GPIO10 = common dso_local global i32 0, align 4
@GPIO9 = common dso_local global i32 0, align 4
@GPIO4 = common dso_local global i32 0, align 4
@GPIO7 = common dso_local global i32 0, align 4
@GPIO2 = common dso_local global i32 0, align 4
@s5h1411_attach = common dso_local global i32 0, align 4
@pinnacle_801e_config = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @s5h1411_frontend_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5h1411_frontend_attach(%struct.dvb_usb_adapter* %0) #0 {
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
  %16 = load i32, i32* @GPIO0, align 4
  %17 = load i32, i32* @GPIO_OUT, align 4
  %18 = call i32 @dib0700_set_gpio(%struct.TYPE_2__* %15, i32 %16, i32 %17, i32 0)
  %19 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* @GPIO3, align 4
  %23 = load i32, i32* @GPIO_OUT, align 4
  %24 = call i32 @dib0700_set_gpio(%struct.TYPE_2__* %21, i32 %22, i32 %23, i32 0)
  %25 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %26 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* @GPIO6, align 4
  %29 = load i32, i32* @GPIO_OUT, align 4
  %30 = call i32 @dib0700_set_gpio(%struct.TYPE_2__* %27, i32 %28, i32 %29, i32 1)
  %31 = call i32 @msleep(i32 400)
  %32 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %33 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* @GPIO10, align 4
  %36 = load i32, i32* @GPIO_OUT, align 4
  %37 = call i32 @dib0700_set_gpio(%struct.TYPE_2__* %34, i32 %35, i32 %36, i32 0)
  %38 = call i32 @msleep(i32 60)
  %39 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %40 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* @GPIO10, align 4
  %43 = load i32, i32* @GPIO_OUT, align 4
  %44 = call i32 @dib0700_set_gpio(%struct.TYPE_2__* %41, i32 %42, i32 %43, i32 1)
  %45 = call i32 @msleep(i32 30)
  %46 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %47 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* @GPIO0, align 4
  %50 = load i32, i32* @GPIO_OUT, align 4
  %51 = call i32 @dib0700_set_gpio(%struct.TYPE_2__* %48, i32 %49, i32 %50, i32 1)
  %52 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %53 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* @GPIO9, align 4
  %56 = load i32, i32* @GPIO_OUT, align 4
  %57 = call i32 @dib0700_set_gpio(%struct.TYPE_2__* %54, i32 %55, i32 %56, i32 1)
  %58 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %59 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i32, i32* @GPIO4, align 4
  %62 = load i32, i32* @GPIO_OUT, align 4
  %63 = call i32 @dib0700_set_gpio(%struct.TYPE_2__* %60, i32 %61, i32 %62, i32 1)
  %64 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %65 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* @GPIO7, align 4
  %68 = load i32, i32* @GPIO_OUT, align 4
  %69 = call i32 @dib0700_set_gpio(%struct.TYPE_2__* %66, i32 %67, i32 %68, i32 1)
  %70 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %71 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load i32, i32* @GPIO2, align 4
  %74 = load i32, i32* @GPIO_OUT, align 4
  %75 = call i32 @dib0700_set_gpio(%struct.TYPE_2__* %72, i32 %73, i32 %74, i32 0)
  %76 = call i32 @msleep(i32 30)
  %77 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %78 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = load i32, i32* @GPIO2, align 4
  %81 = load i32, i32* @GPIO_OUT, align 4
  %82 = call i32 @dib0700_set_gpio(%struct.TYPE_2__* %79, i32 %80, i32 %81, i32 1)
  %83 = load i32, i32* @s5h1411_attach, align 4
  %84 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %85 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %84, i32 0, i32 1
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = call i32* @dvb_attach(i32 %83, i32* @pinnacle_801e_config, i32* %87)
  %89 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %90 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %89, i32 0, i32 0
  store i32* %88, i32** %90, align 8
  %91 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %92 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %1
  %96 = load i32, i32* @ENODEV, align 4
  %97 = sub nsw i32 0, %96
  br label %99

98:                                               ; preds = %1
  br label %99

99:                                               ; preds = %98, %95
  %100 = phi i32 [ %97, %95 ], [ 0, %98 ]
  ret i32 %100
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
