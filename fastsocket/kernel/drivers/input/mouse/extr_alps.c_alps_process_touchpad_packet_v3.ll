; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_alps.c_alps_process_touchpad_packet_v3.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_alps.c_alps_process_touchpad_packet_v3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i8*, %struct.input_dev*, %struct.alps_data* }
%struct.input_dev = type { i32 }
%struct.alps_data = type { i32, i32, i32 (%struct.alps_fields*, i8*)*, %struct.input_dev* }
%struct.alps_fields = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }

@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@BTN_TOOL_FINGER = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@ALPS_QUIRK_TRACKSTICK_BUTTONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psmouse*)* @alps_process_touchpad_packet_v3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alps_process_touchpad_packet_v3(%struct.psmouse* %0) #0 {
  %2 = alloca %struct.psmouse*, align 8
  %3 = alloca %struct.alps_data*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca %struct.alps_fields, align 8
  store %struct.psmouse* %0, %struct.psmouse** %2, align 8
  %8 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %9 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %8, i32 0, i32 2
  %10 = load %struct.alps_data*, %struct.alps_data** %9, align 8
  store %struct.alps_data* %10, %struct.alps_data** %3, align 8
  %11 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %12 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %4, align 8
  %14 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %15 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %14, i32 0, i32 1
  %16 = load %struct.input_dev*, %struct.input_dev** %15, align 8
  store %struct.input_dev* %16, %struct.input_dev** %5, align 8
  %17 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %18 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %17, i32 0, i32 3
  %19 = load %struct.input_dev*, %struct.input_dev** %18, align 8
  store %struct.input_dev* %19, %struct.input_dev** %6, align 8
  %20 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %21 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %20, i32 0, i32 2
  %22 = load i32 (%struct.alps_fields*, i8*)*, i32 (%struct.alps_fields*, i8*)** %21, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 %22(%struct.alps_fields* %7, i8* %23)
  %25 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %26 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %1
  %30 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %31 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  %32 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %7, i32 0, i32 10
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %151

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %1
  %38 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %39 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %7, i32 0, i32 10
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %48 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  br label %52

49:                                               ; preds = %42, %37
  %50 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %51 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  br label %52

52:                                               ; preds = %49, %46
  %53 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %7, i32 0, i32 9
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %151

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %7, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %7, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %7, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  br label %151

70:                                               ; preds = %65, %61, %57
  %71 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %7, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = icmp sge i32 %72, 64
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %76 = load i32, i32* @BTN_TOUCH, align 4
  %77 = call i32 @input_report_key(%struct.input_dev* %75, i32 %76, i32 1)
  br label %82

78:                                               ; preds = %70
  %79 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %80 = load i32, i32* @BTN_TOUCH, align 4
  %81 = call i32 @input_report_key(%struct.input_dev* %79, i32 %80, i32 0)
  br label %82

82:                                               ; preds = %78, %74
  %83 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %7, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %82
  %87 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %88 = load i32, i32* @ABS_X, align 4
  %89 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %7, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @input_report_abs(%struct.input_dev* %87, i32 %88, i32 %90)
  %92 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %93 = load i32, i32* @ABS_Y, align 4
  %94 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %7, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @input_report_abs(%struct.input_dev* %92, i32 %93, i32 %95)
  br label %97

97:                                               ; preds = %86, %82
  %98 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %99 = load i32, i32* @ABS_PRESSURE, align 4
  %100 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %7, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @input_report_abs(%struct.input_dev* %98, i32 %99, i32 %101)
  %103 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %104 = load i32, i32* @BTN_TOOL_FINGER, align 4
  %105 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %7, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = icmp sgt i32 %106, 0
  %108 = zext i1 %107 to i32
  %109 = call i32 @input_report_key(%struct.input_dev* %103, i32 %104, i32 %108)
  %110 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %111 = load i32, i32* @BTN_LEFT, align 4
  %112 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %7, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @input_report_key(%struct.input_dev* %110, i32 %111, i32 %113)
  %115 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %116 = load i32, i32* @BTN_RIGHT, align 4
  %117 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %7, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @input_report_key(%struct.input_dev* %115, i32 %116, i32 %118)
  %120 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %121 = load i32, i32* @BTN_MIDDLE, align 4
  %122 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %7, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @input_report_key(%struct.input_dev* %120, i32 %121, i32 %123)
  %125 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %126 = call i32 @input_sync(%struct.input_dev* %125)
  %127 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %128 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @ALPS_QUIRK_TRACKSTICK_BUTTONS, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %151, label %133

133:                                              ; preds = %97
  %134 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %135 = load i32, i32* @BTN_LEFT, align 4
  %136 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %7, i32 0, i32 6
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @input_report_key(%struct.input_dev* %134, i32 %135, i32 %137)
  %139 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %140 = load i32, i32* @BTN_RIGHT, align 4
  %141 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %7, i32 0, i32 7
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @input_report_key(%struct.input_dev* %139, i32 %140, i32 %142)
  %144 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %145 = load i32, i32* @BTN_MIDDLE, align 4
  %146 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %7, i32 0, i32 8
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @input_report_key(%struct.input_dev* %144, i32 %145, i32 %147)
  %149 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %150 = call i32 @input_sync(%struct.input_dev* %149)
  br label %151

151:                                              ; preds = %35, %56, %69, %133, %97
  ret void
}

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
