; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_bcm5974.c_setup_events_to_report.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_bcm5974.c_setup_events_to_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32, i32 }
%struct.bcm5974_config = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@EV_ABS = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@ABS_TOOL_WIDTH = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@BTN_TOOL_FINGER = common dso_local global i32 0, align 4
@BTN_TOOL_DOUBLETAP = common dso_local global i32 0, align 4
@BTN_TOOL_TRIPLETAP = common dso_local global i32 0, align 4
@BTN_TOOL_QUADTAP = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*, %struct.bcm5974_config*)* @setup_events_to_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_events_to_report(%struct.input_dev* %0, %struct.bcm5974_config* %1) #0 {
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca %struct.bcm5974_config*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %3, align 8
  store %struct.bcm5974_config* %1, %struct.bcm5974_config** %4, align 8
  %5 = load i32, i32* @EV_ABS, align 4
  %6 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %7 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @__set_bit(i32 %5, i32 %8)
  %10 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %11 = load i32, i32* @ABS_PRESSURE, align 4
  %12 = load %struct.bcm5974_config*, %struct.bcm5974_config** %4, align 8
  %13 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.bcm5974_config*, %struct.bcm5974_config** %4, align 8
  %17 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @input_set_abs_params(%struct.input_dev* %10, i32 %11, i32 0, i32 %15, i32 %19, i32 0)
  %21 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %22 = load i32, i32* @ABS_TOOL_WIDTH, align 4
  %23 = load %struct.bcm5974_config*, %struct.bcm5974_config** %4, align 8
  %24 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.bcm5974_config*, %struct.bcm5974_config** %4, align 8
  %28 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @input_set_abs_params(%struct.input_dev* %21, i32 %22, i32 0, i32 %26, i32 %30, i32 0)
  %32 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %33 = load i32, i32* @ABS_X, align 4
  %34 = load %struct.bcm5974_config*, %struct.bcm5974_config** %4, align 8
  %35 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.bcm5974_config*, %struct.bcm5974_config** %4, align 8
  %39 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @input_set_abs_params(%struct.input_dev* %32, i32 %33, i32 0, i32 %37, i32 %41, i32 0)
  %43 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %44 = load i32, i32* @ABS_Y, align 4
  %45 = load %struct.bcm5974_config*, %struct.bcm5974_config** %4, align 8
  %46 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.bcm5974_config*, %struct.bcm5974_config** %4, align 8
  %50 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @input_set_abs_params(%struct.input_dev* %43, i32 %44, i32 0, i32 %48, i32 %52, i32 0)
  %54 = load i32, i32* @EV_KEY, align 4
  %55 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %56 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @__set_bit(i32 %54, i32 %57)
  %59 = load i32, i32* @BTN_TOUCH, align 4
  %60 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %61 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @__set_bit(i32 %59, i32 %62)
  %64 = load i32, i32* @BTN_TOOL_FINGER, align 4
  %65 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %66 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @__set_bit(i32 %64, i32 %67)
  %69 = load i32, i32* @BTN_TOOL_DOUBLETAP, align 4
  %70 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %71 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @__set_bit(i32 %69, i32 %72)
  %74 = load i32, i32* @BTN_TOOL_TRIPLETAP, align 4
  %75 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %76 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @__set_bit(i32 %74, i32 %77)
  %79 = load i32, i32* @BTN_TOOL_QUADTAP, align 4
  %80 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %81 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @__set_bit(i32 %79, i32 %82)
  %84 = load i32, i32* @BTN_LEFT, align 4
  %85 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %86 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @__set_bit(i32 %84, i32 %87)
  ret void
}

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
