; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_elantech.c_elantech_report_absolute_v2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_elantech.c_elantech_report_absolute_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i8*, %struct.input_dev* }
%struct.input_dev = type { i32 }

@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ETP_YMAX_V2 = common dso_local global i32 0, align 4
@ETP_2FT_YMAX = common dso_local global i32 0, align 4
@ABS_HAT0X = common dso_local global i32 0, align 4
@ABS_HAT0Y = common dso_local global i32 0, align 4
@ABS_HAT1X = common dso_local global i32 0, align 4
@ABS_HAT1Y = common dso_local global i32 0, align 4
@BTN_TOOL_FINGER = common dso_local global i32 0, align 4
@BTN_TOOL_DOUBLETAP = common dso_local global i32 0, align 4
@BTN_TOOL_TRIPLETAP = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psmouse*)* @elantech_report_absolute_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elantech_report_absolute_v2(%struct.psmouse* %0) #0 {
  %2 = alloca %struct.psmouse*, align 8
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %2, align 8
  %10 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %11 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %10, i32 0, i32 1
  %12 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  store %struct.input_dev* %12, %struct.input_dev** %3, align 8
  %13 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %14 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %4, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = and i32 %19, 192
  %21 = ashr i32 %20, 6
  store i32 %21, i32* %5, align 4
  %22 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %23 = load i32, i32* @BTN_TOUCH, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = trunc i32 %26 to i8
  %28 = call i32 @input_report_key(%struct.input_dev* %22, i32 %23, i8 zeroext %27)
  %29 = load i32, i32* %5, align 4
  switch i32 %29, label %134 [
    i32 1, label %30
    i32 2, label %59
  ]

30:                                               ; preds = %1
  %31 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %32 = load i32, i32* @ABS_X, align 4
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = shl i32 %36, 8
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 2
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = or i32 %37, %41
  %43 = call i32 @input_report_abs(%struct.input_dev* %31, i32 %32, i32 %42)
  %44 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %45 = load i32, i32* @ABS_Y, align 4
  %46 = load i32, i32* @ETP_YMAX_V2, align 4
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 4
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = shl i32 %50, 8
  %52 = load i8*, i8** %4, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 5
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = or i32 %51, %55
  %57 = sub nsw i32 %46, %56
  %58 = call i32 @input_report_abs(%struct.input_dev* %44, i32 %45, i32 %57)
  br label %134

59:                                               ; preds = %1
  %60 = load i8*, i8** %4, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = and i32 %63, 16
  %65 = shl i32 %64, 4
  %66 = load i8*, i8** %4, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = or i32 %65, %69
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* @ETP_2FT_YMAX, align 4
  %72 = load i8*, i8** %4, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = and i32 %75, 32
  %77 = shl i32 %76, 3
  %78 = load i8*, i8** %4, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 2
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = or i32 %77, %81
  %83 = sub nsw i32 %71, %82
  store i32 %83, i32* %7, align 4
  %84 = load i8*, i8** %4, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 3
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = and i32 %87, 16
  %89 = shl i32 %88, 4
  %90 = load i8*, i8** %4, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 4
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = or i32 %89, %93
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* @ETP_2FT_YMAX, align 4
  %96 = load i8*, i8** %4, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 3
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = and i32 %99, 32
  %101 = shl i32 %100, 3
  %102 = load i8*, i8** %4, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 5
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = or i32 %101, %105
  %107 = sub nsw i32 %95, %106
  store i32 %107, i32* %9, align 4
  %108 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %109 = load i32, i32* @ABS_X, align 4
  %110 = load i32, i32* %6, align 4
  %111 = shl i32 %110, 2
  %112 = call i32 @input_report_abs(%struct.input_dev* %108, i32 %109, i32 %111)
  %113 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %114 = load i32, i32* @ABS_Y, align 4
  %115 = load i32, i32* %7, align 4
  %116 = shl i32 %115, 2
  %117 = call i32 @input_report_abs(%struct.input_dev* %113, i32 %114, i32 %116)
  %118 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %119 = load i32, i32* @ABS_HAT0X, align 4
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @input_report_abs(%struct.input_dev* %118, i32 %119, i32 %120)
  %122 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %123 = load i32, i32* @ABS_HAT0Y, align 4
  %124 = load i32, i32* %7, align 4
  %125 = call i32 @input_report_abs(%struct.input_dev* %122, i32 %123, i32 %124)
  %126 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %127 = load i32, i32* @ABS_HAT1X, align 4
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @input_report_abs(%struct.input_dev* %126, i32 %127, i32 %128)
  %130 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %131 = load i32, i32* @ABS_HAT1Y, align 4
  %132 = load i32, i32* %9, align 4
  %133 = call i32 @input_report_abs(%struct.input_dev* %130, i32 %131, i32 %132)
  br label %134

134:                                              ; preds = %1, %59, %30
  %135 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %136 = load i32, i32* @BTN_TOOL_FINGER, align 4
  %137 = load i32, i32* %5, align 4
  %138 = icmp eq i32 %137, 1
  %139 = zext i1 %138 to i32
  %140 = trunc i32 %139 to i8
  %141 = call i32 @input_report_key(%struct.input_dev* %135, i32 %136, i8 zeroext %140)
  %142 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %143 = load i32, i32* @BTN_TOOL_DOUBLETAP, align 4
  %144 = load i32, i32* %5, align 4
  %145 = icmp eq i32 %144, 2
  %146 = zext i1 %145 to i32
  %147 = trunc i32 %146 to i8
  %148 = call i32 @input_report_key(%struct.input_dev* %142, i32 %143, i8 zeroext %147)
  %149 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %150 = load i32, i32* @BTN_TOOL_TRIPLETAP, align 4
  %151 = load i32, i32* %5, align 4
  %152 = icmp eq i32 %151, 3
  %153 = zext i1 %152 to i32
  %154 = trunc i32 %153 to i8
  %155 = call i32 @input_report_key(%struct.input_dev* %149, i32 %150, i8 zeroext %154)
  %156 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %157 = load i32, i32* @BTN_LEFT, align 4
  %158 = load i8*, i8** %4, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 0
  %160 = load i8, i8* %159, align 1
  %161 = zext i8 %160 to i32
  %162 = and i32 %161, 1
  %163 = trunc i32 %162 to i8
  %164 = call i32 @input_report_key(%struct.input_dev* %156, i32 %157, i8 zeroext %163)
  %165 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %166 = load i32, i32* @BTN_RIGHT, align 4
  %167 = load i8*, i8** %4, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 0
  %169 = load i8, i8* %168, align 1
  %170 = zext i8 %169 to i32
  %171 = and i32 %170, 2
  %172 = trunc i32 %171 to i8
  %173 = call i32 @input_report_key(%struct.input_dev* %165, i32 %166, i8 zeroext %172)
  %174 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %175 = call i32 @input_sync(%struct.input_dev* %174)
  ret void
}

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i8 zeroext) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
