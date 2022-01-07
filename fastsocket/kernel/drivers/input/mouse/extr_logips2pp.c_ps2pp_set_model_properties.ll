; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_logips2pp.c_ps2pp_set_model_properties.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_logips2pp.c_ps2pp_set_model_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i8*, %struct.input_dev* }
%struct.input_dev = type { i32, i32 }
%struct.ps2pp_info = type { i32, i32 }

@PS2PP_SIDE_BTN = common dso_local global i32 0, align 4
@BTN_SIDE = common dso_local global i32 0, align 4
@PS2PP_EXTRA_BTN = common dso_local global i32 0, align 4
@BTN_EXTRA = common dso_local global i32 0, align 4
@PS2PP_TASK_BTN = common dso_local global i32 0, align 4
@BTN_TASK = common dso_local global i32 0, align 4
@PS2PP_NAV_BTN = common dso_local global i32 0, align 4
@BTN_FORWARD = common dso_local global i32 0, align 4
@BTN_BACK = common dso_local global i32 0, align 4
@PS2PP_WHEEL = common dso_local global i32 0, align 4
@REL_WHEEL = common dso_local global i32 0, align 4
@PS2PP_HWHEEL = common dso_local global i32 0, align 4
@REL_HWHEEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Wheel Mouse\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"MX Mouse\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"TouchPad 3\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"TrackMan\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Mouse\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psmouse*, %struct.ps2pp_info*, i32)* @ps2pp_set_model_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ps2pp_set_model_properties(%struct.psmouse* %0, %struct.ps2pp_info* %1, i32 %2) #0 {
  %4 = alloca %struct.psmouse*, align 8
  %5 = alloca %struct.ps2pp_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.input_dev*, align 8
  store %struct.psmouse* %0, %struct.psmouse** %4, align 8
  store %struct.ps2pp_info* %1, %struct.ps2pp_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %9 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %8, i32 0, i32 1
  %10 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  store %struct.input_dev* %10, %struct.input_dev** %7, align 8
  %11 = load %struct.ps2pp_info*, %struct.ps2pp_info** %5, align 8
  %12 = getelementptr inbounds %struct.ps2pp_info, %struct.ps2pp_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @PS2PP_SIDE_BTN, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load i32, i32* @BTN_SIDE, align 4
  %19 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %20 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @__set_bit(i32 %18, i32 %21)
  br label %23

23:                                               ; preds = %17, %3
  %24 = load %struct.ps2pp_info*, %struct.ps2pp_info** %5, align 8
  %25 = getelementptr inbounds %struct.ps2pp_info, %struct.ps2pp_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @PS2PP_EXTRA_BTN, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = load i32, i32* @BTN_EXTRA, align 4
  %32 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %33 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @__set_bit(i32 %31, i32 %34)
  br label %36

36:                                               ; preds = %30, %23
  %37 = load %struct.ps2pp_info*, %struct.ps2pp_info** %5, align 8
  %38 = getelementptr inbounds %struct.ps2pp_info, %struct.ps2pp_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @PS2PP_TASK_BTN, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load i32, i32* @BTN_TASK, align 4
  %45 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %46 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @__set_bit(i32 %44, i32 %47)
  br label %49

49:                                               ; preds = %43, %36
  %50 = load %struct.ps2pp_info*, %struct.ps2pp_info** %5, align 8
  %51 = getelementptr inbounds %struct.ps2pp_info, %struct.ps2pp_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @PS2PP_NAV_BTN, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %49
  %57 = load i32, i32* @BTN_FORWARD, align 4
  %58 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %59 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @__set_bit(i32 %57, i32 %60)
  %62 = load i32, i32* @BTN_BACK, align 4
  %63 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %64 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @__set_bit(i32 %62, i32 %65)
  br label %67

67:                                               ; preds = %56, %49
  %68 = load %struct.ps2pp_info*, %struct.ps2pp_info** %5, align 8
  %69 = getelementptr inbounds %struct.ps2pp_info, %struct.ps2pp_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @PS2PP_WHEEL, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %67
  %75 = load i32, i32* @REL_WHEEL, align 4
  %76 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %77 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @__set_bit(i32 %75, i32 %78)
  br label %80

80:                                               ; preds = %74, %67
  %81 = load %struct.ps2pp_info*, %struct.ps2pp_info** %5, align 8
  %82 = getelementptr inbounds %struct.ps2pp_info, %struct.ps2pp_info* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @PS2PP_HWHEEL, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %80
  %88 = load i32, i32* @REL_HWHEEL, align 4
  %89 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %90 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @__set_bit(i32 %88, i32 %91)
  br label %93

93:                                               ; preds = %87, %80
  %94 = load %struct.ps2pp_info*, %struct.ps2pp_info** %5, align 8
  %95 = getelementptr inbounds %struct.ps2pp_info, %struct.ps2pp_info* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  switch i32 %96, label %109 [
    i32 128, label %97
    i32 131, label %100
    i32 130, label %103
    i32 129, label %106
  ]

97:                                               ; preds = %93
  %98 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %99 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %98, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %99, align 8
  br label %116

100:                                              ; preds = %93
  %101 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %102 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %101, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %102, align 8
  br label %116

103:                                              ; preds = %93
  %104 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %105 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %104, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %105, align 8
  br label %116

106:                                              ; preds = %93
  %107 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %108 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %107, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %108, align 8
  br label %116

109:                                              ; preds = %93
  %110 = load i32, i32* %6, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %114 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %113, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %114, align 8
  br label %115

115:                                              ; preds = %112, %109
  br label %116

116:                                              ; preds = %115, %106, %103, %100, %97
  ret void
}

declare dso_local i32 @__set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
