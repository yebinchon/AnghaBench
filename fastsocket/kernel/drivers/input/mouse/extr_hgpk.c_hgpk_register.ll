; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_hgpk.c_hgpk_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_hgpk.c_hgpk_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.psmouse = type { i32, i32, i64, %struct.TYPE_6__, i64, i32, i32, i32, i32, %struct.input_dev* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.input_dev = type { i32, i32, i32 }

@BTN_MIDDLE = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@EV_REL = common dso_local global i32 0, align 4
@REL_X = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@hgpk_process_byte = common dso_local global i32 0, align 4
@hgpk_poll = common dso_local global i32 0, align 4
@hgpk_disconnect = common dso_local global i32 0, align 4
@hgpk_reconnect = common dso_local global i32 0, align 4
@psmouse_attr_powered = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed creating 'powered' sysfs node\0A\00", align 1
@HGPK_MODEL_C = common dso_local global i64 0, align 8
@psmouse_attr_recalibrate = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Failed creating 'recalibrate' sysfs node\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*)* @hgpk_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hgpk_register(%struct.psmouse* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  %6 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %7 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %6, i32 0, i32 9
  %8 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  store %struct.input_dev* %8, %struct.input_dev** %4, align 8
  %9 = load i32, i32* @BTN_MIDDLE, align 4
  %10 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %11 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @__clear_bit(i32 %9, i32 %12)
  %14 = load i32, i32* @EV_KEY, align 4
  %15 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %16 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @__set_bit(i32 %14, i32 %17)
  %19 = load i32, i32* @EV_REL, align 4
  %20 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %21 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @__set_bit(i32 %19, i32 %22)
  %24 = load i32, i32* @REL_X, align 4
  %25 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %26 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @__set_bit(i32 %24, i32 %27)
  %29 = load i32, i32* @REL_Y, align 4
  %30 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %31 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @__set_bit(i32 %29, i32 %32)
  %34 = load i32, i32* @BTN_LEFT, align 4
  %35 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %36 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @__set_bit(i32 %34, i32 %37)
  %39 = load i32, i32* @BTN_RIGHT, align 4
  %40 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %41 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @__set_bit(i32 %39, i32 %42)
  %44 = load i32, i32* @hgpk_process_byte, align 4
  %45 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %46 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %45, i32 0, i32 8
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @hgpk_poll, align 4
  %48 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %49 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %48, i32 0, i32 7
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @hgpk_disconnect, align 4
  %51 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %52 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @hgpk_reconnect, align 4
  %54 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %55 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 8
  %56 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %57 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %56, i32 0, i32 0
  store i32 3, i32* %57, align 8
  %58 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %59 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %58, i32 0, i32 4
  store i64 0, i64* %59, align 8
  %60 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %61 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %60, i32 0, i32 1
  store i32 1024, i32* %61, align 4
  %62 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %63 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = call i32 @device_create_file(i32* %66, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @psmouse_attr_powered, i32 0, i32 0))
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %1
  %71 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %72 = call i32 @hgpk_err(%struct.psmouse* %71, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* %5, align 4
  store i32 %73, i32* %2, align 4
  br label %101

74:                                               ; preds = %1
  %75 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %76 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @HGPK_MODEL_C, align 8
  %79 = icmp sge i64 %77, %78
  br i1 %79, label %80, label %100

80:                                               ; preds = %74
  %81 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %82 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = call i32 @device_create_file(i32* %85, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @psmouse_attr_recalibrate, i32 0, i32 0))
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %80
  %90 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %91 = call i32 @hgpk_err(%struct.psmouse* %90, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %92 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %93 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = call i32 @device_remove_file(i32* %96, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @psmouse_attr_powered, i32 0, i32 0))
  %98 = load i32, i32* %5, align 4
  store i32 %98, i32* %2, align 4
  br label %101

99:                                               ; preds = %80
  br label %100

100:                                              ; preds = %99, %74
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %100, %89, %70
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @device_create_file(i32*, i32*) #1

declare dso_local i32 @hgpk_err(%struct.psmouse*, i8*) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
