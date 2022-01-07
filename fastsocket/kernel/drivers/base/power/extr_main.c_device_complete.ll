; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/power/extr_main.c_device_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/power/extr_main.c_device_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32, %struct.TYPE_12__*, %struct.TYPE_10__*, %struct.TYPE_8__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (%struct.device*)* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.device*)* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.device*)* }

@.str = private unnamed_addr constant [18 x i8] c"completing class \00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"completing type \00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"completing \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i32)* @device_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @device_complete(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 0
  %7 = call i32 @down(i32* %6)
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 3
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = icmp ne %struct.TYPE_8__* %10, null
  br i1 %11, label %12, label %41

12:                                               ; preds = %2
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 3
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = icmp ne %struct.TYPE_7__* %17, null
  br i1 %18, label %19, label %41

19:                                               ; preds = %12
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 3
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32 (%struct.device*)*, i32 (%struct.device*)** %25, align 8
  %27 = icmp ne i32 (%struct.device*)* %26, null
  br i1 %27, label %28, label %41

28:                                               ; preds = %19
  %29 = load %struct.device*, %struct.device** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @pm_dev_dbg(%struct.device* %29, i32 %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.device*, %struct.device** %3, align 8
  %33 = getelementptr inbounds %struct.device, %struct.device* %32, i32 0, i32 3
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32 (%struct.device*)*, i32 (%struct.device*)** %37, align 8
  %39 = load %struct.device*, %struct.device** %3, align 8
  %40 = call i32 %38(%struct.device* %39)
  br label %41

41:                                               ; preds = %28, %19, %12, %2
  %42 = load %struct.device*, %struct.device** %3, align 8
  %43 = getelementptr inbounds %struct.device, %struct.device* %42, i32 0, i32 2
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = icmp ne %struct.TYPE_10__* %44, null
  br i1 %45, label %46, label %75

46:                                               ; preds = %41
  %47 = load %struct.device*, %struct.device** %3, align 8
  %48 = getelementptr inbounds %struct.device, %struct.device* %47, i32 0, i32 2
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = icmp ne %struct.TYPE_9__* %51, null
  br i1 %52, label %53, label %75

53:                                               ; preds = %46
  %54 = load %struct.device*, %struct.device** %3, align 8
  %55 = getelementptr inbounds %struct.device, %struct.device* %54, i32 0, i32 2
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32 (%struct.device*)*, i32 (%struct.device*)** %59, align 8
  %61 = icmp ne i32 (%struct.device*)* %60, null
  br i1 %61, label %62, label %75

62:                                               ; preds = %53
  %63 = load %struct.device*, %struct.device** %3, align 8
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @pm_dev_dbg(%struct.device* %63, i32 %64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %66 = load %struct.device*, %struct.device** %3, align 8
  %67 = getelementptr inbounds %struct.device, %struct.device* %66, i32 0, i32 2
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32 (%struct.device*)*, i32 (%struct.device*)** %71, align 8
  %73 = load %struct.device*, %struct.device** %3, align 8
  %74 = call i32 %72(%struct.device* %73)
  br label %75

75:                                               ; preds = %62, %53, %46, %41
  %76 = load %struct.device*, %struct.device** %3, align 8
  %77 = getelementptr inbounds %struct.device, %struct.device* %76, i32 0, i32 1
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = icmp ne %struct.TYPE_12__* %78, null
  br i1 %79, label %80, label %109

80:                                               ; preds = %75
  %81 = load %struct.device*, %struct.device** %3, align 8
  %82 = getelementptr inbounds %struct.device, %struct.device* %81, i32 0, i32 1
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %84, align 8
  %86 = icmp ne %struct.TYPE_11__* %85, null
  br i1 %86, label %87, label %109

87:                                               ; preds = %80
  %88 = load %struct.device*, %struct.device** %3, align 8
  %89 = getelementptr inbounds %struct.device, %struct.device* %88, i32 0, i32 1
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load i32 (%struct.device*)*, i32 (%struct.device*)** %93, align 8
  %95 = icmp ne i32 (%struct.device*)* %94, null
  br i1 %95, label %96, label %109

96:                                               ; preds = %87
  %97 = load %struct.device*, %struct.device** %3, align 8
  %98 = load i32, i32* %4, align 4
  %99 = call i32 @pm_dev_dbg(%struct.device* %97, i32 %98, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %100 = load %struct.device*, %struct.device** %3, align 8
  %101 = getelementptr inbounds %struct.device, %struct.device* %100, i32 0, i32 1
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load i32 (%struct.device*)*, i32 (%struct.device*)** %105, align 8
  %107 = load %struct.device*, %struct.device** %3, align 8
  %108 = call i32 %106(%struct.device* %107)
  br label %109

109:                                              ; preds = %96, %87, %80, %75
  %110 = load %struct.device*, %struct.device** %3, align 8
  %111 = getelementptr inbounds %struct.device, %struct.device* %110, i32 0, i32 0
  %112 = call i32 @up(i32* %111)
  ret void
}

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @pm_dev_dbg(%struct.device*, i32, i8*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
