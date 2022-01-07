; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device.c_online_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device.c_online_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ccw_device = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@DEV_STATE_DISCONNECTED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"force\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @online_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @online_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ccw_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.ccw_device* @to_ccwdev(%struct.device* %14)
  store %struct.ccw_device* %15, %struct.ccw_device** %10, align 8
  %16 = load %struct.ccw_device*, %struct.ccw_device** %10, align 8
  %17 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = call i64 @atomic_cmpxchg(i32* %19, i32 0, i32 1)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @EAGAIN, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %121

25:                                               ; preds = %4
  %26 = load %struct.ccw_device*, %struct.ccw_device** %10, align 8
  %27 = call i32 @dev_fsm_final_state(%struct.ccw_device* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %25
  %30 = load %struct.ccw_device*, %struct.ccw_device** %10, align 8
  %31 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @DEV_STATE_DISCONNECTED, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load i32, i32* @EAGAIN, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %12, align 4
  br label %105

40:                                               ; preds = %29, %25
  %41 = load %struct.ccw_device*, %struct.ccw_device** %10, align 8
  %42 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = call i64 @work_pending(i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i32, i32* @EAGAIN, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %12, align 4
  br label %105

50:                                               ; preds = %40
  %51 = load %struct.ccw_device*, %struct.ccw_device** %10, align 8
  %52 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = icmp ne %struct.TYPE_3__* %53, null
  br i1 %54, label %55, label %66

55:                                               ; preds = %50
  %56 = load %struct.ccw_device*, %struct.ccw_device** %10, align 8
  %57 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %56, i32 0, i32 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @try_module_get(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %55
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %12, align 4
  br label %105

66:                                               ; preds = %55, %50
  %67 = load i8*, i8** %8, align 8
  %68 = load i64, i64* %9, align 8
  %69 = call i32 @strncmp(i8* %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %66
  store i32 1, i32* %11, align 4
  store i64 1, i64* %13, align 8
  store i32 0, i32* %12, align 4
  br label %75

72:                                               ; preds = %66
  store i32 0, i32* %11, align 4
  %73 = load i8*, i8** %8, align 8
  %74 = call i32 @strict_strtoul(i8* %73, i32 16, i64* %13)
  store i32 %74, i32* %12, align 4
  br label %75

75:                                               ; preds = %72, %71
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  br label %92

79:                                               ; preds = %75
  %80 = load i64, i64* %13, align 8
  switch i64 %80, label %88 [
    i64 0, label %81
    i64 1, label %84
  ]

81:                                               ; preds = %79
  %82 = load %struct.ccw_device*, %struct.ccw_device** %10, align 8
  %83 = call i32 @online_store_handle_offline(%struct.ccw_device* %82)
  store i32 %83, i32* %12, align 4
  br label %91

84:                                               ; preds = %79
  %85 = load %struct.ccw_device*, %struct.ccw_device** %10, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @online_store_handle_online(%struct.ccw_device* %85, i32 %86)
  store i32 %87, i32* %12, align 4
  br label %91

88:                                               ; preds = %79
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %12, align 4
  br label %91

91:                                               ; preds = %88, %84, %81
  br label %92

92:                                               ; preds = %91, %78
  %93 = load %struct.ccw_device*, %struct.ccw_device** %10, align 8
  %94 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %93, i32 0, i32 1
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = icmp ne %struct.TYPE_3__* %95, null
  br i1 %96, label %97, label %104

97:                                               ; preds = %92
  %98 = load %struct.ccw_device*, %struct.ccw_device** %10, align 8
  %99 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %98, i32 0, i32 1
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @module_put(i32 %102)
  br label %104

104:                                              ; preds = %97, %92
  br label %105

105:                                              ; preds = %104, %63, %47, %37
  %106 = load %struct.ccw_device*, %struct.ccw_device** %10, align 8
  %107 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %106, i32 0, i32 0
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  %110 = call i32 @atomic_set(i32* %109, i32 0)
  %111 = load i32, i32* %12, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %105
  %114 = load i32, i32* %12, align 4
  %115 = sext i32 %114 to i64
  br label %118

116:                                              ; preds = %105
  %117 = load i64, i64* %9, align 8
  br label %118

118:                                              ; preds = %116, %113
  %119 = phi i64 [ %115, %113 ], [ %117, %116 ]
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %5, align 4
  br label %121

121:                                              ; preds = %118, %22
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

declare dso_local %struct.ccw_device* @to_ccwdev(%struct.device*) #1

declare dso_local i64 @atomic_cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @dev_fsm_final_state(%struct.ccw_device*) #1

declare dso_local i64 @work_pending(i32*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @strict_strtoul(i8*, i32, i64*) #1

declare dso_local i32 @online_store_handle_offline(%struct.ccw_device*) #1

declare dso_local i32 @online_store_handle_online(%struct.ccw_device*, i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
