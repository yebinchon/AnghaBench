; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_elantech.c_elantech_report_absolute_v1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_elantech.c_elantech_report_absolute_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i8*, %struct.elantech_data*, %struct.input_dev* }
%struct.elantech_data = type { i32, i32, i64 }
%struct.input_dev = type { i32 }

@elantech_report_absolute_v1.old_fingers = internal global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"elantech.c: discarding packet\0A\00", align 1
@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ETP_YMAX_V1 = common dso_local global i8 0, align 1
@BTN_TOOL_FINGER = common dso_local global i32 0, align 4
@BTN_TOOL_DOUBLETAP = common dso_local global i32 0, align 4
@BTN_TOOL_TRIPLETAP = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@ETP_CAP_HAS_ROCKER = common dso_local global i32 0, align 4
@BTN_FORWARD = common dso_local global i32 0, align 4
@BTN_BACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psmouse*)* @elantech_report_absolute_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elantech_report_absolute_v1(%struct.psmouse* %0) #0 {
  %2 = alloca %struct.psmouse*, align 8
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca %struct.elantech_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %2, align 8
  %7 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %8 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %7, i32 0, i32 2
  %9 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  store %struct.input_dev* %9, %struct.input_dev** %3, align 8
  %10 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %11 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %10, i32 0, i32 1
  %12 = load %struct.elantech_data*, %struct.elantech_data** %11, align 8
  store %struct.elantech_data* %12, %struct.elantech_data** %4, align 8
  %13 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %14 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %5, align 8
  %16 = load %struct.elantech_data*, %struct.elantech_data** %4, align 8
  %17 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %34

20:                                               ; preds = %1
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = and i32 %24, 128
  %26 = ashr i32 %25, 7
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = and i32 %30, 48
  %32 = ashr i32 %31, 4
  %33 = add nsw i32 %26, %32
  store i32 %33, i32* %6, align 4
  br label %41

34:                                               ; preds = %1
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = and i32 %38, 192
  %40 = ashr i32 %39, 6
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %34, %20
  %42 = load %struct.elantech_data*, %struct.elantech_data** %4, align 8
  %43 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @elantech_report_absolute_v1.old_fingers, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = call i32 @elantech_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %170

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %52, %41
  %54 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %55 = load i32, i32* @BTN_TOUCH, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i32
  %59 = trunc i32 %58 to i8
  %60 = call i32 @input_report_key(%struct.input_dev* %54, i32 %55, i8 zeroext %59)
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %97

63:                                               ; preds = %53
  %64 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %65 = load i32, i32* @ABS_X, align 4
  %66 = load i8*, i8** %5, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = and i32 %69, 12
  %71 = shl i32 %70, 6
  %72 = load i8*, i8** %5, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 2
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = or i32 %71, %75
  %77 = trunc i32 %76 to i8
  %78 = call i32 @input_report_abs(%struct.input_dev* %64, i32 %65, i8 zeroext %77)
  %79 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %80 = load i32, i32* @ABS_Y, align 4
  %81 = load i8, i8* @ETP_YMAX_V1, align 1
  %82 = zext i8 %81 to i32
  %83 = load i8*, i8** %5, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = and i32 %86, 3
  %88 = shl i32 %87, 8
  %89 = load i8*, i8** %5, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 3
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = or i32 %88, %92
  %94 = sub nsw i32 %82, %93
  %95 = trunc i32 %94 to i8
  %96 = call i32 @input_report_abs(%struct.input_dev* %79, i32 %80, i8 zeroext %95)
  br label %97

97:                                               ; preds = %63, %53
  %98 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %99 = load i32, i32* @BTN_TOOL_FINGER, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp eq i32 %100, 1
  %102 = zext i1 %101 to i32
  %103 = trunc i32 %102 to i8
  %104 = call i32 @input_report_key(%struct.input_dev* %98, i32 %99, i8 zeroext %103)
  %105 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %106 = load i32, i32* @BTN_TOOL_DOUBLETAP, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp eq i32 %107, 2
  %109 = zext i1 %108 to i32
  %110 = trunc i32 %109 to i8
  %111 = call i32 @input_report_key(%struct.input_dev* %105, i32 %106, i8 zeroext %110)
  %112 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %113 = load i32, i32* @BTN_TOOL_TRIPLETAP, align 4
  %114 = load i32, i32* %6, align 4
  %115 = icmp eq i32 %114, 3
  %116 = zext i1 %115 to i32
  %117 = trunc i32 %116 to i8
  %118 = call i32 @input_report_key(%struct.input_dev* %112, i32 %113, i8 zeroext %117)
  %119 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %120 = load i32, i32* @BTN_LEFT, align 4
  %121 = load i8*, i8** %5, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 0
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  %125 = and i32 %124, 1
  %126 = trunc i32 %125 to i8
  %127 = call i32 @input_report_key(%struct.input_dev* %119, i32 %120, i8 zeroext %126)
  %128 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %129 = load i32, i32* @BTN_RIGHT, align 4
  %130 = load i8*, i8** %5, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 0
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = and i32 %133, 2
  %135 = trunc i32 %134 to i8
  %136 = call i32 @input_report_key(%struct.input_dev* %128, i32 %129, i8 zeroext %135)
  %137 = load %struct.elantech_data*, %struct.elantech_data** %4, align 8
  %138 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp eq i32 %139, 1
  br i1 %140, label %141, label %167

141:                                              ; preds = %97
  %142 = load %struct.elantech_data*, %struct.elantech_data** %4, align 8
  %143 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @ETP_CAP_HAS_ROCKER, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %167

148:                                              ; preds = %141
  %149 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %150 = load i32, i32* @BTN_FORWARD, align 4
  %151 = load i8*, i8** %5, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 0
  %153 = load i8, i8* %152, align 1
  %154 = zext i8 %153 to i32
  %155 = and i32 %154, 64
  %156 = trunc i32 %155 to i8
  %157 = call i32 @input_report_key(%struct.input_dev* %149, i32 %150, i8 zeroext %156)
  %158 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %159 = load i32, i32* @BTN_BACK, align 4
  %160 = load i8*, i8** %5, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 0
  %162 = load i8, i8* %161, align 1
  %163 = zext i8 %162 to i32
  %164 = and i32 %163, 128
  %165 = trunc i32 %164 to i8
  %166 = call i32 @input_report_key(%struct.input_dev* %158, i32 %159, i8 zeroext %165)
  br label %167

167:                                              ; preds = %148, %141, %97
  %168 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %169 = call i32 @input_sync(%struct.input_dev* %168)
  br label %170

170:                                              ; preds = %167, %50
  %171 = load i32, i32* %6, align 4
  store i32 %171, i32* @elantech_report_absolute_v1.old_fingers, align 4
  ret void
}

declare dso_local i32 @elantech_debug(i8*) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i8 zeroext) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i8 zeroext) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
