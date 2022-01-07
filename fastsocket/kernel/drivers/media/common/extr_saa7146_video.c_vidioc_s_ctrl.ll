; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_video.c_vidioc_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_video.c_vidioc_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.saa7146_dev = type { %struct.saa7146_vv* }
%struct.saa7146_vv = type { i32, i32 }
%struct.v4l2_queryctrl = type { i32, i32, i32 }
%struct.saa7146_fh = type { %struct.saa7146_dev* }

@.str = private unnamed_addr constant [20 x i8] c"unknown control %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BCS_CTRL = common dso_local global i32 0, align 4
@MC2 = common dso_local global i32 0, align 4
@MASK_22 = common dso_local global i32 0, align 4
@MASK_06 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"V4L2_CID_HFLIP while active capture.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"V4L2_CID_VFLIP while active capture.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_control*)* @vidioc_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_ctrl(%struct.file* %0, i8* %1, %struct.v4l2_control* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_control*, align 8
  %8 = alloca %struct.saa7146_dev*, align 8
  %9 = alloca %struct.saa7146_vv*, align 8
  %10 = alloca %struct.v4l2_queryctrl*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_control* %2, %struct.v4l2_control** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.saa7146_fh*
  %16 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %15, i32 0, i32 0
  %17 = load %struct.saa7146_dev*, %struct.saa7146_dev** %16, align 8
  store %struct.saa7146_dev* %17, %struct.saa7146_dev** %8, align 8
  %18 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %19 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %18, i32 0, i32 0
  %20 = load %struct.saa7146_vv*, %struct.saa7146_vv** %19, align 8
  store %struct.saa7146_vv* %20, %struct.saa7146_vv** %9, align 8
  %21 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.v4l2_queryctrl* @ctrl_by_id(i32 %23)
  store %struct.v4l2_queryctrl* %24, %struct.v4l2_queryctrl** %10, align 8
  %25 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %10, align 8
  %26 = icmp eq %struct.v4l2_queryctrl* null, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %3
  %28 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @DEB_D(i8* %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %181

36:                                               ; preds = %3
  %37 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %10, align 8
  %38 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %69 [
    i32 130, label %40
    i32 128, label %40
    i32 129, label %40
  ]

40:                                               ; preds = %36, %36, %36
  %41 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %42 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %10, align 8
  %45 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %40
  %49 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %10, align 8
  %50 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %53 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %48, %40
  %55 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %56 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %10, align 8
  %59 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = icmp sgt i32 %57, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %54
  %63 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %10, align 8
  %64 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %67 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %62, %54
  br label %70

69:                                               ; preds = %36
  br label %70

70:                                               ; preds = %69, %68
  %71 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %72 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  switch i32 %73, label %168 [
    i32 135, label %74
    i32 134, label %96
    i32 132, label %118
    i32 133, label %140
    i32 131, label %154
  ]

74:                                               ; preds = %70
  %75 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %76 = load i32, i32* @BCS_CTRL, align 4
  %77 = call i32 @saa7146_read(%struct.saa7146_dev* %75, i32 %76)
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = and i32 %78, 16777215
  store i32 %79, i32* %11, align 4
  %80 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %81 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = shl i32 %82, 24
  %84 = load i32, i32* %11, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %11, align 4
  %86 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %87 = load i32, i32* @BCS_CTRL, align 4
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @saa7146_write(%struct.saa7146_dev* %86, i32 %87, i32 %88)
  %90 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %91 = load i32, i32* @MC2, align 4
  %92 = load i32, i32* @MASK_22, align 4
  %93 = load i32, i32* @MASK_06, align 4
  %94 = or i32 %92, %93
  %95 = call i32 @saa7146_write(%struct.saa7146_dev* %90, i32 %91, i32 %94)
  br label %171

96:                                               ; preds = %70
  %97 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %98 = load i32, i32* @BCS_CTRL, align 4
  %99 = call i32 @saa7146_read(%struct.saa7146_dev* %97, i32 %98)
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %12, align 4
  %101 = and i32 %100, -16711681
  store i32 %101, i32* %12, align 4
  %102 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %103 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = shl i32 %104, 16
  %106 = load i32, i32* %12, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %12, align 4
  %108 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %109 = load i32, i32* @BCS_CTRL, align 4
  %110 = load i32, i32* %12, align 4
  %111 = call i32 @saa7146_write(%struct.saa7146_dev* %108, i32 %109, i32 %110)
  %112 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %113 = load i32, i32* @MC2, align 4
  %114 = load i32, i32* @MASK_22, align 4
  %115 = load i32, i32* @MASK_06, align 4
  %116 = or i32 %114, %115
  %117 = call i32 @saa7146_write(%struct.saa7146_dev* %112, i32 %113, i32 %116)
  br label %171

118:                                              ; preds = %70
  %119 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %120 = load i32, i32* @BCS_CTRL, align 4
  %121 = call i32 @saa7146_read(%struct.saa7146_dev* %119, i32 %120)
  store i32 %121, i32* %13, align 4
  %122 = load i32, i32* %13, align 4
  %123 = and i32 %122, -256
  store i32 %123, i32* %13, align 4
  %124 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %125 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = shl i32 %126, 0
  %128 = load i32, i32* %13, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %13, align 4
  %130 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %131 = load i32, i32* @BCS_CTRL, align 4
  %132 = load i32, i32* %13, align 4
  %133 = call i32 @saa7146_write(%struct.saa7146_dev* %130, i32 %131, i32 %132)
  %134 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %135 = load i32, i32* @MC2, align 4
  %136 = load i32, i32* @MASK_22, align 4
  %137 = load i32, i32* @MASK_06, align 4
  %138 = or i32 %136, %137
  %139 = call i32 @saa7146_write(%struct.saa7146_dev* %134, i32 %135, i32 %138)
  br label %171

140:                                              ; preds = %70
  %141 = load i8*, i8** %6, align 8
  %142 = call i32 @IS_CAPTURE_ACTIVE(i8* %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %140
  %145 = call i32 @DEB_D(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %146 = load i32, i32* @EBUSY, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %4, align 4
  br label %181

148:                                              ; preds = %140
  %149 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %150 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %153 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 4
  br label %171

154:                                              ; preds = %70
  %155 = load i8*, i8** %6, align 8
  %156 = call i32 @IS_CAPTURE_ACTIVE(i8* %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %154
  %159 = call i32 @DEB_D(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %160 = load i32, i32* @EBUSY, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %4, align 4
  br label %181

162:                                              ; preds = %154
  %163 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %164 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %167 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %166, i32 0, i32 1
  store i32 %165, i32* %167, align 4
  br label %171

168:                                              ; preds = %70
  %169 = load i32, i32* @EINVAL, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %4, align 4
  br label %181

171:                                              ; preds = %162, %148, %118, %96, %74
  %172 = load i8*, i8** %6, align 8
  %173 = call i64 @IS_OVERLAY_ACTIVE(i8* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %171
  %176 = load i8*, i8** %6, align 8
  %177 = call i32 @saa7146_stop_preview(i8* %176)
  %178 = load i8*, i8** %6, align 8
  %179 = call i32 @saa7146_start_preview(i8* %178)
  br label %180

180:                                              ; preds = %175, %171
  store i32 0, i32* %4, align 4
  br label %181

181:                                              ; preds = %180, %168, %158, %144, %27
  %182 = load i32, i32* %4, align 4
  ret i32 %182
}

declare dso_local %struct.v4l2_queryctrl* @ctrl_by_id(i32) #1

declare dso_local i32 @DEB_D(i8*) #1

declare dso_local i32 @saa7146_read(%struct.saa7146_dev*, i32) #1

declare dso_local i32 @saa7146_write(%struct.saa7146_dev*, i32, i32) #1

declare dso_local i32 @IS_CAPTURE_ACTIVE(i8*) #1

declare dso_local i64 @IS_OVERLAY_ACTIVE(i8*) #1

declare dso_local i32 @saa7146_stop_preview(i8*) #1

declare dso_local i32 @saa7146_start_preview(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
