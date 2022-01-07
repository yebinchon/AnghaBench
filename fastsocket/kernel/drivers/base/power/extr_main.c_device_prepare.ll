; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/power/extr_main.c_device_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/power/extr_main.c_device_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32, %struct.TYPE_12__*, %struct.TYPE_10__*, %struct.TYPE_8__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (%struct.device*)* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.device*)* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.device*)* }

@.str = private unnamed_addr constant [11 x i8] c"preparing \00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"preparing type \00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"preparing class \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @device_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_prepare(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 0
  %8 = call i32 @down(i32* %7)
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 3
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = icmp ne %struct.TYPE_8__* %11, null
  br i1 %12, label %13, label %55

13:                                               ; preds = %2
  %14 = load %struct.device*, %struct.device** %3, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 3
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = icmp ne %struct.TYPE_7__* %18, null
  br i1 %19, label %20, label %55

20:                                               ; preds = %13
  %21 = load %struct.device*, %struct.device** %3, align 8
  %22 = getelementptr inbounds %struct.device, %struct.device* %21, i32 0, i32 3
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32 (%struct.device*)*, i32 (%struct.device*)** %26, align 8
  %28 = icmp ne i32 (%struct.device*)* %27, null
  br i1 %28, label %29, label %55

29:                                               ; preds = %20
  %30 = load %struct.device*, %struct.device** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @pm_dev_dbg(%struct.device* %30, i32 %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.device*, %struct.device** %3, align 8
  %34 = getelementptr inbounds %struct.device, %struct.device* %33, i32 0, i32 3
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32 (%struct.device*)*, i32 (%struct.device*)** %38, align 8
  %40 = load %struct.device*, %struct.device** %3, align 8
  %41 = call i32 %39(%struct.device* %40)
  store i32 %41, i32* %5, align 4
  %42 = load %struct.device*, %struct.device** %3, align 8
  %43 = getelementptr inbounds %struct.device, %struct.device* %42, i32 0, i32 3
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32 (%struct.device*)*, i32 (%struct.device*)** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @suspend_report_result(i32 (%struct.device*)* %48, i32 %49)
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %29
  br label %146

54:                                               ; preds = %29
  br label %55

55:                                               ; preds = %54, %20, %13, %2
  %56 = load %struct.device*, %struct.device** %3, align 8
  %57 = getelementptr inbounds %struct.device, %struct.device* %56, i32 0, i32 2
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = icmp ne %struct.TYPE_10__* %58, null
  br i1 %59, label %60, label %102

60:                                               ; preds = %55
  %61 = load %struct.device*, %struct.device** %3, align 8
  %62 = getelementptr inbounds %struct.device, %struct.device* %61, i32 0, i32 2
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = icmp ne %struct.TYPE_9__* %65, null
  br i1 %66, label %67, label %102

67:                                               ; preds = %60
  %68 = load %struct.device*, %struct.device** %3, align 8
  %69 = getelementptr inbounds %struct.device, %struct.device* %68, i32 0, i32 2
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32 (%struct.device*)*, i32 (%struct.device*)** %73, align 8
  %75 = icmp ne i32 (%struct.device*)* %74, null
  br i1 %75, label %76, label %102

76:                                               ; preds = %67
  %77 = load %struct.device*, %struct.device** %3, align 8
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @pm_dev_dbg(%struct.device* %77, i32 %78, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %80 = load %struct.device*, %struct.device** %3, align 8
  %81 = getelementptr inbounds %struct.device, %struct.device* %80, i32 0, i32 2
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i32 (%struct.device*)*, i32 (%struct.device*)** %85, align 8
  %87 = load %struct.device*, %struct.device** %3, align 8
  %88 = call i32 %86(%struct.device* %87)
  store i32 %88, i32* %5, align 4
  %89 = load %struct.device*, %struct.device** %3, align 8
  %90 = getelementptr inbounds %struct.device, %struct.device* %89, i32 0, i32 2
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32 (%struct.device*)*, i32 (%struct.device*)** %94, align 8
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @suspend_report_result(i32 (%struct.device*)* %95, i32 %96)
  %98 = load i32, i32* %5, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %76
  br label %146

101:                                              ; preds = %76
  br label %102

102:                                              ; preds = %101, %67, %60, %55
  %103 = load %struct.device*, %struct.device** %3, align 8
  %104 = getelementptr inbounds %struct.device, %struct.device* %103, i32 0, i32 1
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %104, align 8
  %106 = icmp ne %struct.TYPE_12__* %105, null
  br i1 %106, label %107, label %145

107:                                              ; preds = %102
  %108 = load %struct.device*, %struct.device** %3, align 8
  %109 = getelementptr inbounds %struct.device, %struct.device* %108, i32 0, i32 1
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %111, align 8
  %113 = icmp ne %struct.TYPE_11__* %112, null
  br i1 %113, label %114, label %145

114:                                              ; preds = %107
  %115 = load %struct.device*, %struct.device** %3, align 8
  %116 = getelementptr inbounds %struct.device, %struct.device* %115, i32 0, i32 1
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = load i32 (%struct.device*)*, i32 (%struct.device*)** %120, align 8
  %122 = icmp ne i32 (%struct.device*)* %121, null
  br i1 %122, label %123, label %145

123:                                              ; preds = %114
  %124 = load %struct.device*, %struct.device** %3, align 8
  %125 = load i32, i32* %4, align 4
  %126 = call i32 @pm_dev_dbg(%struct.device* %124, i32 %125, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %127 = load %struct.device*, %struct.device** %3, align 8
  %128 = getelementptr inbounds %struct.device, %struct.device* %127, i32 0, i32 1
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  %133 = load i32 (%struct.device*)*, i32 (%struct.device*)** %132, align 8
  %134 = load %struct.device*, %struct.device** %3, align 8
  %135 = call i32 %133(%struct.device* %134)
  store i32 %135, i32* %5, align 4
  %136 = load %struct.device*, %struct.device** %3, align 8
  %137 = getelementptr inbounds %struct.device, %struct.device* %136, i32 0, i32 1
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = load i32 (%struct.device*)*, i32 (%struct.device*)** %141, align 8
  %143 = load i32, i32* %5, align 4
  %144 = call i32 @suspend_report_result(i32 (%struct.device*)* %142, i32 %143)
  br label %145

145:                                              ; preds = %123, %114, %107, %102
  br label %146

146:                                              ; preds = %145, %100, %53
  %147 = load %struct.device*, %struct.device** %3, align 8
  %148 = getelementptr inbounds %struct.device, %struct.device* %147, i32 0, i32 0
  %149 = call i32 @up(i32* %148)
  %150 = load i32, i32* %5, align 4
  ret i32 %150
}

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @pm_dev_dbg(%struct.device*, i32, i8*) #1

declare dso_local i32 @suspend_report_result(i32 (%struct.device*)*, i32) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
