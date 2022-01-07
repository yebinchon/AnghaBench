; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_hexium_gemini.c_vidioc_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_hexium_gemini.c_vidioc_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.file = type { i32 }
%struct.v4l2_control = type { i64, i32 }
%struct.saa7146_dev = type { %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.file*, i8*, %struct.v4l2_control*)* }
%struct.hexium = type { i32, i64 }
%struct.saa7146_fh = type { %struct.saa7146_dev* }

@HEXIUM_CONTROLS = common dso_local global i32 0, align 4
@hexium_controls = common dso_local global %struct.TYPE_6__* null, align 8
@V4L2_CID_PRIVATE_BASE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"VIDIOC_S_CTRL BW:%d.\0A\00", align 1
@V4L2_STD_PAL = common dso_local global i64 0, align 8
@hexium_pal = common dso_local global i32 0, align 4
@V4L2_STD_NTSC = common dso_local global i64 0, align 8
@hexium_ntsc = common dso_local global i32 0, align 4
@V4L2_STD_SECAM = common dso_local global i64 0, align 8
@hexium_secam = common dso_local global i32 0, align 4
@hexium_pal_bw = common dso_local global i32 0, align 4
@hexium_ntsc_bw = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_control*)* @vidioc_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_ctrl(%struct.file* %0, i8* %1, %struct.v4l2_control* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_control*, align 8
  %8 = alloca %struct.saa7146_dev*, align 8
  %9 = alloca %struct.hexium*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_control* %2, %struct.v4l2_control** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.saa7146_fh*
  %13 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %12, i32 0, i32 0
  %14 = load %struct.saa7146_dev*, %struct.saa7146_dev** %13, align 8
  store %struct.saa7146_dev* %14, %struct.saa7146_dev** %8, align 8
  %15 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %16 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.hexium*
  store %struct.hexium* %18, %struct.hexium** %9, align 8
  store i32 0, i32* %10, align 4
  %19 = load i32, i32* @HEXIUM_CONTROLS, align 4
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %10, align 4
  br label %21

21:                                               ; preds = %37, %3
  %22 = load i32, i32* %10, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %21
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hexium_controls, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  br label %40

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %10, align 4
  br label %21

40:                                               ; preds = %35, %21
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %40
  %44 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %45 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32 (%struct.file*, i8*, %struct.v4l2_control*)*, i32 (%struct.file*, i8*, %struct.v4l2_control*)** %49, align 8
  %51 = load %struct.file*, %struct.file** %5, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %54 = call i32 %50(%struct.file* %51, i8* %52, %struct.v4l2_control* %53)
  store i32 %54, i32* %4, align 4
  br label %165

55:                                               ; preds = %40
  %56 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %57 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @V4L2_CID_PRIVATE_BASE, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %63 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.hexium*, %struct.hexium** %9, align 8
  %66 = getelementptr inbounds %struct.hexium, %struct.hexium* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  br label %67

67:                                               ; preds = %61, %55
  %68 = load %struct.hexium*, %struct.hexium** %9, align 8
  %69 = getelementptr inbounds %struct.hexium, %struct.hexium* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = inttoptr i64 %71 to i8*
  %73 = call i32 @DEB_D(i8* %72)
  %74 = load %struct.hexium*, %struct.hexium** %9, align 8
  %75 = getelementptr inbounds %struct.hexium, %struct.hexium* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 0, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %67
  %79 = load i64, i64* @V4L2_STD_PAL, align 8
  %80 = load %struct.hexium*, %struct.hexium** %9, align 8
  %81 = getelementptr inbounds %struct.hexium, %struct.hexium* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %79, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load %struct.hexium*, %struct.hexium** %9, align 8
  %86 = load i32, i32* @hexium_pal, align 4
  %87 = call i32 @hexium_set_standard(%struct.hexium* %85, i32 %86)
  store i32 0, i32* %4, align 4
  br label %165

88:                                               ; preds = %78, %67
  %89 = load %struct.hexium*, %struct.hexium** %9, align 8
  %90 = getelementptr inbounds %struct.hexium, %struct.hexium* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp eq i32 0, %91
  br i1 %92, label %93, label %103

93:                                               ; preds = %88
  %94 = load i64, i64* @V4L2_STD_NTSC, align 8
  %95 = load %struct.hexium*, %struct.hexium** %9, align 8
  %96 = getelementptr inbounds %struct.hexium, %struct.hexium* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %94, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %93
  %100 = load %struct.hexium*, %struct.hexium** %9, align 8
  %101 = load i32, i32* @hexium_ntsc, align 4
  %102 = call i32 @hexium_set_standard(%struct.hexium* %100, i32 %101)
  store i32 0, i32* %4, align 4
  br label %165

103:                                              ; preds = %93, %88
  %104 = load %struct.hexium*, %struct.hexium** %9, align 8
  %105 = getelementptr inbounds %struct.hexium, %struct.hexium* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp eq i32 0, %106
  br i1 %107, label %108, label %118

108:                                              ; preds = %103
  %109 = load i64, i64* @V4L2_STD_SECAM, align 8
  %110 = load %struct.hexium*, %struct.hexium** %9, align 8
  %111 = getelementptr inbounds %struct.hexium, %struct.hexium* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %109, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %108
  %115 = load %struct.hexium*, %struct.hexium** %9, align 8
  %116 = load i32, i32* @hexium_secam, align 4
  %117 = call i32 @hexium_set_standard(%struct.hexium* %115, i32 %116)
  store i32 0, i32* %4, align 4
  br label %165

118:                                              ; preds = %108, %103
  %119 = load %struct.hexium*, %struct.hexium** %9, align 8
  %120 = getelementptr inbounds %struct.hexium, %struct.hexium* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp eq i32 1, %121
  br i1 %122, label %123, label %133

123:                                              ; preds = %118
  %124 = load i64, i64* @V4L2_STD_PAL, align 8
  %125 = load %struct.hexium*, %struct.hexium** %9, align 8
  %126 = getelementptr inbounds %struct.hexium, %struct.hexium* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp eq i64 %124, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %123
  %130 = load %struct.hexium*, %struct.hexium** %9, align 8
  %131 = load i32, i32* @hexium_pal_bw, align 4
  %132 = call i32 @hexium_set_standard(%struct.hexium* %130, i32 %131)
  store i32 0, i32* %4, align 4
  br label %165

133:                                              ; preds = %123, %118
  %134 = load %struct.hexium*, %struct.hexium** %9, align 8
  %135 = getelementptr inbounds %struct.hexium, %struct.hexium* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp eq i32 1, %136
  br i1 %137, label %138, label %148

138:                                              ; preds = %133
  %139 = load i64, i64* @V4L2_STD_NTSC, align 8
  %140 = load %struct.hexium*, %struct.hexium** %9, align 8
  %141 = getelementptr inbounds %struct.hexium, %struct.hexium* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp eq i64 %139, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %138
  %145 = load %struct.hexium*, %struct.hexium** %9, align 8
  %146 = load i32, i32* @hexium_ntsc_bw, align 4
  %147 = call i32 @hexium_set_standard(%struct.hexium* %145, i32 %146)
  store i32 0, i32* %4, align 4
  br label %165

148:                                              ; preds = %138, %133
  %149 = load %struct.hexium*, %struct.hexium** %9, align 8
  %150 = getelementptr inbounds %struct.hexium, %struct.hexium* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp eq i32 1, %151
  br i1 %152, label %153, label %162

153:                                              ; preds = %148
  %154 = load i64, i64* @V4L2_STD_SECAM, align 8
  %155 = load %struct.hexium*, %struct.hexium** %9, align 8
  %156 = getelementptr inbounds %struct.hexium, %struct.hexium* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = icmp eq i64 %154, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %153
  %160 = load i32, i32* @EINVAL, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %4, align 4
  br label %165

162:                                              ; preds = %153, %148
  %163 = load i32, i32* @EINVAL, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %4, align 4
  br label %165

165:                                              ; preds = %162, %159, %144, %129, %114, %99, %84, %43
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

declare dso_local i32 @DEB_D(i8*) #1

declare dso_local i32 @hexium_set_standard(%struct.hexium*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
