; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_wac.c_wacom_tpc_pen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_wac.c_wacom_tpc_pen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom_wac = type { i8*, i32*, i32*, %struct.TYPE_2__*, %struct.wacom_features* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.wacom_features = type { i32 }

@BTN_TOOL_RUBBER = common dso_local global i32 0, align 4
@BTN_TOOL_PEN = common dso_local global i32 0, align 4
@BTN_STYLUS = common dso_local global i32 0, align 4
@BTN_STYLUS2 = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_MISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wacom_wac*, i8*)* @wacom_tpc_pen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_tpc_pen(%struct.wacom_wac* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wacom_wac*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wacom_features*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.wacom_wac* %0, %struct.wacom_wac** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %11 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %10, i32 0, i32 4
  %12 = load %struct.wacom_features*, %struct.wacom_features** %11, align 8
  store %struct.wacom_features* %12, %struct.wacom_features** %6, align 8
  %13 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %14 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, 32
  store i32 %20, i32* %9, align 4
  %21 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %22 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %21, i32 0, i32 3
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %44, label %27

27:                                               ; preds = %2
  %28 = load i8*, i8** %7, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = and i32 %31, 12
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @BTN_TOOL_RUBBER, align 4
  br label %38

36:                                               ; preds = %27
  %37 = load i32, i32* @BTN_TOOL_PEN, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %41 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 %39, i32* %43, align 4
  br label %44

44:                                               ; preds = %38, %2
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %47 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %46, i32 0, i32 3
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 %45, i32* %49, align 4
  %50 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %51 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %50, i32 0, i32 3
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %136, label %56

56:                                               ; preds = %44
  %57 = load i8*, i8** %5, align 8
  %58 = load i32, i32* @BTN_STYLUS, align 4
  %59 = load i8*, i8** %7, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = and i32 %62, 2
  %64 = call i32 @wacom_report_key(i8* %57, i32 %58, i32 %63)
  %65 = load i8*, i8** %5, align 8
  %66 = load i32, i32* @BTN_STYLUS2, align 4
  %67 = load i8*, i8** %7, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = and i32 %70, 16
  %72 = call i32 @wacom_report_key(i8* %65, i32 %66, i32 %71)
  %73 = load i8*, i8** %5, align 8
  %74 = load i32, i32* @ABS_X, align 4
  %75 = load i8*, i8** %7, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 2
  %77 = bitcast i8* %76 to i32*
  %78 = call i32 @le16_to_cpup(i32* %77)
  %79 = call i32 @wacom_report_abs(i8* %73, i32 %74, i32 %78)
  %80 = load i8*, i8** %5, align 8
  %81 = load i32, i32* @ABS_Y, align 4
  %82 = load i8*, i8** %7, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 4
  %84 = bitcast i8* %83 to i32*
  %85 = call i32 @le16_to_cpup(i32* %84)
  %86 = call i32 @wacom_report_abs(i8* %80, i32 %81, i32 %85)
  %87 = load i8*, i8** %7, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 7
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = and i32 %90, 1
  %92 = shl i32 %91, 8
  %93 = load i8*, i8** %7, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 6
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = or i32 %92, %96
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %56
  %101 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %102 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %103, %104
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %8, align 4
  br label %107

107:                                              ; preds = %100, %56
  %108 = load i8*, i8** %5, align 8
  %109 = load i32, i32* @ABS_PRESSURE, align 4
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @wacom_report_abs(i8* %108, i32 %109, i32 %110)
  %112 = load i8*, i8** %5, align 8
  %113 = load i32, i32* @BTN_TOUCH, align 4
  %114 = load i8*, i8** %7, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 1
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = and i32 %117, 5
  %119 = call i32 @wacom_report_key(i8* %112, i32 %113, i32 %118)
  %120 = load i8*, i8** %5, align 8
  %121 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %122 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @wacom_report_key(i8* %120, i32 %125, i32 %126)
  %128 = load i8*, i8** %5, align 8
  %129 = load i32, i32* @ABS_MISC, align 4
  %130 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %131 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @wacom_report_abs(i8* %128, i32 %129, i32 %134)
  store i32 1, i32* %3, align 4
  br label %137

136:                                              ; preds = %44
  store i32 0, i32* %3, align 4
  br label %137

137:                                              ; preds = %136, %107
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @wacom_report_key(i8*, i32, i32) #1

declare dso_local i32 @wacom_report_abs(i8*, i32, i32) #1

declare dso_local i32 @le16_to_cpup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
