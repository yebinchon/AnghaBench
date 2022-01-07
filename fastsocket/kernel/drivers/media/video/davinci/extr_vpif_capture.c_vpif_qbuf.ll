; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_capture.c_vpif_qbuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_capture.c_vpif_qbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_buffer = type { i64, i64, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.vpif_fh = type { i32*, %struct.channel_obj* }
%struct.channel_obj = type { i64, %struct.common_obj* }
%struct.common_obj = type { i32, %struct.TYPE_8__, i64, i64, i64, i64, i32 (i64, i64, i64, i64)*, %struct.videobuf_buffer*, i64, %struct.videobuf_buffer*, i32, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32, i32, %struct.videobuf_buffer** }
%struct.videobuf_buffer = type { i64, i32, i64, i32, i32, i32 }
%struct.TYPE_6__ = type { i64 }

@VPIF_VIDEO_INDEX = common dso_local global i64 0, align 8
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"vpif_qbuf\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid buffer type\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"fh io not allowed \0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@VIDEOBUF_QUEUED = common dso_local global i64 0, align 8
@VIDEOBUF_ACTIVE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"invalid state\0A\00", align 1
@VIDEOBUF_NEEDS_INIT = common dso_local global i64 0, align 8
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 24, i1 false)
  store i64 0, i64* %13, align 8
  store i32 0, i32* %15, align 4
  %29 = load i32, i32* @debug, align 4
  %30 = call i32 @vpif_dbg(i32 2, i32 %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %32 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %31, i32 0, i32 11
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %11, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %34, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %3
  %39 = call i32 @vpif_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %236

42:                                               ; preds = %3
  %43 = load %struct.vpif_fh*, %struct.vpif_fh** %8, align 8
  %44 = getelementptr inbounds %struct.vpif_fh, %struct.vpif_fh* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %42
  %51 = call i32 @vpif_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32, i32* @EACCES, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %236

54:                                               ; preds = %42
  %55 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %56 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %55, i32 0, i32 10
  %57 = call i32 @list_empty(i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %82

59:                                               ; preds = %54
  %60 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %61 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %60, i32 0, i32 9
  %62 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %61, align 8
  %63 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %64 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %63, i32 0, i32 7
  %65 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %64, align 8
  %66 = icmp ne %struct.videobuf_buffer* %62, %65
  br i1 %66, label %82, label %67

67:                                               ; preds = %59
  %68 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %69 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %68, i32 0, i32 8
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %67
  %73 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %74 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %73, i32 0, i32 8
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %72
  %78 = load %struct.channel_obj*, %struct.channel_obj** %9, align 8
  %79 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 0, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %77, %67, %59, %54
  %83 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %84 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %83, i32 0, i32 1
  %85 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %86 = call i32 @videobuf_qbuf(%struct.TYPE_8__* %84, %struct.v4l2_buffer* %85)
  store i32 %86, i32* %4, align 4
  br label %236

87:                                               ; preds = %77, %72
  %88 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %89 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = call i32 @mutex_lock(i32* %90)
  %92 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %93 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 3
  %95 = load %struct.videobuf_buffer**, %struct.videobuf_buffer*** %94, align 8
  %96 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %11, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.videobuf_buffer*, %struct.videobuf_buffer** %95, i64 %97
  %99 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %98, align 8
  store %struct.videobuf_buffer* %99, %struct.videobuf_buffer** %12, align 8
  %100 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %12, align 8
  %101 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @VIDEOBUF_QUEUED, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %111, label %105

105:                                              ; preds = %87
  %106 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %12, align 8
  %107 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @VIDEOBUF_ACTIVE, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %105, %87
  %112 = call i32 @vpif_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %229

113:                                              ; preds = %105
  %114 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %12, align 8
  %115 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  switch i32 %116, label %157 [
    i32 129, label %117
    i32 128, label %124
  ]

117:                                              ; preds = %113
  %118 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %12, align 8
  %119 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  br label %229

123:                                              ; preds = %117
  br label %158

124:                                              ; preds = %113
  %125 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %11, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %12, align 8
  %128 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 8
  %130 = icmp slt i32 %126, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %124
  br label %229

132:                                              ; preds = %124
  %133 = load i64, i64* @VIDEOBUF_NEEDS_INIT, align 8
  %134 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %12, align 8
  %135 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %133, %136
  br i1 %137, label %138, label %151

138:                                              ; preds = %132
  %139 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %12, align 8
  %140 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %11, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %141, %144
  br i1 %145, label %146, label %151

146:                                              ; preds = %138
  %147 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %148 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %147, i32 0, i32 1
  %149 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %12, align 8
  %150 = call i32 @vpif_buffer_release(%struct.TYPE_8__* %148, %struct.videobuf_buffer* %149)
  br label %151

151:                                              ; preds = %146, %138, %132
  %152 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %11, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %12, align 8
  %156 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %155, i32 0, i32 4
  store i32 %154, i32* %156, align 4
  br label %158

157:                                              ; preds = %113
  br label %229

158:                                              ; preds = %151, %123
  %159 = load i64, i64* %14, align 8
  %160 = call i32 @local_irq_save(i64 %159)
  %161 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %162 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %161, i32 0, i32 1
  %163 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %12, align 8
  %164 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %165 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @vpif_buffer_prepare(%struct.TYPE_8__* %162, %struct.videobuf_buffer* %163, i32 %167)
  store i32 %168, i32* %15, align 4
  %169 = load i32, i32* %15, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %158
  %172 = load i64, i64* %14, align 8
  %173 = call i32 @local_irq_restore(i64 %172)
  br label %229

174:                                              ; preds = %158
  %175 = load i64, i64* @VIDEOBUF_ACTIVE, align 8
  %176 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %12, align 8
  %177 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %176, i32 0, i32 0
  store i64 %175, i64* %177, align 8
  %178 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %179 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = icmp eq i32 128, %180
  br i1 %181, label %182, label %186

182:                                              ; preds = %174
  %183 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %12, align 8
  %184 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  store i64 %185, i64* %13, align 8
  br label %189

186:                                              ; preds = %174
  %187 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %12, align 8
  %188 = call i64 @videobuf_to_dma_contig(%struct.videobuf_buffer* %187)
  store i64 %188, i64* %13, align 8
  br label %189

189:                                              ; preds = %186, %182
  %190 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %12, align 8
  %191 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %192 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %191, i32 0, i32 7
  store %struct.videobuf_buffer* %190, %struct.videobuf_buffer** %192, align 8
  %193 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %194 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %193, i32 0, i32 6
  %195 = load i32 (i64, i64, i64, i64)*, i32 (i64, i64, i64, i64)** %194, align 8
  %196 = load i64, i64* %13, align 8
  %197 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %198 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %197, i32 0, i32 5
  %199 = load i64, i64* %198, align 8
  %200 = add i64 %196, %199
  %201 = load i64, i64* %13, align 8
  %202 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %203 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %202, i32 0, i32 4
  %204 = load i64, i64* %203, align 8
  %205 = add i64 %201, %204
  %206 = load i64, i64* %13, align 8
  %207 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %208 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %207, i32 0, i32 3
  %209 = load i64, i64* %208, align 8
  %210 = add i64 %206, %209
  %211 = load i64, i64* %13, align 8
  %212 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %213 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %212, i32 0, i32 2
  %214 = load i64, i64* %213, align 8
  %215 = add i64 %211, %214
  %216 = call i32 %195(i64 %200, i64 %205, i64 %210, i64 %215)
  %217 = load i64, i64* %14, align 8
  %218 = call i32 @local_irq_restore(i64 %217)
  %219 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %12, align 8
  %220 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %219, i32 0, i32 3
  %221 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %222 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 1
  %224 = call i32 @list_add_tail(i32* %220, i32* %223)
  %225 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %226 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 0
  %228 = call i32 @mutex_unlock(i32* %227)
  store i32 0, i32* %4, align 4
  br label %236

229:                                              ; preds = %171, %157, %131, %122, %111
  %230 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %231 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 0
  %233 = call i32 @mutex_unlock(i32* %232)
  %234 = load i32, i32* @EINVAL, align 4
  %235 = sub nsw i32 0, %234
  store i32 %235, i32* %4, align 4
  br label %236

236:                                              ; preds = %229, %189, %82, %50, %38
  %237 = load i32, i32* %4, align 4
  ret i32 %237
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @vpif_dbg(i32, i32, i8*) #2

declare dso_local i32 @vpif_err(i8*) #2

declare dso_local i32 @list_empty(i32*) #2

declare dso_local i32 @videobuf_qbuf(%struct.TYPE_8__*, %struct.v4l2_buffer*) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @vpif_buffer_release(%struct.TYPE_8__*, %struct.videobuf_buffer*) #2

declare dso_local i32 @local_irq_save(i64) #2

declare dso_local i32 @vpif_buffer_prepare(%struct.TYPE_8__*, %struct.videobuf_buffer*, i32) #2

declare dso_local i32 @local_irq_restore(i64) #2

declare dso_local i64 @videobuf_to_dma_contig(%struct.videobuf_buffer*) #2

declare dso_local i32 @list_add_tail(i32*, i32*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
