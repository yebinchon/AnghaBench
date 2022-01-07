; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/power/extr_main.c_device_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/power/extr_main.c_device_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 (%struct.device*)*, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 (%struct.device*)*, i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"legacy \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"type \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"class \00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"legacy class \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @device_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_resume(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call i32 @TRACE_DEVICE(%struct.device* %6)
  %8 = call i32 @TRACE_RESUME(i32 0)
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = call i32 @down(i32* %10)
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 3
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %16, label %59

16:                                               ; preds = %2
  %17 = load %struct.device*, %struct.device** %3, align 8
  %18 = getelementptr inbounds %struct.device, %struct.device* %17, i32 0, i32 3
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %16
  %24 = load %struct.device*, %struct.device** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @pm_dev_dbg(%struct.device* %24, i32 %25, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.device*, %struct.device** %3, align 8
  %28 = load %struct.device*, %struct.device** %3, align 8
  %29 = getelementptr inbounds %struct.device, %struct.device* %28, i32 0, i32 3
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @pm_op(%struct.device* %27, i64 %32, i32 %33)
  store i32 %34, i32* %5, align 4
  br label %54

35:                                               ; preds = %16
  %36 = load %struct.device*, %struct.device** %3, align 8
  %37 = getelementptr inbounds %struct.device, %struct.device* %36, i32 0, i32 3
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32 (%struct.device*)*, i32 (%struct.device*)** %39, align 8
  %41 = icmp ne i32 (%struct.device*)* %40, null
  br i1 %41, label %42, label %53

42:                                               ; preds = %35
  %43 = load %struct.device*, %struct.device** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @pm_dev_dbg(%struct.device* %43, i32 %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.device*, %struct.device** %3, align 8
  %47 = getelementptr inbounds %struct.device, %struct.device* %46, i32 0, i32 3
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32 (%struct.device*)*, i32 (%struct.device*)** %49, align 8
  %51 = load %struct.device*, %struct.device** %3, align 8
  %52 = call i32 %50(%struct.device* %51)
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %42, %35
  br label %54

54:                                               ; preds = %53, %23
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %133

58:                                               ; preds = %54
  br label %59

59:                                               ; preds = %58, %2
  %60 = load %struct.device*, %struct.device** %3, align 8
  %61 = getelementptr inbounds %struct.device, %struct.device* %60, i32 0, i32 2
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = icmp ne %struct.TYPE_5__* %62, null
  br i1 %63, label %64, label %88

64:                                               ; preds = %59
  %65 = load %struct.device*, %struct.device** %3, align 8
  %66 = getelementptr inbounds %struct.device, %struct.device* %65, i32 0, i32 2
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %64
  %72 = load %struct.device*, %struct.device** %3, align 8
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @pm_dev_dbg(%struct.device* %72, i32 %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %75 = load %struct.device*, %struct.device** %3, align 8
  %76 = load %struct.device*, %struct.device** %3, align 8
  %77 = getelementptr inbounds %struct.device, %struct.device* %76, i32 0, i32 2
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @pm_op(%struct.device* %75, i64 %80, i32 %81)
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %71, %64
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  br label %133

87:                                               ; preds = %83
  br label %88

88:                                               ; preds = %87, %59
  %89 = load %struct.device*, %struct.device** %3, align 8
  %90 = getelementptr inbounds %struct.device, %struct.device* %89, i32 0, i32 1
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = icmp ne %struct.TYPE_6__* %91, null
  br i1 %92, label %93, label %132

93:                                               ; preds = %88
  %94 = load %struct.device*, %struct.device** %3, align 8
  %95 = getelementptr inbounds %struct.device, %struct.device* %94, i32 0, i32 1
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %112

100:                                              ; preds = %93
  %101 = load %struct.device*, %struct.device** %3, align 8
  %102 = load i32, i32* %4, align 4
  %103 = call i32 @pm_dev_dbg(%struct.device* %101, i32 %102, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %104 = load %struct.device*, %struct.device** %3, align 8
  %105 = load %struct.device*, %struct.device** %3, align 8
  %106 = getelementptr inbounds %struct.device, %struct.device* %105, i32 0, i32 1
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i32, i32* %4, align 4
  %111 = call i32 @pm_op(%struct.device* %104, i64 %109, i32 %110)
  store i32 %111, i32* %5, align 4
  br label %131

112:                                              ; preds = %93
  %113 = load %struct.device*, %struct.device** %3, align 8
  %114 = getelementptr inbounds %struct.device, %struct.device* %113, i32 0, i32 1
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i32 (%struct.device*)*, i32 (%struct.device*)** %116, align 8
  %118 = icmp ne i32 (%struct.device*)* %117, null
  br i1 %118, label %119, label %130

119:                                              ; preds = %112
  %120 = load %struct.device*, %struct.device** %3, align 8
  %121 = load i32, i32* %4, align 4
  %122 = call i32 @pm_dev_dbg(%struct.device* %120, i32 %121, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %123 = load %struct.device*, %struct.device** %3, align 8
  %124 = getelementptr inbounds %struct.device, %struct.device* %123, i32 0, i32 1
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32 (%struct.device*)*, i32 (%struct.device*)** %126, align 8
  %128 = load %struct.device*, %struct.device** %3, align 8
  %129 = call i32 %127(%struct.device* %128)
  store i32 %129, i32* %5, align 4
  br label %130

130:                                              ; preds = %119, %112
  br label %131

131:                                              ; preds = %130, %100
  br label %132

132:                                              ; preds = %131, %88
  br label %133

133:                                              ; preds = %132, %86, %57
  %134 = load %struct.device*, %struct.device** %3, align 8
  %135 = getelementptr inbounds %struct.device, %struct.device* %134, i32 0, i32 0
  %136 = call i32 @up(i32* %135)
  %137 = load i32, i32* %5, align 4
  %138 = call i32 @TRACE_RESUME(i32 %137)
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local i32 @TRACE_DEVICE(%struct.device*) #1

declare dso_local i32 @TRACE_RESUME(i32) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @pm_dev_dbg(%struct.device*, i32, i8*) #1

declare dso_local i32 @pm_op(%struct.device*, i64, i32) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
