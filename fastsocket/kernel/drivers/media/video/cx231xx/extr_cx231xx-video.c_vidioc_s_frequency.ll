; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-video.c_vidioc_s_frequency.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-video.c_vidioc_s_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_frequency = type { i32, i64, i64 }
%struct.cx231xx_fh = type { i32, %struct.cx231xx* }
%struct.cx231xx = type { i32, i64, i32 }

@.str = private unnamed_addr constant [54 x i8] c"Enter vidioc_s_frequency()f->frequency=%d;f->type=%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@V4L2_TUNER_ANALOG_TV = common dso_local global i64 0, align 8
@V4L2_TUNER_RADIO = common dso_local global i64 0, align 8
@tuner = common dso_local global i32 0, align 4
@s_frequency = common dso_local global i32 0, align 4
@TUNER_NXP_TDA18271 = common dso_local global i64 0, align 8
@V4L2_STD_MN = common dso_local global i32 0, align 4
@V4L2_STD_NTSC_443 = common dso_local global i32 0, align 4
@V4L2_STD_B = common dso_local global i32 0, align 4
@V4L2_STD_PAL_DK = common dso_local global i32 0, align 4
@V4L2_STD_SECAM_DK = common dso_local global i32 0, align 4
@V4L2_STD_GH = common dso_local global i32 0, align 4
@V4L2_STD_PAL_I = common dso_local global i32 0, align 4
@V4L2_STD_SECAM_L = common dso_local global i32 0, align 4
@V4L2_STD_SECAM_LC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"if_frequency is set to %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Set New FREQUENCY to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frequency*)* @vidioc_s_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_frequency(%struct.file* %0, i8* %1, %struct.v4l2_frequency* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frequency*, align 8
  %8 = alloca %struct.cx231xx_fh*, align 8
  %9 = alloca %struct.cx231xx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frequency* %2, %struct.v4l2_frequency** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.cx231xx_fh*
  store %struct.cx231xx_fh* %13, %struct.cx231xx_fh** %8, align 8
  %14 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %8, align 8
  %15 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %14, i32 0, i32 1
  %16 = load %struct.cx231xx*, %struct.cx231xx** %15, align 8
  store %struct.cx231xx* %16, %struct.cx231xx** %9, align 8
  store i32 5400000, i32* %11, align 4
  %17 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %21 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i32 (i8*, i32, ...) @cx231xx_info(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %19, i64 %22)
  %24 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %25 = call i32 @check_dev(%struct.cx231xx* %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %4, align 4
  br label %176

30:                                               ; preds = %3
  %31 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 0, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %176

38:                                               ; preds = %30
  %39 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %8, align 8
  %40 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 0, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %45 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @V4L2_TUNER_ANALOG_TV, align 8
  %48 = icmp ne i64 %46, %47
  br label %49

49:                                               ; preds = %43, %38
  %50 = phi i1 [ false, %38 ], [ %48, %43 ]
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %176

57:                                               ; preds = %49
  %58 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %8, align 8
  %59 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 1, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %64 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @V4L2_TUNER_RADIO, align 8
  %67 = icmp ne i64 %65, %66
  br label %68

68:                                               ; preds = %62, %57
  %69 = phi i1 [ false, %57 ], [ %67, %62 ]
  %70 = zext i1 %69 to i32
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %176

76:                                               ; preds = %68
  %77 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %78 = call i32 @cx231xx_tuner_pre_channel_change(%struct.cx231xx* %77)
  store i32 %78, i32* %10, align 4
  %79 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %80 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %83 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %85 = load i32, i32* @tuner, align 4
  %86 = load i32, i32* @s_frequency, align 4
  %87 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %88 = call i32 @call_all(%struct.cx231xx* %84, i32 %85, i32 %86, %struct.v4l2_frequency* %87)
  %89 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %90 = call i32 @cx231xx_tuner_post_channel_change(%struct.cx231xx* %89)
  store i32 %90, i32* %10, align 4
  %91 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %92 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @TUNER_NXP_TDA18271, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %170

96:                                               ; preds = %76
  %97 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %98 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @V4L2_STD_MN, align 4
  %101 = load i32, i32* @V4L2_STD_NTSC_443, align 4
  %102 = or i32 %100, %101
  %103 = and i32 %99, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %96
  store i32 5400000, i32* %11, align 4
  br label %162

106:                                              ; preds = %96
  %107 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %108 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @V4L2_STD_B, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  store i32 6000000, i32* %11, align 4
  br label %161

114:                                              ; preds = %106
  %115 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %116 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @V4L2_STD_PAL_DK, align 4
  %119 = load i32, i32* @V4L2_STD_SECAM_DK, align 4
  %120 = or i32 %118, %119
  %121 = and i32 %117, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %114
  store i32 6900000, i32* %11, align 4
  br label %160

124:                                              ; preds = %114
  %125 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %126 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @V4L2_STD_GH, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %124
  store i32 7100000, i32* %11, align 4
  br label %159

132:                                              ; preds = %124
  %133 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %134 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @V4L2_STD_PAL_I, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %132
  store i32 7250000, i32* %11, align 4
  br label %158

140:                                              ; preds = %132
  %141 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %142 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @V4L2_STD_SECAM_L, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %140
  store i32 6900000, i32* %11, align 4
  br label %157

148:                                              ; preds = %140
  %149 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %150 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @V4L2_STD_SECAM_LC, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %148
  store i32 1250000, i32* %11, align 4
  br label %156

156:                                              ; preds = %155, %148
  br label %157

157:                                              ; preds = %156, %147
  br label %158

158:                                              ; preds = %157, %139
  br label %159

159:                                              ; preds = %158, %131
  br label %160

160:                                              ; preds = %159, %123
  br label %161

161:                                              ; preds = %160, %113
  br label %162

162:                                              ; preds = %161, %105
  %163 = load i32, i32* %11, align 4
  %164 = call i32 (i8*, i32, ...) @cx231xx_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %163)
  %165 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %166 = load i32, i32* %11, align 4
  %167 = call i32 @cx231xx_set_Colibri_For_LowIF(%struct.cx231xx* %165, i32 %166, i32 1, i32 1)
  %168 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %169 = call i32 @update_HH_register_after_set_DIF(%struct.cx231xx* %168)
  br label %170

170:                                              ; preds = %162, %76
  %171 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %172 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 (i8*, i32, ...) @cx231xx_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %173)
  %175 = load i32, i32* %10, align 4
  store i32 %175, i32* %4, align 4
  br label %176

176:                                              ; preds = %170, %73, %54, %35, %28
  %177 = load i32, i32* %4, align 4
  ret i32 %177
}

declare dso_local i32 @cx231xx_info(i8*, i32, ...) #1

declare dso_local i32 @check_dev(%struct.cx231xx*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cx231xx_tuner_pre_channel_change(%struct.cx231xx*) #1

declare dso_local i32 @call_all(%struct.cx231xx*, i32, i32, %struct.v4l2_frequency*) #1

declare dso_local i32 @cx231xx_tuner_post_channel_change(%struct.cx231xx*) #1

declare dso_local i32 @cx231xx_set_Colibri_For_LowIF(%struct.cx231xx*, i32, i32, i32) #1

declare dso_local i32 @update_HH_register_after_set_DIF(%struct.cx231xx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
