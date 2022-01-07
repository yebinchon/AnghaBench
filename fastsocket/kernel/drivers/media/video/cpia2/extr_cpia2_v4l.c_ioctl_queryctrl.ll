; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_v4l.c_ioctl_queryctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_v4l.c_ioctl_queryctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.camera_data = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.v4l2_queryctrl = type { i32, i32, i32, i32, i32 }

@NUM_CONTROLS = common dso_local global i32 0, align 4
@controls = common dso_local global %struct.TYPE_10__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@DEVICE_STV_672 = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_DISABLED = common dso_local global i32 0, align 4
@CPIA2_VP_SENSOR_FLAGS_500 = common dso_local global i32 0, align 4
@framerate_controls = common dso_local global %struct.TYPE_11__* null, align 8
@CPIA2_VP_FRAMERATE_15 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.camera_data*)* @ioctl_queryctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioctl_queryctrl(i8* %0, %struct.camera_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.camera_data*, align 8
  %6 = alloca %struct.v4l2_queryctrl*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.camera_data* %1, %struct.camera_data** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.v4l2_queryctrl*
  store %struct.v4l2_queryctrl* %9, %struct.v4l2_queryctrl** %6, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %33, %2
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @NUM_CONTROLS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %36

14:                                               ; preds = %10
  %15 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %6, align 8
  %16 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** @controls, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %17, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %14
  %26 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %6, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** @controls, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i64 %29
  %31 = call i32 @memcpy(%struct.v4l2_queryctrl* %26, %struct.TYPE_10__* %30, i32 20)
  br label %36

32:                                               ; preds = %14
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %10

36:                                               ; preds = %25, %10
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @NUM_CONTROLS, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %150

43:                                               ; preds = %36
  %44 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %6, align 8
  %45 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %148 [
    i32 129, label %47
    i32 128, label %59
    i32 131, label %74
    i32 132, label %119
    i32 130, label %134
  ]

47:                                               ; preds = %43
  %48 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %49 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @DEVICE_STV_672, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %6, align 8
  %57 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %56, i32 0, i32 1
  store i32 1, i32* %57, align 4
  br label %58

58:                                               ; preds = %55, %47
  br label %149

59:                                               ; preds = %43
  %60 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %61 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @DEVICE_STV_672, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %59
  %68 = load i32, i32* @V4L2_CTRL_FLAG_DISABLED, align 4
  %69 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %6, align 8
  %70 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %67, %59
  br label %149

74:                                               ; preds = %43
  %75 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %76 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @DEVICE_STV_672, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %118

82:                                               ; preds = %74
  %83 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %84 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @CPIA2_VP_SENSOR_FLAGS_500, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %118

90:                                               ; preds = %82
  store i32 0, i32* %7, align 4
  br label %91

91:                                               ; preds = %114, %90
  %92 = load i32, i32* %7, align 4
  %93 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %6, align 8
  %94 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %117

97:                                               ; preds = %91
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** @framerate_controls, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @CPIA2_VP_FRAMERATE_15, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %97
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %6, align 8
  %109 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* %7, align 4
  %111 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %6, align 8
  %112 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %111, i32 0, i32 3
  store i32 %110, i32* %112, align 4
  br label %113

113:                                              ; preds = %106, %97
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %7, align 4
  br label %91

117:                                              ; preds = %91
  br label %118

118:                                              ; preds = %117, %82, %74
  br label %149

119:                                              ; preds = %43
  %120 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %121 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @DEVICE_STV_672, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %133

127:                                              ; preds = %119
  %128 = load i32, i32* @V4L2_CTRL_FLAG_DISABLED, align 4
  %129 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %6, align 8
  %130 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 4
  br label %133

133:                                              ; preds = %127, %119
  br label %149

134:                                              ; preds = %43
  %135 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %136 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 337
  br i1 %140, label %141, label %147

141:                                              ; preds = %134
  %142 = load i32, i32* @V4L2_CTRL_FLAG_DISABLED, align 4
  %143 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %6, align 8
  %144 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 4
  %146 = or i32 %145, %142
  store i32 %146, i32* %144, align 4
  br label %147

147:                                              ; preds = %141, %134
  br label %149

148:                                              ; preds = %43
  br label %149

149:                                              ; preds = %148, %147, %133, %118, %73, %58
  store i32 0, i32* %3, align 4
  br label %150

150:                                              ; preds = %149, %40
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i32 @memcpy(%struct.v4l2_queryctrl*, %struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
