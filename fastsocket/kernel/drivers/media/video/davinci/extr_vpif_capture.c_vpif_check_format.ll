; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_capture.c_vpif_check_format.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_capture.c_vpif_check_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32* }
%struct.channel_obj = type { i64, %struct.vpif_params, %struct.common_obj* }
%struct.vpif_params = type { %struct.TYPE_7__, %struct.TYPE_11__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.common_obj = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.v4l2_pix_format = type { i32, i64, i32, i32, i32, i32 }

@VPIF_VIDEO_INDEX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"vpif_check_format\0A\00", align 1
@VPIF_IF_RAW_BAYER = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_SBGGR8 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"invalid pix format\0A\00", align 1
@V4L2_PIX_FMT_YUV422P = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"invalid pixel format\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"invalid field format\0A\00", align 1
@V4L2_FIELD_ANY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"invalid hpitch\0A\00", align 1
@V4L2_MEMORY_USERPTR = common dso_local global i64 0, align 8
@config_params = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [16 x i8] c"Invalid vpitch\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"invalid pitch alignment\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.channel_obj*, %struct.v4l2_pix_format*, i32)* @vpif_check_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpif_check_format(%struct.channel_obj* %0, %struct.v4l2_pix_format* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.channel_obj*, align 8
  %6 = alloca %struct.v4l2_pix_format*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.common_obj*, align 8
  %9 = alloca %struct.vpif_params*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.channel_obj* %0, %struct.channel_obj** %5, align 8
  store %struct.v4l2_pix_format* %1, %struct.v4l2_pix_format** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.channel_obj*, %struct.channel_obj** %5, align 8
  %16 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %15, i32 0, i32 2
  %17 = load %struct.common_obj*, %struct.common_obj** %16, align 8
  %18 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  %19 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %17, i64 %18
  store %struct.common_obj* %19, %struct.common_obj** %8, align 8
  %20 = load %struct.channel_obj*, %struct.channel_obj** %5, align 8
  %21 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %20, i32 0, i32 1
  store %struct.vpif_params* %21, %struct.vpif_params** %9, align 8
  %22 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %23 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* @debug, align 4
  %28 = call i32 @vpif_dbg(i32 2, i32 %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.vpif_params*, %struct.vpif_params** %9, align 8
  %30 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @VPIF_IF_RAW_BAYER, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %3
  %36 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %37 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @V4L2_PIX_FMT_SBGGR8, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %35
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* @debug, align 4
  %46 = call i32 @vpif_dbg(i32 2, i32 %45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %197

47:                                               ; preds = %41
  %48 = load i64, i64* @V4L2_PIX_FMT_SBGGR8, align 8
  %49 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %50 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %47, %35
  br label %69

52:                                               ; preds = %3
  %53 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %54 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @V4L2_PIX_FMT_YUV422P, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %52
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* @debug, align 4
  %63 = call i32 @vpif_dbg(i32 2, i32 %62, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %197

64:                                               ; preds = %58
  %65 = load i64, i64* @V4L2_PIX_FMT_YUV422P, align 8
  %66 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %67 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  br label %68

68:                                               ; preds = %64, %52
  br label %69

69:                                               ; preds = %68, %51
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @VPIF_VALID_FIELD(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %83, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* @debug, align 4
  %78 = call i32 @vpif_dbg(i32 2, i32 %77, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %197

79:                                               ; preds = %73
  %80 = load %struct.vpif_params*, %struct.vpif_params** %9, align 8
  %81 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %80, i32 0, i32 1
  %82 = call i32 @vpif_get_default_field(%struct.TYPE_11__* %81)
  store i32 %82, i32* %10, align 4
  br label %92

83:                                               ; preds = %69
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @V4L2_FIELD_ANY, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load %struct.vpif_params*, %struct.vpif_params** %9, align 8
  %89 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %88, i32 0, i32 1
  %90 = call i32 @vpif_get_default_field(%struct.TYPE_11__* %89)
  store i32 %90, i32* %10, align 4
  br label %91

91:                                               ; preds = %87, %83
  br label %92

92:                                               ; preds = %91, %79
  %93 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %94 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  %97 = load %struct.vpif_params*, %struct.vpif_params** %9, align 8
  %98 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp slt i32 %96, %100
  br i1 %101, label %102, label %113

102:                                              ; preds = %92
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* @debug, align 4
  %107 = call i32 @vpif_dbg(i32 2, i32 %106, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %197

108:                                              ; preds = %102
  %109 = load %struct.vpif_params*, %struct.vpif_params** %9, align 8
  %110 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  store i32 %112, i32* %12, align 4
  br label %113

113:                                              ; preds = %108, %92
  %114 = load i64, i64* @V4L2_MEMORY_USERPTR, align 8
  %115 = load %struct.common_obj*, %struct.common_obj** %8, align 8
  %116 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp eq i64 %114, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %113
  %120 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %121 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %11, align 4
  br label %130

123:                                              ; preds = %113
  %124 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @config_params, i32 0, i32 0), align 8
  %125 = load %struct.channel_obj*, %struct.channel_obj** %5, align 8
  %126 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds i32, i32* %124, i64 %127
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %11, align 4
  br label %130

130:                                              ; preds = %123, %119
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* %12, align 4
  %133 = mul nsw i32 %132, 2
  %134 = sdiv i32 %131, %133
  store i32 %134, i32* %13, align 4
  %135 = load i32, i32* %13, align 4
  %136 = load %struct.vpif_params*, %struct.vpif_params** %9, align 8
  %137 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = icmp slt i32 %135, %139
  br i1 %140, label %141, label %152

141:                                              ; preds = %130
  %142 = load i32, i32* %7, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %141
  %145 = load i32, i32* @debug, align 4
  %146 = call i32 @vpif_dbg(i32 2, i32 %145, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %197

147:                                              ; preds = %141
  %148 = load %struct.vpif_params*, %struct.vpif_params** %9, align 8
  %149 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  store i32 %151, i32* %13, align 4
  br label %152

152:                                              ; preds = %147, %130
  %153 = load i32, i32* %12, align 4
  %154 = call i32 @ALIGN(i32 %153, i32 8)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %167, label %156

156:                                              ; preds = %152
  %157 = load i32, i32* %7, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %156
  %160 = load i32, i32* @debug, align 4
  %161 = call i32 @vpif_dbg(i32 2, i32 %160, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %197

162:                                              ; preds = %156
  %163 = load i32, i32* %12, align 4
  %164 = add nsw i32 %163, 7
  %165 = sdiv i32 %164, 8
  %166 = mul nsw i32 %165, 8
  store i32 %166, i32* %12, align 4
  br label %167

167:                                              ; preds = %162, %152
  %168 = load i32, i32* %7, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %180

170:                                              ; preds = %167
  %171 = load i32, i32* %12, align 4
  %172 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %173 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %172, i32 0, i32 2
  store i32 %171, i32* %173, align 8
  %174 = load i32, i32* %12, align 4
  %175 = load i32, i32* %13, align 4
  %176 = mul nsw i32 %174, %175
  %177 = mul nsw i32 %176, 2
  %178 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %179 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %178, i32 0, i32 3
  store i32 %177, i32* %179, align 4
  br label %180

180:                                              ; preds = %170, %167
  %181 = load %struct.common_obj*, %struct.common_obj** %8, align 8
  %182 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %188 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %187, i32 0, i32 5
  store i32 %186, i32* %188, align 4
  %189 = load %struct.common_obj*, %struct.common_obj** %8, align 8
  %190 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %196 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %195, i32 0, i32 4
  store i32 %194, i32* %196, align 8
  store i32 0, i32* %4, align 4
  br label %199

197:                                              ; preds = %159, %144, %105, %76, %61, %44
  %198 = load i32, i32* %14, align 4
  store i32 %198, i32* %4, align 4
  br label %199

199:                                              ; preds = %197, %180
  %200 = load i32, i32* %4, align 4
  ret i32 %200
}

declare dso_local i32 @vpif_dbg(i32, i32, i8*) #1

declare dso_local i32 @VPIF_VALID_FIELD(i32) #1

declare dso_local i32 @vpif_get_default_field(%struct.TYPE_11__*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
