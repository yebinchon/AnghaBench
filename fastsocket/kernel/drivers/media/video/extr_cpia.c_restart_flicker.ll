; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia.c_restart_flicker.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia.c_restart_flicker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_data = type { i32*, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i32, i32 }

@ROUND_UP_EXP_FOR_FLICKER = common dso_local global i32 0, align 4
@COMMAND_SETEXPOSURE = common dso_local global i32 0, align 4
@EXPOSURE_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_data*)* @restart_flicker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restart_flicker(%struct.cam_data* %0) #0 {
  %2 = alloca %struct.cam_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.cam_data* %0, %struct.cam_data** %2, align 8
  %5 = call i32 @FIRMWARE_VERSION(i32 1, i32 2)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %127

8:                                                ; preds = %1
  %9 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %10 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %9, i32 0, i32 2
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %13 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %8
  %19 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %20 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 39
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %18, %8
  %26 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %27 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %26, i32 0, i32 2
  %28 = call i32 @mutex_unlock(i32* %27)
  br label %127

29:                                               ; preds = %18
  %30 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %31 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 39
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %34, 2
  store i32 %35, i32* %3, align 4
  %36 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %37 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %42 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %45, 256
  %47 = add nsw i32 %40, %46
  store i32 %47, i32* %4, align 4
  %48 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %49 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %3, align 4
  %54 = srem i32 %53, %52
  store i32 %54, i32* %3, align 4
  %55 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %56 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %75, label %61

61:                                               ; preds = %29
  %62 = load i32, i32* %3, align 4
  %63 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %64 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = sub nsw i32 %67, 3
  %69 = icmp sle i32 %62, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %61
  %71 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %72 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  store i32 1, i32* %74, align 4
  br label %75

75:                                               ; preds = %70, %61, %29
  %76 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %77 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %123

82:                                               ; preds = %75
  %83 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %84 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %123

89:                                               ; preds = %82
  %90 = load i32, i32* %4, align 4
  %91 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %92 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @ROUND_UP_EXP_FOR_FLICKER, align 4
  %97 = add nsw i32 %95, %96
  %98 = icmp sgt i32 %90, %97
  br i1 %98, label %99, label %123

99:                                               ; preds = %89
  %100 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %101 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %100, i32 0, i32 4
  %102 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %103 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %102, i32 0, i32 1
  %104 = call i32 @set_flicker(%struct.TYPE_6__* %101, i32* %103, i32 1)
  %105 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %106 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @COMMAND_SETEXPOSURE, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %99
  %112 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %113 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = icmp eq i32 %116, 2
  br i1 %117, label %118, label %122

118:                                              ; preds = %111
  %119 = load i32, i32* @EXPOSURE_NORMAL, align 4
  %120 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %121 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 8
  br label %122

122:                                              ; preds = %118, %111, %99
  br label %123

123:                                              ; preds = %122, %89, %82, %75
  %124 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %125 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %124, i32 0, i32 2
  %126 = call i32 @mutex_unlock(i32* %125)
  br label %127

127:                                              ; preds = %123, %25, %7
  ret void
}

declare dso_local i32 @FIRMWARE_VERSION(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @set_flicker(%struct.TYPE_6__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
