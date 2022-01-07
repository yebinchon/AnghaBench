; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_wac.c_wacom_bpt_pen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_wac.c_wacom_bpt_pen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom_wac = type { i8*, i32*, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8 }
%struct.wacom_combo = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.input_dev* }
%struct.input_dev = type { i32 }

@BTN_TOOL_RUBBER = common dso_local global i32 0, align 4
@ERASER_DEVICE_ID = common dso_local global i32 0, align 4
@BTN_TOOL_PEN = common dso_local global i32 0, align 4
@STYLUS_DEVICE_ID = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@BTN_STYLUS = common dso_local global i32 0, align 4
@BTN_STYLUS2 = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@ABS_DISTANCE = common dso_local global i32 0, align 4
@ABS_MISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wacom_wac*, %struct.wacom_combo*)* @wacom_bpt_pen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_bpt_pen(%struct.wacom_wac* %0, %struct.wacom_combo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wacom_wac*, align 8
  %5 = alloca %struct.wacom_combo*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.wacom_wac* %0, %struct.wacom_wac** %4, align 8
  store %struct.wacom_combo* %1, %struct.wacom_combo** %5, align 8
  %16 = load %struct.wacom_combo*, %struct.wacom_combo** %5, align 8
  %17 = getelementptr inbounds %struct.wacom_combo, %struct.wacom_combo* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.input_dev*, %struct.input_dev** %19, align 8
  store %struct.input_dev* %20, %struct.input_dev** %6, align 8
  %21 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %22 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp ne i32 %27, 2
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %190

30:                                               ; preds = %2
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = and i32 %34, 32
  %36 = icmp eq i32 %35, 32
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %129

40:                                               ; preds = %30
  %41 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %42 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %77, label %47

47:                                               ; preds = %40
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = and i32 %51, 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %47
  %55 = load i32, i32* @BTN_TOOL_RUBBER, align 4
  %56 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %57 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  store i32 %55, i32* %59, align 4
  %60 = load i32, i32* @ERASER_DEVICE_ID, align 4
  %61 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %62 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  store i32 %60, i32* %64, align 4
  br label %76

65:                                               ; preds = %47
  %66 = load i32, i32* @BTN_TOOL_PEN, align 4
  %67 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %68 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  store i32 %66, i32* %70, align 4
  %71 = load i32, i32* @STYLUS_DEVICE_ID, align 4
  %72 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %73 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  store i32 %71, i32* %75, align 4
  br label %76

76:                                               ; preds = %65, %54
  br label %77

77:                                               ; preds = %76, %40
  %78 = load i8*, i8** %7, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 2
  %80 = bitcast i8* %79 to i32*
  %81 = call i32 @le16_to_cpup(i32* %80)
  store i32 %81, i32* %9, align 4
  %82 = load i8*, i8** %7, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 4
  %84 = bitcast i8* %83 to i32*
  %85 = call i32 @le16_to_cpup(i32* %84)
  store i32 %85, i32* %10, align 4
  %86 = load i8*, i8** %7, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 6
  %88 = bitcast i8* %87 to i32*
  %89 = call i32 @le16_to_cpup(i32* %88)
  store i32 %89, i32* %11, align 4
  %90 = load i8*, i8** %7, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 8
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %95 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %94, i32 0, i32 3
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = icmp sle i32 %93, %99
  br i1 %100, label %101, label %113

101:                                              ; preds = %77
  %102 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %103 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %102, i32 0, i32 3
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = load i8*, i8** %7, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 8
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = sub nsw i32 %107, %111
  store i32 %112, i32* %12, align 4
  br label %113

113:                                              ; preds = %101, %77
  %114 = load i8*, i8** %7, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 1
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = and i32 %117, 1
  store i32 %118, i32* %13, align 4
  %119 = load i8*, i8** %7, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 1
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i32
  %123 = and i32 %122, 2
  store i32 %123, i32* %14, align 4
  %124 = load i8*, i8** %7, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 1
  %126 = load i8, i8* %125, align 1
  %127 = zext i8 %126 to i32
  %128 = and i32 %127, 4
  store i32 %128, i32* %15, align 4
  br label %129

129:                                              ; preds = %113, %30
  %130 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %131 = load i32, i32* @BTN_TOUCH, align 4
  %132 = load i32, i32* %13, align 4
  %133 = call i32 @input_report_key(%struct.input_dev* %130, i32 %131, i32 %132)
  %134 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %135 = load i32, i32* @BTN_STYLUS, align 4
  %136 = load i32, i32* %14, align 4
  %137 = call i32 @input_report_key(%struct.input_dev* %134, i32 %135, i32 %136)
  %138 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %139 = load i32, i32* @BTN_STYLUS2, align 4
  %140 = load i32, i32* %15, align 4
  %141 = call i32 @input_report_key(%struct.input_dev* %138, i32 %139, i32 %140)
  %142 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %143 = load i32, i32* @ABS_X, align 4
  %144 = load i32, i32* %9, align 4
  %145 = call i32 @input_report_abs(%struct.input_dev* %142, i32 %143, i32 %144)
  %146 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %147 = load i32, i32* @ABS_Y, align 4
  %148 = load i32, i32* %10, align 4
  %149 = call i32 @input_report_abs(%struct.input_dev* %146, i32 %147, i32 %148)
  %150 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %151 = load i32, i32* @ABS_PRESSURE, align 4
  %152 = load i32, i32* %11, align 4
  %153 = call i32 @input_report_abs(%struct.input_dev* %150, i32 %151, i32 %152)
  %154 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %155 = load i32, i32* @ABS_DISTANCE, align 4
  %156 = load i32, i32* %12, align 4
  %157 = call i32 @input_report_abs(%struct.input_dev* %154, i32 %155, i32 %156)
  %158 = load i32, i32* %8, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %165, label %160

160:                                              ; preds = %129
  %161 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %162 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 0
  store i32 0, i32* %164, align 4
  br label %165

165:                                              ; preds = %160, %129
  %166 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %167 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %168 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %167, i32 0, i32 2
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %8, align 4
  %173 = call i32 @input_report_key(%struct.input_dev* %166, i32 %171, i32 %172)
  %174 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %175 = load i32, i32* @ABS_MISC, align 4
  %176 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %177 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 0
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @input_report_abs(%struct.input_dev* %174, i32 %175, i32 %180)
  %182 = load i32, i32* %8, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %189, label %184

184:                                              ; preds = %165
  %185 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %186 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %185, i32 0, i32 2
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 0
  store i32 0, i32* %188, align 4
  br label %189

189:                                              ; preds = %184, %165
  store i32 1, i32* %3, align 4
  br label %190

190:                                              ; preds = %189, %29
  %191 = load i32, i32* %3, align 4
  ret i32 %191
}

declare dso_local i32 @le16_to_cpup(i32*) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
