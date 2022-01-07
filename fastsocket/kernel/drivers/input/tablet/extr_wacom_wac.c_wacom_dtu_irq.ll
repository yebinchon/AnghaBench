; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_wac.c_wacom_dtu_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_wac.c_wacom_dtu_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom_wac = type { i8*, i32*, i32*, %struct.wacom_features* }
%struct.wacom_features = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"wacom_dtu_irq: received report #%d\00", align 1
@BTN_TOOL_RUBBER = common dso_local global i32 0, align 4
@BTN_TOOL_PEN = common dso_local global i32 0, align 4
@STYLUS_DEVICE_ID = common dso_local global i32 0, align 4
@ERASER_DEVICE_ID = common dso_local global i32 0, align 4
@BTN_STYLUS = common dso_local global i32 0, align 4
@BTN_STYLUS2 = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_MISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wacom_wac*, i8*)* @wacom_dtu_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_dtu_irq(%struct.wacom_wac* %0, i8* %1) #0 {
  %3 = alloca %struct.wacom_wac*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wacom_features*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.wacom_wac* %0, %struct.wacom_wac** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %10 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %9, i32 0, i32 3
  %11 = load %struct.wacom_features*, %struct.wacom_features** %10, align 8
  store %struct.wacom_features* %11, %struct.wacom_features** %5, align 8
  %12 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %13 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = and i32 %18, 32
  store i32 %19, i32* %7, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = call i32 @dbg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8 signext %22)
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %63

26:                                               ; preds = %2
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = and i32 %30, 12
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @BTN_TOOL_RUBBER, align 4
  br label %37

35:                                               ; preds = %26
  %36 = load i32, i32* @BTN_TOOL_PEN, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  %39 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %40 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  store i32 %38, i32* %42, align 4
  %43 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %44 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @BTN_TOOL_PEN, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %37
  %51 = load i32, i32* @STYLUS_DEVICE_ID, align 4
  %52 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %53 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  store i32 %51, i32* %55, align 4
  br label %62

56:                                               ; preds = %37
  %57 = load i32, i32* @ERASER_DEVICE_ID, align 4
  %58 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %59 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  store i32 %57, i32* %61, align 4
  br label %62

62:                                               ; preds = %56, %50
  br label %63

63:                                               ; preds = %62, %2
  %64 = load i8*, i8** %4, align 8
  %65 = load i32, i32* @BTN_STYLUS, align 4
  %66 = load i8*, i8** %6, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = and i32 %69, 2
  %71 = call i32 @wacom_report_key(i8* %64, i32 %65, i32 %70)
  %72 = load i8*, i8** %4, align 8
  %73 = load i32, i32* @BTN_STYLUS2, align 4
  %74 = load i8*, i8** %6, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = and i32 %77, 16
  %79 = call i32 @wacom_report_key(i8* %72, i32 %73, i32 %78)
  %80 = load i8*, i8** %4, align 8
  %81 = load i32, i32* @ABS_X, align 4
  %82 = load i8*, i8** %6, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 2
  %84 = bitcast i8* %83 to i32*
  %85 = call i32 @le16_to_cpup(i32* %84)
  %86 = call i32 @wacom_report_abs(i8* %80, i32 %81, i32 %85)
  %87 = load i8*, i8** %4, align 8
  %88 = load i32, i32* @ABS_Y, align 4
  %89 = load i8*, i8** %6, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 4
  %91 = bitcast i8* %90 to i32*
  %92 = call i32 @le16_to_cpup(i32* %91)
  %93 = call i32 @wacom_report_abs(i8* %87, i32 %88, i32 %92)
  %94 = load i8*, i8** %6, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 7
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = and i32 %97, 1
  %99 = shl i32 %98, 8
  %100 = load i8*, i8** %6, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 6
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = or i32 %99, %103
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %63
  %108 = load %struct.wacom_features*, %struct.wacom_features** %5, align 8
  %109 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %110, %111
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %8, align 4
  br label %114

114:                                              ; preds = %107, %63
  %115 = load i8*, i8** %4, align 8
  %116 = load i32, i32* @ABS_PRESSURE, align 4
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @wacom_report_abs(i8* %115, i32 %116, i32 %117)
  %119 = load i8*, i8** %4, align 8
  %120 = load i32, i32* @BTN_TOUCH, align 4
  %121 = load i8*, i8** %6, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 1
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = and i32 %124, 5
  %126 = call i32 @wacom_report_key(i8* %119, i32 %120, i32 %125)
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %134, label %129

129:                                              ; preds = %114
  %130 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %131 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  store i32 0, i32* %133, align 4
  br label %134

134:                                              ; preds = %129, %114
  %135 = load i8*, i8** %4, align 8
  %136 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %137 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %136, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %7, align 4
  %142 = call i32 @wacom_report_key(i8* %135, i32 %140, i32 %141)
  %143 = load i8*, i8** %4, align 8
  %144 = load i32, i32* @ABS_MISC, align 4
  %145 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %146 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @wacom_report_abs(i8* %143, i32 %144, i32 %149)
  %151 = load i8*, i8** %4, align 8
  %152 = call i32 @wacom_input_sync(i8* %151)
  ret i32 1
}

declare dso_local i32 @dbg(i8*, i8 signext) #1

declare dso_local i32 @wacom_report_key(i8*, i32, i32) #1

declare dso_local i32 @wacom_report_abs(i8*, i32, i32) #1

declare dso_local i32 @le16_to_cpup(i32*) #1

declare dso_local i32 @wacom_input_sync(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
