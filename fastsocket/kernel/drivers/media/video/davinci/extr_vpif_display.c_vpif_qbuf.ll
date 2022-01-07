; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_display.c_vpif_qbuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_display.c_vpif_qbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_buffer = type { i64, i64, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.vpif_fh = type { i32*, %struct.channel_obj* }
%struct.channel_obj = type { i64, %struct.common_obj* }
%struct.common_obj = type { %struct.TYPE_8__, i64, i64, i64, i64, i32 (i64, i64, i64, i64)*, %struct.videobuf_buffer*, i64, %struct.videobuf_buffer*, i32, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32, i32, %struct.videobuf_buffer** }
%struct.videobuf_buffer = type { i32, i64, i64, i32, i32, i32 }
%struct.TYPE_6__ = type { i64 }

@VPIF_VIDEO_INDEX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"fh->io_allowed\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid buffer type\0A\00", align 1
@VIDEOBUF_QUEUED = common dso_local global i64 0, align 8
@VIDEOBUF_ACTIVE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"invalid state\0A\00", align 1
@VIDEOBUF_NEEDS_INIT = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_SLICED_VBI_OUTPUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_buffer*)* @vpif_qbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpif_qbuf(%struct.file* %0, i8* %1, %struct.v4l2_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_buffer*, align 8
  %8 = alloca %struct.vpif_fh*, align 8
  %9 = alloca %struct.channel_obj*, align 8
  %10 = alloca %struct.common_obj*, align 8
  %11 = alloca %struct.v4l2_buffer, align 8
  %12 = alloca %struct.videobuf_buffer*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_buffer* %2, %struct.v4l2_buffer** %7, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.vpif_fh*
  store %struct.vpif_fh* %17, %struct.vpif_fh** %8, align 8
  %18 = load %struct.vpif_fh*, %struct.vpif_fh** %8, align 8
  %19 = getelementptr inbounds %struct.vpif_fh, %struct.vpif_fh* %18, i32 0, i32 1
  %20 = load %struct.channel_obj*, %struct.channel_obj** %19, align 8
  store %struct.channel_obj* %20, %struct.channel_obj** %9, align 8
  %21 = load %struct.channel_obj*, %struct.channel_obj** %9, align 8
  %22 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %21, i32 0, i32 1
  %23 = load %struct.common_obj*, %struct.common_obj** %22, align 8
  %24 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  %25 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %23, i64 %24
  store %struct.common_obj* %25, %struct.common_obj** %10, align 8
  %26 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %27 = bitcast %struct.v4l2_buffer* %11 to i8*
  %28 = bitcast %struct.v4l2_buffer* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 32, i1 false)
  store i64 0, i64* %13, align 8
  store i32 0, i32* %15, align 4
  %29 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %30 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %29, i32 0, i32 10
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %11, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %32, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %3
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %239

39:                                               ; preds = %3
  %40 = load %struct.vpif_fh*, %struct.vpif_fh** %8, align 8
  %41 = getelementptr inbounds %struct.vpif_fh, %struct.vpif_fh* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %39
  %48 = call i32 @vpif_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @EACCES, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %239

51:                                               ; preds = %39
  %52 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %53 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %52, i32 0, i32 9
  %54 = call i32 @list_empty(i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %79

56:                                               ; preds = %51
  %57 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %58 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %57, i32 0, i32 8
  %59 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %58, align 8
  %60 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %61 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %60, i32 0, i32 6
  %62 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %61, align 8
  %63 = icmp ne %struct.videobuf_buffer* %59, %62
  br i1 %63, label %79, label %64

64:                                               ; preds = %56
  %65 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %66 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %65, i32 0, i32 7
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %64
  %70 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %71 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %70, i32 0, i32 7
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %69
  %75 = load %struct.channel_obj*, %struct.channel_obj** %9, align 8
  %76 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 0, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %74, %64, %56, %51
  %80 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %81 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %80, i32 0, i32 0
  %82 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %83 = call i32 @videobuf_qbuf(%struct.TYPE_8__* %81, %struct.v4l2_buffer* %82)
  store i32 %83, i32* %4, align 4
  br label %239

84:                                               ; preds = %74, %69
  %85 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %86 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = call i32 @mutex_lock(i32* %87)
  %89 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %90 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 3
  %92 = load %struct.videobuf_buffer**, %struct.videobuf_buffer*** %91, align 8
  %93 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %11, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.videobuf_buffer*, %struct.videobuf_buffer** %92, i64 %94
  %96 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %95, align 8
  store %struct.videobuf_buffer* %96, %struct.videobuf_buffer** %12, align 8
  %97 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %12, align 8
  %98 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %11, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %99, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %84
  %104 = call i32 @vpif_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %232

105:                                              ; preds = %84
  %106 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %12, align 8
  %107 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @VIDEOBUF_QUEUED, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %117, label %111

111:                                              ; preds = %105
  %112 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %12, align 8
  %113 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @VIDEOBUF_ACTIVE, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %111, %105
  %118 = call i32 @vpif_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %232

119:                                              ; preds = %111
  %120 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %12, align 8
  %121 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  switch i32 %122, label %163 [
    i32 129, label %123
    i32 128, label %130
  ]

123:                                              ; preds = %119
  %124 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %12, align 8
  %125 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  br label %232

129:                                              ; preds = %123
  br label %164

130:                                              ; preds = %119
  %131 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %11, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %12, align 8
  %134 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 8
  %136 = icmp slt i32 %132, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %130
  br label %232

138:                                              ; preds = %130
  %139 = load i64, i64* @VIDEOBUF_NEEDS_INIT, align 8
  %140 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %12, align 8
  %141 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %139, %142
  br i1 %143, label %144, label %157

144:                                              ; preds = %138
  %145 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %12, align 8
  %146 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 4
  %148 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %11, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %147, %150
  br i1 %151, label %152, label %157

152:                                              ; preds = %144
  %153 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %154 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %153, i32 0, i32 0
  %155 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %12, align 8
  %156 = call i32 @vpif_buffer_release(%struct.TYPE_8__* %154, %struct.videobuf_buffer* %155)
  br label %157

157:                                              ; preds = %152, %144, %138
  %158 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %11, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %12, align 8
  %162 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %161, i32 0, i32 4
  store i32 %160, i32* %162, align 4
  br label %164

163:                                              ; preds = %119
  br label %232

164:                                              ; preds = %157, %129
  %165 = load i64, i64* %14, align 8
  %166 = call i32 @local_irq_save(i64 %165)
  %167 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %168 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %167, i32 0, i32 0
  %169 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %12, align 8
  %170 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %171 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @vpif_buffer_prepare(%struct.TYPE_8__* %168, %struct.videobuf_buffer* %169, i32 %173)
  store i32 %174, i32* %15, align 4
  %175 = load i32, i32* %15, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %164
  %178 = load i64, i64* %14, align 8
  %179 = call i32 @local_irq_restore(i64 %178)
  br label %232

180:                                              ; preds = %164
  %181 = load i64, i64* @VIDEOBUF_ACTIVE, align 8
  %182 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %12, align 8
  %183 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %182, i32 0, i32 1
  store i64 %181, i64* %183, align 8
  %184 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %12, align 8
  %185 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  store i64 %186, i64* %13, align 8
  %187 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %12, align 8
  %188 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %189 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %188, i32 0, i32 6
  store %struct.videobuf_buffer* %187, %struct.videobuf_buffer** %189, align 8
  %190 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %11, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @V4L2_BUF_TYPE_SLICED_VBI_OUTPUT, align 8
  %193 = icmp ne i64 %191, %192
  br i1 %193, label %194, label %219

194:                                              ; preds = %180
  %195 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %196 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %195, i32 0, i32 5
  %197 = load i32 (i64, i64, i64, i64)*, i32 (i64, i64, i64, i64)** %196, align 8
  %198 = load i64, i64* %13, align 8
  %199 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %200 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %199, i32 0, i32 4
  %201 = load i64, i64* %200, align 8
  %202 = add i64 %198, %201
  %203 = load i64, i64* %13, align 8
  %204 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %205 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %204, i32 0, i32 3
  %206 = load i64, i64* %205, align 8
  %207 = add i64 %203, %206
  %208 = load i64, i64* %13, align 8
  %209 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %210 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = add i64 %208, %211
  %213 = load i64, i64* %13, align 8
  %214 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %215 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = add i64 %213, %216
  %218 = call i32 %197(i64 %202, i64 %207, i64 %212, i64 %217)
  br label %219

219:                                              ; preds = %194, %180
  %220 = load i64, i64* %14, align 8
  %221 = call i32 @local_irq_restore(i64 %220)
  %222 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %12, align 8
  %223 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %222, i32 0, i32 3
  %224 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %225 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 1
  %227 = call i32 @list_add_tail(i32* %223, i32* %226)
  %228 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %229 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 0
  %231 = call i32 @mutex_unlock(i32* %230)
  store i32 0, i32* %4, align 4
  br label %239

232:                                              ; preds = %177, %163, %137, %128, %117, %103
  %233 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %234 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 0
  %236 = call i32 @mutex_unlock(i32* %235)
  %237 = load i32, i32* @EINVAL, align 4
  %238 = sub nsw i32 0, %237
  store i32 %238, i32* %4, align 4
  br label %239

239:                                              ; preds = %232, %219, %79, %47, %36
  %240 = load i32, i32* %4, align 4
  ret i32 %240
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @vpif_err(i8*) #2

declare dso_local i32 @list_empty(i32*) #2

declare dso_local i32 @videobuf_qbuf(%struct.TYPE_8__*, %struct.v4l2_buffer*) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @vpif_buffer_release(%struct.TYPE_8__*, %struct.videobuf_buffer*) #2

declare dso_local i32 @local_irq_save(i64) #2

declare dso_local i32 @vpif_buffer_prepare(%struct.TYPE_8__*, %struct.videobuf_buffer*, i32) #2

declare dso_local i32 @local_irq_restore(i64) #2

declare dso_local i32 @list_add_tail(i32*, i32*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
