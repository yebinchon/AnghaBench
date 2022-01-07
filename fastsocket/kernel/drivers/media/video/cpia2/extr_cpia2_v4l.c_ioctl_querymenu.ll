; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_v4l.c_ioctl_querymenu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_v4l.c_ioctl_querymenu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.camera_data = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.v4l2_querymenu = type { i32, i64, i32, i64 }

@NUM_FLICKER_CONTROLS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@flicker_controls = common dso_local global %struct.TYPE_12__* null, align 8
@NUM_FRAMERATE_CONTROLS = common dso_local global i32 0, align 4
@DEVICE_STV_672 = common dso_local global i32 0, align 4
@CPIA2_VP_SENSOR_FLAGS_500 = common dso_local global i32 0, align 4
@framerate_controls = common dso_local global %struct.TYPE_11__* null, align 8
@CPIA2_VP_FRAMERATE_15 = common dso_local global i32 0, align 4
@NUM_LIGHTS_CONTROLS = common dso_local global i64 0, align 8
@lights_controls = common dso_local global %struct.TYPE_10__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.camera_data*)* @ioctl_querymenu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioctl_querymenu(i8* %0, %struct.camera_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.camera_data*, align 8
  %6 = alloca %struct.v4l2_querymenu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.camera_data* %1, %struct.camera_data** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.v4l2_querymenu*
  store %struct.v4l2_querymenu* %10, %struct.v4l2_querymenu** %6, align 8
  %11 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %6, align 8
  %12 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @memset(i32 %13, i32 0, i32 4)
  %15 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %6, align 8
  %16 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %15, i32 0, i32 3
  store i64 0, i64* %16, align 8
  %17 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %6, align 8
  %18 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %123 [
    i32 130, label %20
    i32 129, label %41
    i32 128, label %102
  ]

20:                                               ; preds = %2
  %21 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %6, align 8
  %22 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NUM_FLICKER_CONTROLS, align 8
  %25 = icmp uge i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %127

29:                                               ; preds = %20
  %30 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %6, align 8
  %31 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** @flicker_controls, align 8
  %34 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %6, align 8
  %35 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @strcpy(i32 %32, i32 %39)
  br label %126

41:                                               ; preds = %2
  %42 = load i32, i32* @NUM_FRAMERATE_CONTROLS, align 4
  %43 = sub nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  %44 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %45 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @DEVICE_STV_672, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %80

51:                                               ; preds = %41
  %52 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %53 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @CPIA2_VP_SENSOR_FLAGS_500, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %80

59:                                               ; preds = %51
  store i32 0, i32* %8, align 4
  br label %60

60:                                               ; preds = %76, %59
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %79

64:                                               ; preds = %60
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** @framerate_controls, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @CPIA2_VP_FRAMERATE_15, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %64
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %73, %64
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %60

79:                                               ; preds = %60
  br label %80

80:                                               ; preds = %79, %51, %41
  %81 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %6, align 8
  %82 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = icmp ugt i64 %83, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %127

90:                                               ; preds = %80
  %91 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %6, align 8
  %92 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** @framerate_controls, align 8
  %95 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %6, align 8
  %96 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @strcpy(i32 %93, i32 %100)
  br label %126

102:                                              ; preds = %2
  %103 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %6, align 8
  %104 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @NUM_LIGHTS_CONTROLS, align 8
  %107 = icmp uge i64 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %102
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %3, align 4
  br label %127

111:                                              ; preds = %102
  %112 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %6, align 8
  %113 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lights_controls, align 8
  %116 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %6, align 8
  %117 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @strcpy(i32 %114, i32 %121)
  br label %126

123:                                              ; preds = %2
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %3, align 4
  br label %127

126:                                              ; preds = %111, %90, %29
  store i32 0, i32* %3, align 4
  br label %127

127:                                              ; preds = %126, %123, %108, %87, %26
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
