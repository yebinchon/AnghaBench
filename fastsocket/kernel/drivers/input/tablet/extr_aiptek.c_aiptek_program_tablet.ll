; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_aiptek.c_aiptek_program_tablet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_aiptek.c_aiptek_program_tablet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aiptek = type { i64, i32, %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32*, i64* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@ABS_X = common dso_local global i64 0, align 8
@ABS_Y = common dso_local global i64 0, align 8
@ABS_PRESSURE = common dso_local global i64 0, align 8
@AIPTEK_COORDINATE_ABSOLUTE_MODE = common dso_local global i64 0, align 8
@AIPTEK_DIAGNOSTIC_NA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aiptek*)* @aiptek_program_tablet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aiptek_program_tablet(%struct.aiptek* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aiptek*, align 8
  %4 = alloca i32, align 4
  store %struct.aiptek* %0, %struct.aiptek** %3, align 8
  %5 = load %struct.aiptek*, %struct.aiptek** %3, align 8
  %6 = call i32 @aiptek_command(%struct.aiptek* %5, i32 24, i32 4)
  store i32 %6, i32* %4, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* %4, align 4
  store i32 %9, i32* %2, align 4
  br label %146

10:                                               ; preds = %1
  %11 = load %struct.aiptek*, %struct.aiptek** %3, align 8
  %12 = call i32 @aiptek_query(%struct.aiptek* %11, i32 2, i32 0)
  store i32 %12, i32* %4, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %146

16:                                               ; preds = %10
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, 255
  %19 = load %struct.aiptek*, %struct.aiptek** %3, align 8
  %20 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 8
  %22 = load %struct.aiptek*, %struct.aiptek** %3, align 8
  %23 = call i32 @aiptek_query(%struct.aiptek* %22, i32 3, i32 0)
  store i32 %23, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %146

27:                                               ; preds = %16
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.aiptek*, %struct.aiptek** %3, align 8
  %30 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  %32 = load %struct.aiptek*, %struct.aiptek** %3, align 8
  %33 = call i32 @aiptek_query(%struct.aiptek* %32, i32 4, i32 0)
  store i32 %33, i32* %4, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %146

37:                                               ; preds = %27
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.aiptek*, %struct.aiptek** %3, align 8
  %40 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  store i32 %38, i32* %41, align 8
  %42 = load %struct.aiptek*, %struct.aiptek** %3, align 8
  %43 = call i32 @aiptek_query(%struct.aiptek* %42, i32 1, i32 0)
  store i32 %43, i32* %4, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %146

47:                                               ; preds = %37
  %48 = load %struct.aiptek*, %struct.aiptek** %3, align 8
  %49 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %48, i32 0, i32 3
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = load i64, i64* @ABS_X, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  store i64 0, i64* %54, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sub nsw i32 %55, 1
  %57 = load %struct.aiptek*, %struct.aiptek** %3, align 8
  %58 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %57, i32 0, i32 3
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* @ABS_X, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32 %56, i32* %63, align 4
  %64 = load %struct.aiptek*, %struct.aiptek** %3, align 8
  %65 = call i32 @aiptek_query(%struct.aiptek* %64, i32 1, i32 1)
  store i32 %65, i32* %4, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %47
  %68 = load i32, i32* %4, align 4
  store i32 %68, i32* %2, align 4
  br label %146

69:                                               ; preds = %47
  %70 = load %struct.aiptek*, %struct.aiptek** %3, align 8
  %71 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %70, i32 0, i32 3
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  %75 = load i64, i64* @ABS_Y, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  store i64 0, i64* %76, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sub nsw i32 %77, 1
  %79 = load %struct.aiptek*, %struct.aiptek** %3, align 8
  %80 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %79, i32 0, i32 3
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* @ABS_Y, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  store i32 %78, i32* %85, align 4
  %86 = load %struct.aiptek*, %struct.aiptek** %3, align 8
  %87 = call i32 @aiptek_query(%struct.aiptek* %86, i32 8, i32 0)
  store i32 %87, i32* %4, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %69
  %90 = load i32, i32* %4, align 4
  store i32 %90, i32* %2, align 4
  br label %146

91:                                               ; preds = %69
  %92 = load %struct.aiptek*, %struct.aiptek** %3, align 8
  %93 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %92, i32 0, i32 3
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load i64*, i64** %95, align 8
  %97 = load i64, i64* @ABS_PRESSURE, align 8
  %98 = getelementptr inbounds i64, i64* %96, i64 %97
  store i64 0, i64* %98, align 8
  %99 = load i32, i32* %4, align 4
  %100 = sub nsw i32 %99, 1
  %101 = load %struct.aiptek*, %struct.aiptek** %3, align 8
  %102 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %101, i32 0, i32 3
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i64, i64* @ABS_PRESSURE, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  store i32 %100, i32* %107, align 4
  %108 = load %struct.aiptek*, %struct.aiptek** %3, align 8
  %109 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @AIPTEK_COORDINATE_ABSOLUTE_MODE, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %91
  %115 = load %struct.aiptek*, %struct.aiptek** %3, align 8
  %116 = call i32 @aiptek_command(%struct.aiptek* %115, i32 16, i32 1)
  store i32 %116, i32* %4, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = load i32, i32* %4, align 4
  store i32 %119, i32* %2, align 4
  br label %146

120:                                              ; preds = %114
  br label %128

121:                                              ; preds = %91
  %122 = load %struct.aiptek*, %struct.aiptek** %3, align 8
  %123 = call i32 @aiptek_command(%struct.aiptek* %122, i32 16, i32 0)
  store i32 %123, i32* %4, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %121
  %126 = load i32, i32* %4, align 4
  store i32 %126, i32* %2, align 4
  br label %146

127:                                              ; preds = %121
  br label %128

128:                                              ; preds = %127, %120
  %129 = load %struct.aiptek*, %struct.aiptek** %3, align 8
  %130 = call i32 @aiptek_command(%struct.aiptek* %129, i32 17, i32 2)
  store i32 %130, i32* %4, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = load i32, i32* %4, align 4
  store i32 %133, i32* %2, align 4
  br label %146

134:                                              ; preds = %128
  %135 = load %struct.aiptek*, %struct.aiptek** %3, align 8
  %136 = call i32 @aiptek_command(%struct.aiptek* %135, i32 18, i32 255)
  store i32 %136, i32* %4, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %134
  %139 = load i32, i32* %4, align 4
  store i32 %139, i32* %2, align 4
  br label %146

140:                                              ; preds = %134
  %141 = load i32, i32* @AIPTEK_DIAGNOSTIC_NA, align 4
  %142 = load %struct.aiptek*, %struct.aiptek** %3, align 8
  %143 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 8
  %144 = load %struct.aiptek*, %struct.aiptek** %3, align 8
  %145 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %144, i32 0, i32 0
  store i64 0, i64* %145, align 8
  store i32 0, i32* %2, align 4
  br label %146

146:                                              ; preds = %140, %138, %132, %125, %118, %89, %67, %45, %35, %25, %14, %8
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local i32 @aiptek_command(%struct.aiptek*, i32, i32) #1

declare dso_local i32 @aiptek_query(%struct.aiptek*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
