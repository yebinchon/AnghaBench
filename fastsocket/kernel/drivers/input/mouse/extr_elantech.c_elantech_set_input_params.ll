; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_elantech.c_elantech_set_input_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_elantech.c_elantech_set_input_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.elantech_data*, %struct.input_dev* }
%struct.elantech_data = type { i32, i32, i32 }
%struct.input_dev = type { i32, i32 }

@EV_KEY = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@BTN_TOOL_FINGER = common dso_local global i32 0, align 4
@BTN_TOOL_DOUBLETAP = common dso_local global i32 0, align 4
@BTN_TOOL_TRIPLETAP = common dso_local global i32 0, align 4
@ETP_CAP_HAS_ROCKER = common dso_local global i32 0, align 4
@BTN_FORWARD = common dso_local global i32 0, align 4
@BTN_BACK = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ETP_XMIN_V1 = common dso_local global i32 0, align 4
@ETP_XMAX_V1 = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ETP_YMIN_V1 = common dso_local global i32 0, align 4
@ETP_YMAX_V1 = common dso_local global i32 0, align 4
@ETP_XMIN_V2 = common dso_local global i32 0, align 4
@ETP_XMAX_V2 = common dso_local global i32 0, align 4
@ETP_YMIN_V2 = common dso_local global i32 0, align 4
@ETP_YMAX_V2 = common dso_local global i32 0, align 4
@ABS_HAT0X = common dso_local global i32 0, align 4
@ETP_2FT_XMIN = common dso_local global i32 0, align 4
@ETP_2FT_XMAX = common dso_local global i32 0, align 4
@ABS_HAT0Y = common dso_local global i32 0, align 4
@ETP_2FT_YMIN = common dso_local global i32 0, align 4
@ETP_2FT_YMAX = common dso_local global i32 0, align 4
@ABS_HAT1X = common dso_local global i32 0, align 4
@ABS_HAT1Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psmouse*)* @elantech_set_input_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elantech_set_input_params(%struct.psmouse* %0) #0 {
  %2 = alloca %struct.psmouse*, align 8
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca %struct.elantech_data*, align 8
  store %struct.psmouse* %0, %struct.psmouse** %2, align 8
  %5 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %6 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %5, i32 0, i32 1
  %7 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  store %struct.input_dev* %7, %struct.input_dev** %3, align 8
  %8 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %9 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %8, i32 0, i32 0
  %10 = load %struct.elantech_data*, %struct.elantech_data** %9, align 8
  store %struct.elantech_data* %10, %struct.elantech_data** %4, align 8
  %11 = load i32, i32* @EV_KEY, align 4
  %12 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %13 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @__set_bit(i32 %11, i32 %14)
  %16 = load i32, i32* @EV_ABS, align 4
  %17 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %18 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @__set_bit(i32 %16, i32 %19)
  %21 = load i32, i32* @BTN_LEFT, align 4
  %22 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %23 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @__set_bit(i32 %21, i32 %24)
  %26 = load i32, i32* @BTN_RIGHT, align 4
  %27 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %28 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @__set_bit(i32 %26, i32 %29)
  %31 = load i32, i32* @BTN_TOUCH, align 4
  %32 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %33 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @__set_bit(i32 %31, i32 %34)
  %36 = load i32, i32* @BTN_TOOL_FINGER, align 4
  %37 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %38 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @__set_bit(i32 %36, i32 %39)
  %41 = load i32, i32* @BTN_TOOL_DOUBLETAP, align 4
  %42 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %43 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @__set_bit(i32 %41, i32 %44)
  %46 = load i32, i32* @BTN_TOOL_TRIPLETAP, align 4
  %47 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %48 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @__set_bit(i32 %46, i32 %49)
  %51 = load %struct.elantech_data*, %struct.elantech_data** %4, align 8
  %52 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %119 [
    i32 1, label %54
    i32 2, label %88
  ]

54:                                               ; preds = %1
  %55 = load %struct.elantech_data*, %struct.elantech_data** %4, align 8
  %56 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %77

59:                                               ; preds = %54
  %60 = load %struct.elantech_data*, %struct.elantech_data** %4, align 8
  %61 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @ETP_CAP_HAS_ROCKER, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %59
  %67 = load i32, i32* @BTN_FORWARD, align 4
  %68 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %69 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @__set_bit(i32 %67, i32 %70)
  %72 = load i32, i32* @BTN_BACK, align 4
  %73 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %74 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @__set_bit(i32 %72, i32 %75)
  br label %77

77:                                               ; preds = %66, %59, %54
  %78 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %79 = load i32, i32* @ABS_X, align 4
  %80 = load i32, i32* @ETP_XMIN_V1, align 4
  %81 = load i32, i32* @ETP_XMAX_V1, align 4
  %82 = call i32 @input_set_abs_params(%struct.input_dev* %78, i32 %79, i32 %80, i32 %81, i32 0, i32 0)
  %83 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %84 = load i32, i32* @ABS_Y, align 4
  %85 = load i32, i32* @ETP_YMIN_V1, align 4
  %86 = load i32, i32* @ETP_YMAX_V1, align 4
  %87 = call i32 @input_set_abs_params(%struct.input_dev* %83, i32 %84, i32 %85, i32 %86, i32 0, i32 0)
  br label %119

88:                                               ; preds = %1
  %89 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %90 = load i32, i32* @ABS_X, align 4
  %91 = load i32, i32* @ETP_XMIN_V2, align 4
  %92 = load i32, i32* @ETP_XMAX_V2, align 4
  %93 = call i32 @input_set_abs_params(%struct.input_dev* %89, i32 %90, i32 %91, i32 %92, i32 0, i32 0)
  %94 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %95 = load i32, i32* @ABS_Y, align 4
  %96 = load i32, i32* @ETP_YMIN_V2, align 4
  %97 = load i32, i32* @ETP_YMAX_V2, align 4
  %98 = call i32 @input_set_abs_params(%struct.input_dev* %94, i32 %95, i32 %96, i32 %97, i32 0, i32 0)
  %99 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %100 = load i32, i32* @ABS_HAT0X, align 4
  %101 = load i32, i32* @ETP_2FT_XMIN, align 4
  %102 = load i32, i32* @ETP_2FT_XMAX, align 4
  %103 = call i32 @input_set_abs_params(%struct.input_dev* %99, i32 %100, i32 %101, i32 %102, i32 0, i32 0)
  %104 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %105 = load i32, i32* @ABS_HAT0Y, align 4
  %106 = load i32, i32* @ETP_2FT_YMIN, align 4
  %107 = load i32, i32* @ETP_2FT_YMAX, align 4
  %108 = call i32 @input_set_abs_params(%struct.input_dev* %104, i32 %105, i32 %106, i32 %107, i32 0, i32 0)
  %109 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %110 = load i32, i32* @ABS_HAT1X, align 4
  %111 = load i32, i32* @ETP_2FT_XMIN, align 4
  %112 = load i32, i32* @ETP_2FT_XMAX, align 4
  %113 = call i32 @input_set_abs_params(%struct.input_dev* %109, i32 %110, i32 %111, i32 %112, i32 0, i32 0)
  %114 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %115 = load i32, i32* @ABS_HAT1Y, align 4
  %116 = load i32, i32* @ETP_2FT_YMIN, align 4
  %117 = load i32, i32* @ETP_2FT_YMAX, align 4
  %118 = call i32 @input_set_abs_params(%struct.input_dev* %114, i32 %115, i32 %116, i32 %117, i32 0, i32 0)
  br label %119

119:                                              ; preds = %1, %88, %77
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
