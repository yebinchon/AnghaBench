; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dib0700_devices.c_stk7700p_frontend_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dib0700_devices.c_stk7700p_frontend_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.dib0700_state* }
%struct.dib0700_state = type { i32*, i32 }

@GPIO10 = common dso_local global i32 0, align 4
@GPIO_OUT = common dso_local global i32 0, align 4
@GPIO6 = common dso_local global i32 0, align 4
@GPIO9 = common dso_local global i32 0, align 4
@GPIO0 = common dso_local global i32 0, align 4
@dib7000p_attach = common dso_local global i32 0, align 4
@stk7700p_dib7000p_config = common dso_local global i32 0, align 4
@dib7000m_attach = common dso_local global i32 0, align 4
@stk7700p_dib7000m_config = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @stk7700p_frontend_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk7700p_frontend_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca %struct.dvb_usb_adapter*, align 8
  %3 = alloca %struct.dib0700_state*, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %2, align 8
  %4 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %4, i32 0, i32 1
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %8 = load %struct.dib0700_state*, %struct.dib0700_state** %7, align 8
  store %struct.dib0700_state* %8, %struct.dib0700_state** %3, align 8
  %9 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = load i32, i32* @GPIO10, align 4
  %13 = load i32, i32* @GPIO_OUT, align 4
  %14 = call i32 @dib0700_set_gpio(%struct.TYPE_3__* %11, i32 %12, i32 %13, i32 0)
  %15 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = load i32, i32* @GPIO6, align 4
  %19 = load i32, i32* @GPIO_OUT, align 4
  %20 = call i32 @dib0700_set_gpio(%struct.TYPE_3__* %17, i32 %18, i32 %19, i32 0)
  %21 = call i32 @msleep(i32 50)
  %22 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load i32, i32* @GPIO6, align 4
  %26 = load i32, i32* @GPIO_OUT, align 4
  %27 = call i32 @dib0700_set_gpio(%struct.TYPE_3__* %24, i32 %25, i32 %26, i32 1)
  %28 = call i32 @msleep(i32 10)
  %29 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %30 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load i32, i32* @GPIO9, align 4
  %33 = load i32, i32* @GPIO_OUT, align 4
  %34 = call i32 @dib0700_set_gpio(%struct.TYPE_3__* %31, i32 %32, i32 %33, i32 1)
  %35 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %36 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = load i32, i32* @GPIO10, align 4
  %39 = load i32, i32* @GPIO_OUT, align 4
  %40 = call i32 @dib0700_set_gpio(%struct.TYPE_3__* %37, i32 %38, i32 %39, i32 0)
  %41 = call i32 @msleep(i32 10)
  %42 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %43 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = call i32 @dib0700_ctrl_clock(%struct.TYPE_3__* %44, i32 72, i32 1)
  %46 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %47 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load i32, i32* @GPIO10, align 4
  %50 = load i32, i32* @GPIO_OUT, align 4
  %51 = call i32 @dib0700_set_gpio(%struct.TYPE_3__* %48, i32 %49, i32 %50, i32 1)
  %52 = call i32 @msleep(i32 100)
  %53 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %54 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = load i32, i32* @GPIO0, align 4
  %57 = load i32, i32* @GPIO_OUT, align 4
  %58 = call i32 @dib0700_set_gpio(%struct.TYPE_3__* %55, i32 %56, i32 %57, i32 1)
  %59 = load %struct.dib0700_state*, %struct.dib0700_state** %3, align 8
  %60 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  store i32 1220, i32* %62, align 4
  %63 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %64 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %63, i32 0, i32 1
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = call i64 @dib7000pc_detection(i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %1
  %70 = load i32, i32* @dib7000p_attach, align 4
  %71 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %72 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %71, i32 0, i32 1
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = call i8* @dvb_attach(i32 %70, i32* %74, i32 18, i32* @stk7700p_dib7000p_config)
  %76 = bitcast i8* %75 to i32*
  %77 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %78 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %77, i32 0, i32 0
  store i32* %76, i32** %78, align 8
  %79 = load %struct.dib0700_state*, %struct.dib0700_state** %3, align 8
  %80 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %79, i32 0, i32 1
  store i32 1, i32* %80, align 8
  br label %91

81:                                               ; preds = %1
  %82 = load i32, i32* @dib7000m_attach, align 4
  %83 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %84 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %83, i32 0, i32 1
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = call i8* @dvb_attach(i32 %82, i32* %86, i32 18, i32* @stk7700p_dib7000m_config)
  %88 = bitcast i8* %87 to i32*
  %89 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %90 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %89, i32 0, i32 0
  store i32* %88, i32** %90, align 8
  br label %91

91:                                               ; preds = %81, %69
  %92 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %93 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = icmp eq i32* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i32, i32* @ENODEV, align 4
  %98 = sub nsw i32 0, %97
  br label %100

99:                                               ; preds = %91
  br label %100

100:                                              ; preds = %99, %96
  %101 = phi i32 [ %98, %96 ], [ 0, %99 ]
  ret i32 %101
}

declare dso_local i32 @dib0700_set_gpio(%struct.TYPE_3__*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dib0700_ctrl_clock(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i64 @dib7000pc_detection(i32*) #1

declare dso_local i8* @dvb_attach(i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
