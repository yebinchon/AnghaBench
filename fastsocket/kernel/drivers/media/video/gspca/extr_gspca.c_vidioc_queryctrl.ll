; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_gspca.c_vidioc_queryctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_gspca.c_vidioc_queryctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_queryctrl = type { i32, i32, i32, i32, i32 }
%struct.gspca_dev = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { %struct.gspca_ctrl* }
%struct.gspca_ctrl = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.ctrl* }
%struct.ctrl = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@V4L2_CTRL_FLAG_NEXT_CTRL = common dso_local global i32 0, align 4
@V4L2_CTRL_ID_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_INACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_queryctrl*)* @vidioc_queryctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_queryctrl(%struct.file* %0, i8* %1, %struct.v4l2_queryctrl* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_queryctrl*, align 8
  %8 = alloca %struct.gspca_dev*, align 8
  %9 = alloca %struct.ctrl*, align 8
  %10 = alloca %struct.gspca_ctrl*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_queryctrl* %2, %struct.v4l2_queryctrl** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.gspca_dev*
  store %struct.gspca_dev* %15, %struct.gspca_dev** %8, align 8
  %16 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* @V4L2_CTRL_FLAG_NEXT_CTRL, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %95

23:                                               ; preds = %3
  %24 = load i32, i32* @V4L2_CTRL_ID_MASK, align 4
  %25 = load i32, i32* %13, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %13, align 4
  store i32 -1, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %91, %23
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %32 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %31, i32 0, i32 3
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %30, %35
  br i1 %36, label %37, label %94

37:                                               ; preds = %29
  %38 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %39 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %11, align 4
  %42 = shl i32 1, %41
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %91

46:                                               ; preds = %37
  %47 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %48 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %47, i32 0, i32 3
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load %struct.ctrl*, %struct.ctrl** %50, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %51, i64 %53
  %55 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %46
  br label %91

61:                                               ; preds = %46
  %62 = load i32, i32* %12, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %89

64:                                               ; preds = %61
  %65 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %66 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %65, i32 0, i32 3
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load %struct.ctrl*, %struct.ctrl** %68, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %69, i64 %71
  %73 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %77 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %76, i32 0, i32 3
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load %struct.ctrl*, %struct.ctrl** %79, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %80, i64 %82
  %84 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp sgt i32 %75, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %64
  br label %91

89:                                               ; preds = %64, %61
  %90 = load i32, i32* %11, align 4
  store i32 %90, i32* %12, align 4
  br label %91

91:                                               ; preds = %89, %88, %60, %45
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %11, align 4
  br label %29

94:                                               ; preds = %29
  br label %99

95:                                               ; preds = %3
  %96 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %97 = load i32, i32* %13, align 4
  %98 = call i32 @get_ctrl(%struct.gspca_dev* %96, i32 %97)
  store i32 %98, i32* %12, align 4
  br label %99

99:                                               ; preds = %95, %94
  %100 = load i32, i32* %12, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %4, align 4
  br label %161

105:                                              ; preds = %99
  %106 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %107 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %106, i32 0, i32 3
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  %110 = load %struct.ctrl*, %struct.ctrl** %109, align 8
  %111 = load i32, i32* %12, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %110, i64 %112
  store %struct.ctrl* %113, %struct.ctrl** %9, align 8
  %114 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %115 = load %struct.ctrl*, %struct.ctrl** %9, align 8
  %116 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %115, i32 0, i32 0
  %117 = call i32 @memcpy(%struct.v4l2_queryctrl* %114, %struct.TYPE_6__* %116, i32 20)
  %118 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %119 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load %struct.gspca_ctrl*, %struct.gspca_ctrl** %120, align 8
  %122 = icmp ne %struct.gspca_ctrl* %121, null
  br i1 %122, label %123, label %146

123:                                              ; preds = %105
  %124 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %125 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load %struct.gspca_ctrl*, %struct.gspca_ctrl** %126, align 8
  %128 = load i32, i32* %12, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.gspca_ctrl, %struct.gspca_ctrl* %127, i64 %129
  store %struct.gspca_ctrl* %130, %struct.gspca_ctrl** %10, align 8
  %131 = load %struct.gspca_ctrl*, %struct.gspca_ctrl** %10, align 8
  %132 = getelementptr inbounds %struct.gspca_ctrl, %struct.gspca_ctrl* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %135 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %134, i32 0, i32 4
  store i32 %133, i32* %135, align 4
  %136 = load %struct.gspca_ctrl*, %struct.gspca_ctrl** %10, align 8
  %137 = getelementptr inbounds %struct.gspca_ctrl, %struct.gspca_ctrl* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %140 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %139, i32 0, i32 3
  store i32 %138, i32* %140, align 4
  %141 = load %struct.gspca_ctrl*, %struct.gspca_ctrl** %10, align 8
  %142 = getelementptr inbounds %struct.gspca_ctrl, %struct.gspca_ctrl* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %145 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %144, i32 0, i32 2
  store i32 %143, i32* %145, align 4
  br label %146

146:                                              ; preds = %123, %105
  %147 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %148 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %12, align 4
  %151 = shl i32 1, %150
  %152 = and i32 %149, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %146
  %155 = load i32, i32* @V4L2_CTRL_FLAG_INACTIVE, align 4
  %156 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %157 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = or i32 %158, %155
  store i32 %159, i32* %157, align 4
  br label %160

160:                                              ; preds = %154, %146
  store i32 0, i32* %4, align 4
  br label %161

161:                                              ; preds = %160, %102
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

declare dso_local i32 @get_ctrl(%struct.gspca_dev*, i32) #1

declare dso_local i32 @memcpy(%struct.v4l2_queryctrl*, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
