; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_raw1394.c_handle_async_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_raw1394.c_handle_async_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_info = type { i32, i32, i32 }
%struct.pending_request = type { %struct.TYPE_2__, i32, %struct.hpsb_packet*, i32* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i8*, i32, i32 }
%struct.hpsb_packet = type { i32, i32*, i32* }

@.str = private unnamed_addr constant [20 x i8] c"read_request called\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"write_request called\00", align 1
@RAW1394_ERROR_MEMFAULT = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"stream_request called\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"lock_request called\00", align 1
@EXTCODE_FETCH_ADD = common dso_local global i32 0, align 4
@EXTCODE_LITTLE_ADD = common dso_local global i32 0, align 4
@RAW1394_ERROR_INVALID_ARG = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"lock64_request called\00", align 1
@RAW1394_ERROR_STATE_ORDER = common dso_local global i8* null, align 8
@queue_complete_cb = common dso_local global i64 0, align 8
@RAW1394_ERROR_SEND_ERROR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file_info*, %struct.pending_request*, i32)* @handle_async_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_async_request(%struct.file_info* %0, %struct.pending_request* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file_info*, align 8
  %6 = alloca %struct.pending_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.hpsb_packet*, align 8
  %10 = alloca i32, align 4
  store %struct.file_info* %0, %struct.file_info** %5, align 8
  store %struct.pending_request* %1, %struct.pending_request** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.hpsb_packet* null, %struct.hpsb_packet** %9, align 8
  %11 = load %struct.pending_request*, %struct.pending_request** %6, align 8
  %12 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = and i64 %15, 281474976710655
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %10, align 4
  %18 = load %struct.pending_request*, %struct.pending_request** %6, align 8
  %19 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %349 [
    i32 132, label %22
    i32 130, label %59
    i32 131, label %129
    i32 129, label %181
    i32 128, label %265
  ]

22:                                               ; preds = %3
  %23 = call i32 @DBGMSG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.file_info*, %struct.file_info** %5, align 8
  %25 = getelementptr inbounds %struct.file_info, %struct.file_info* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.pending_request*, %struct.pending_request** %6, align 8
  %30 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.hpsb_packet* @hpsb_make_readpacket(i32 %26, i32 %27, i32 %28, i32 %32)
  store %struct.hpsb_packet* %33, %struct.hpsb_packet** %9, align 8
  %34 = load %struct.hpsb_packet*, %struct.hpsb_packet** %9, align 8
  %35 = icmp ne %struct.hpsb_packet* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %22
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %410

39:                                               ; preds = %22
  %40 = load %struct.pending_request*, %struct.pending_request** %6, align 8
  %41 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 4
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load %struct.hpsb_packet*, %struct.hpsb_packet** %9, align 8
  %47 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 3
  %50 = load %struct.pending_request*, %struct.pending_request** %6, align 8
  %51 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %50, i32 0, i32 3
  store i32* %49, i32** %51, align 8
  br label %58

52:                                               ; preds = %39
  %53 = load %struct.hpsb_packet*, %struct.hpsb_packet** %9, align 8
  %54 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.pending_request*, %struct.pending_request** %6, align 8
  %57 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %56, i32 0, i32 3
  store i32* %55, i32** %57, align 8
  br label %58

58:                                               ; preds = %52, %45
  br label %354

59:                                               ; preds = %3
  %60 = call i32 @DBGMSG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %61 = load %struct.file_info*, %struct.file_info** %5, align 8
  %62 = getelementptr inbounds %struct.file_info, %struct.file_info* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.pending_request*, %struct.pending_request** %6, align 8
  %67 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call %struct.hpsb_packet* @hpsb_make_writepacket(i32 %63, i32 %64, i32 %65, i32* null, i32 %69)
  store %struct.hpsb_packet* %70, %struct.hpsb_packet** %9, align 8
  %71 = load %struct.hpsb_packet*, %struct.hpsb_packet** %9, align 8
  %72 = icmp ne %struct.hpsb_packet* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %59
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %410

76:                                               ; preds = %59
  %77 = load %struct.pending_request*, %struct.pending_request** %6, align 8
  %78 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = icmp eq i32 %80, 4
  br i1 %81, label %82, label %104

82:                                               ; preds = %76
  %83 = load %struct.hpsb_packet*, %struct.hpsb_packet** %9, align 8
  %84 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 3
  %87 = load %struct.pending_request*, %struct.pending_request** %6, align 8
  %88 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @int2ptr(i32 %90)
  %92 = load %struct.pending_request*, %struct.pending_request** %6, align 8
  %93 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @copy_from_user(i32* %86, i32 %91, i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %82
  %99 = load i8*, i8** @RAW1394_ERROR_MEMFAULT, align 8
  %100 = load %struct.pending_request*, %struct.pending_request** %6, align 8
  %101 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 4
  store i8* %99, i8** %102, align 8
  br label %103

103:                                              ; preds = %98, %82
  br label %125

104:                                              ; preds = %76
  %105 = load %struct.hpsb_packet*, %struct.hpsb_packet** %9, align 8
  %106 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load %struct.pending_request*, %struct.pending_request** %6, align 8
  %109 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @int2ptr(i32 %111)
  %113 = load %struct.pending_request*, %struct.pending_request** %6, align 8
  %114 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @copy_from_user(i32* %107, i32 %112, i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %104
  %120 = load i8*, i8** @RAW1394_ERROR_MEMFAULT, align 8
  %121 = load %struct.pending_request*, %struct.pending_request** %6, align 8
  %122 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 4
  store i8* %120, i8** %123, align 8
  br label %124

124:                                              ; preds = %119, %104
  br label %125

125:                                              ; preds = %124, %103
  %126 = load %struct.pending_request*, %struct.pending_request** %6, align 8
  %127 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 2
  store i32 0, i32* %128, align 8
  br label %354

129:                                              ; preds = %3
  %130 = call i32 @DBGMSG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %131 = load %struct.file_info*, %struct.file_info** %5, align 8
  %132 = getelementptr inbounds %struct.file_info, %struct.file_info* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.pending_request*, %struct.pending_request** %6, align 8
  %135 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %7, align 4
  %139 = and i32 %138, 63
  %140 = load %struct.pending_request*, %struct.pending_request** %6, align 8
  %141 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = ashr i32 %143, 16
  %145 = and i32 %144, 3
  %146 = load %struct.pending_request*, %struct.pending_request** %6, align 8
  %147 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = and i32 %149, 15
  %151 = call %struct.hpsb_packet* @hpsb_make_streampacket(i32 %133, i32* null, i32 %137, i32 %139, i32 %145, i32 %150)
  store %struct.hpsb_packet* %151, %struct.hpsb_packet** %9, align 8
  %152 = load %struct.hpsb_packet*, %struct.hpsb_packet** %9, align 8
  %153 = icmp ne %struct.hpsb_packet* %152, null
  br i1 %153, label %157, label %154

154:                                              ; preds = %129
  %155 = load i32, i32* @ENOMEM, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %4, align 4
  br label %410

157:                                              ; preds = %129
  %158 = load %struct.hpsb_packet*, %struct.hpsb_packet** %9, align 8
  %159 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %158, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  %161 = load %struct.pending_request*, %struct.pending_request** %6, align 8
  %162 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 6
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @int2ptr(i32 %164)
  %166 = load %struct.pending_request*, %struct.pending_request** %6, align 8
  %167 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @copy_from_user(i32* %160, i32 %165, i32 %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %157
  %173 = load i8*, i8** @RAW1394_ERROR_MEMFAULT, align 8
  %174 = load %struct.pending_request*, %struct.pending_request** %6, align 8
  %175 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 4
  store i8* %173, i8** %176, align 8
  br label %177

177:                                              ; preds = %172, %157
  %178 = load %struct.pending_request*, %struct.pending_request** %6, align 8
  %179 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 2
  store i32 0, i32* %180, align 8
  br label %354

181:                                              ; preds = %3
  %182 = call i32 @DBGMSG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %183 = load %struct.pending_request*, %struct.pending_request** %6, align 8
  %184 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @EXTCODE_FETCH_ADD, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %196, label %189

189:                                              ; preds = %181
  %190 = load %struct.pending_request*, %struct.pending_request** %6, align 8
  %191 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @EXTCODE_LITTLE_ADD, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %208

196:                                              ; preds = %189, %181
  %197 = load %struct.pending_request*, %struct.pending_request** %6, align 8
  %198 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = icmp ne i32 %200, 4
  br i1 %201, label %202, label %207

202:                                              ; preds = %196
  %203 = load i8*, i8** @RAW1394_ERROR_INVALID_ARG, align 8
  %204 = load %struct.pending_request*, %struct.pending_request** %6, align 8
  %205 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 4
  store i8* %203, i8** %206, align 8
  br label %354

207:                                              ; preds = %196
  br label %220

208:                                              ; preds = %189
  %209 = load %struct.pending_request*, %struct.pending_request** %6, align 8
  %210 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = icmp ne i32 %212, 8
  br i1 %213, label %214, label %219

214:                                              ; preds = %208
  %215 = load i8*, i8** @RAW1394_ERROR_INVALID_ARG, align 8
  %216 = load %struct.pending_request*, %struct.pending_request** %6, align 8
  %217 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 4
  store i8* %215, i8** %218, align 8
  br label %354

219:                                              ; preds = %208
  br label %220

220:                                              ; preds = %219, %207
  %221 = load %struct.file_info*, %struct.file_info** %5, align 8
  %222 = getelementptr inbounds %struct.file_info, %struct.file_info* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* %7, align 4
  %225 = load i32, i32* %10, align 4
  %226 = load %struct.pending_request*, %struct.pending_request** %6, align 8
  %227 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 4
  %230 = call %struct.hpsb_packet* @hpsb_make_lockpacket(i32 %223, i32 %224, i32 %225, i32 %229, i32* null, i32 0)
  store %struct.hpsb_packet* %230, %struct.hpsb_packet** %9, align 8
  %231 = load %struct.hpsb_packet*, %struct.hpsb_packet** %9, align 8
  %232 = icmp ne %struct.hpsb_packet* %231, null
  br i1 %232, label %236, label %233

233:                                              ; preds = %220
  %234 = load i32, i32* @ENOMEM, align 4
  %235 = sub nsw i32 0, %234
  store i32 %235, i32* %4, align 4
  br label %410

236:                                              ; preds = %220
  %237 = load %struct.hpsb_packet*, %struct.hpsb_packet** %9, align 8
  %238 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %237, i32 0, i32 1
  %239 = load i32*, i32** %238, align 8
  %240 = load %struct.pending_request*, %struct.pending_request** %6, align 8
  %241 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %241, i32 0, i32 6
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @int2ptr(i32 %243)
  %245 = load %struct.pending_request*, %struct.pending_request** %6, align 8
  %246 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @copy_from_user(i32* %239, i32 %244, i32 %248)
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %256

251:                                              ; preds = %236
  %252 = load i8*, i8** @RAW1394_ERROR_MEMFAULT, align 8
  %253 = load %struct.pending_request*, %struct.pending_request** %6, align 8
  %254 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %254, i32 0, i32 4
  store i8* %252, i8** %255, align 8
  br label %354

256:                                              ; preds = %236
  %257 = load %struct.hpsb_packet*, %struct.hpsb_packet** %9, align 8
  %258 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %257, i32 0, i32 1
  %259 = load i32*, i32** %258, align 8
  %260 = load %struct.pending_request*, %struct.pending_request** %6, align 8
  %261 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %260, i32 0, i32 3
  store i32* %259, i32** %261, align 8
  %262 = load %struct.pending_request*, %struct.pending_request** %6, align 8
  %263 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %263, i32 0, i32 2
  store i32 4, i32* %264, align 8
  br label %354

265:                                              ; preds = %3
  %266 = call i32 @DBGMSG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %267 = load %struct.pending_request*, %struct.pending_request** %6, align 8
  %268 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* @EXTCODE_FETCH_ADD, align 4
  %272 = icmp eq i32 %270, %271
  br i1 %272, label %280, label %273

273:                                              ; preds = %265
  %274 = load %struct.pending_request*, %struct.pending_request** %6, align 8
  %275 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %275, i32 0, i32 3
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* @EXTCODE_LITTLE_ADD, align 4
  %279 = icmp eq i32 %277, %278
  br i1 %279, label %280, label %292

280:                                              ; preds = %273, %265
  %281 = load %struct.pending_request*, %struct.pending_request** %6, align 8
  %282 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 8
  %285 = icmp ne i32 %284, 8
  br i1 %285, label %286, label %291

286:                                              ; preds = %280
  %287 = load i8*, i8** @RAW1394_ERROR_INVALID_ARG, align 8
  %288 = load %struct.pending_request*, %struct.pending_request** %6, align 8
  %289 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %289, i32 0, i32 4
  store i8* %287, i8** %290, align 8
  br label %354

291:                                              ; preds = %280
  br label %304

292:                                              ; preds = %273
  %293 = load %struct.pending_request*, %struct.pending_request** %6, align 8
  %294 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 8
  %297 = icmp ne i32 %296, 16
  br i1 %297, label %298, label %303

298:                                              ; preds = %292
  %299 = load i8*, i8** @RAW1394_ERROR_INVALID_ARG, align 8
  %300 = load %struct.pending_request*, %struct.pending_request** %6, align 8
  %301 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %301, i32 0, i32 4
  store i8* %299, i8** %302, align 8
  br label %354

303:                                              ; preds = %292
  br label %304

304:                                              ; preds = %303, %291
  %305 = load %struct.file_info*, %struct.file_info** %5, align 8
  %306 = getelementptr inbounds %struct.file_info, %struct.file_info* %305, i32 0, i32 2
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* %7, align 4
  %309 = load i32, i32* %10, align 4
  %310 = load %struct.pending_request*, %struct.pending_request** %6, align 8
  %311 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %311, i32 0, i32 3
  %313 = load i32, i32* %312, align 4
  %314 = call %struct.hpsb_packet* @hpsb_make_lock64packet(i32 %307, i32 %308, i32 %309, i32 %313, i32* null, i32 0)
  store %struct.hpsb_packet* %314, %struct.hpsb_packet** %9, align 8
  %315 = load %struct.hpsb_packet*, %struct.hpsb_packet** %9, align 8
  %316 = icmp ne %struct.hpsb_packet* %315, null
  br i1 %316, label %320, label %317

317:                                              ; preds = %304
  %318 = load i32, i32* @ENOMEM, align 4
  %319 = sub nsw i32 0, %318
  store i32 %319, i32* %4, align 4
  br label %410

320:                                              ; preds = %304
  %321 = load %struct.hpsb_packet*, %struct.hpsb_packet** %9, align 8
  %322 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %321, i32 0, i32 1
  %323 = load i32*, i32** %322, align 8
  %324 = load %struct.pending_request*, %struct.pending_request** %6, align 8
  %325 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %325, i32 0, i32 6
  %327 = load i32, i32* %326, align 4
  %328 = call i32 @int2ptr(i32 %327)
  %329 = load %struct.pending_request*, %struct.pending_request** %6, align 8
  %330 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %330, i32 0, i32 2
  %332 = load i32, i32* %331, align 8
  %333 = call i32 @copy_from_user(i32* %323, i32 %328, i32 %332)
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %340

335:                                              ; preds = %320
  %336 = load i8*, i8** @RAW1394_ERROR_MEMFAULT, align 8
  %337 = load %struct.pending_request*, %struct.pending_request** %6, align 8
  %338 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %338, i32 0, i32 4
  store i8* %336, i8** %339, align 8
  br label %354

340:                                              ; preds = %320
  %341 = load %struct.hpsb_packet*, %struct.hpsb_packet** %9, align 8
  %342 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %341, i32 0, i32 1
  %343 = load i32*, i32** %342, align 8
  %344 = load %struct.pending_request*, %struct.pending_request** %6, align 8
  %345 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %344, i32 0, i32 3
  store i32* %343, i32** %345, align 8
  %346 = load %struct.pending_request*, %struct.pending_request** %6, align 8
  %347 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %347, i32 0, i32 2
  store i32 8, i32* %348, align 8
  br label %354

349:                                              ; preds = %3
  %350 = load i8*, i8** @RAW1394_ERROR_STATE_ORDER, align 8
  %351 = load %struct.pending_request*, %struct.pending_request** %6, align 8
  %352 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %351, i32 0, i32 0
  %353 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %352, i32 0, i32 4
  store i8* %350, i8** %353, align 8
  br label %354

354:                                              ; preds = %349, %340, %335, %298, %286, %256, %251, %214, %202, %177, %125, %58
  %355 = load %struct.hpsb_packet*, %struct.hpsb_packet** %9, align 8
  %356 = load %struct.pending_request*, %struct.pending_request** %6, align 8
  %357 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %356, i32 0, i32 2
  store %struct.hpsb_packet* %355, %struct.hpsb_packet** %357, align 8
  %358 = load %struct.pending_request*, %struct.pending_request** %6, align 8
  %359 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %358, i32 0, i32 0
  %360 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %359, i32 0, i32 4
  %361 = load i8*, i8** %360, align 8
  %362 = icmp ne i8* %361, null
  br i1 %362, label %363, label %369

363:                                              ; preds = %354
  %364 = load %struct.pending_request*, %struct.pending_request** %6, align 8
  %365 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %365, i32 0, i32 2
  store i32 0, i32* %366, align 8
  %367 = load %struct.pending_request*, %struct.pending_request** %6, align 8
  %368 = call i32 @queue_complete_req(%struct.pending_request* %367)
  store i32 0, i32* %4, align 4
  br label %410

369:                                              ; preds = %354
  %370 = load %struct.hpsb_packet*, %struct.hpsb_packet** %9, align 8
  %371 = load i64, i64* @queue_complete_cb, align 8
  %372 = inttoptr i64 %371 to void (i8*)*
  %373 = load %struct.pending_request*, %struct.pending_request** %6, align 8
  %374 = call i32 @hpsb_set_packet_complete_task(%struct.hpsb_packet* %370, void (i8*)* %372, %struct.pending_request* %373)
  %375 = load %struct.file_info*, %struct.file_info** %5, align 8
  %376 = getelementptr inbounds %struct.file_info, %struct.file_info* %375, i32 0, i32 0
  %377 = load i64, i64* %8, align 8
  %378 = call i32 @spin_lock_irqsave(i32* %376, i64 %377)
  %379 = load %struct.pending_request*, %struct.pending_request** %6, align 8
  %380 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %379, i32 0, i32 1
  %381 = load %struct.file_info*, %struct.file_info** %5, align 8
  %382 = getelementptr inbounds %struct.file_info, %struct.file_info* %381, i32 0, i32 1
  %383 = call i32 @list_add_tail(i32* %380, i32* %382)
  %384 = load %struct.file_info*, %struct.file_info** %5, align 8
  %385 = getelementptr inbounds %struct.file_info, %struct.file_info* %384, i32 0, i32 0
  %386 = load i64, i64* %8, align 8
  %387 = call i32 @spin_unlock_irqrestore(i32* %385, i64 %386)
  %388 = load %struct.pending_request*, %struct.pending_request** %6, align 8
  %389 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %388, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %389, i32 0, i32 5
  %391 = load i32, i32* %390, align 8
  %392 = load %struct.hpsb_packet*, %struct.hpsb_packet** %9, align 8
  %393 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %392, i32 0, i32 0
  store i32 %391, i32* %393, align 8
  %394 = load %struct.hpsb_packet*, %struct.hpsb_packet** %9, align 8
  %395 = call i64 @hpsb_send_packet(%struct.hpsb_packet* %394)
  %396 = icmp slt i64 %395, 0
  br i1 %396, label %397, label %409

397:                                              ; preds = %369
  %398 = load i8*, i8** @RAW1394_ERROR_SEND_ERROR, align 8
  %399 = load %struct.pending_request*, %struct.pending_request** %6, align 8
  %400 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %399, i32 0, i32 0
  %401 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %400, i32 0, i32 4
  store i8* %398, i8** %401, align 8
  %402 = load %struct.pending_request*, %struct.pending_request** %6, align 8
  %403 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %402, i32 0, i32 0
  %404 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %403, i32 0, i32 2
  store i32 0, i32* %404, align 8
  %405 = load %struct.hpsb_packet*, %struct.hpsb_packet** %9, align 8
  %406 = call i32 @hpsb_free_tlabel(%struct.hpsb_packet* %405)
  %407 = load %struct.pending_request*, %struct.pending_request** %6, align 8
  %408 = call i32 @queue_complete_req(%struct.pending_request* %407)
  br label %409

409:                                              ; preds = %397, %369
  store i32 0, i32* %4, align 4
  br label %410

410:                                              ; preds = %409, %363, %317, %233, %154, %73, %36
  %411 = load i32, i32* %4, align 4
  ret i32 %411
}

declare dso_local i32 @DBGMSG(i8*) #1

declare dso_local %struct.hpsb_packet* @hpsb_make_readpacket(i32, i32, i32, i32) #1

declare dso_local %struct.hpsb_packet* @hpsb_make_writepacket(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @copy_from_user(i32*, i32, i32) #1

declare dso_local i32 @int2ptr(i32) #1

declare dso_local %struct.hpsb_packet* @hpsb_make_streampacket(i32, i32*, i32, i32, i32, i32) #1

declare dso_local %struct.hpsb_packet* @hpsb_make_lockpacket(i32, i32, i32, i32, i32*, i32) #1

declare dso_local %struct.hpsb_packet* @hpsb_make_lock64packet(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @queue_complete_req(%struct.pending_request*) #1

declare dso_local i32 @hpsb_set_packet_complete_task(%struct.hpsb_packet*, void (i8*)*, %struct.pending_request*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @hpsb_send_packet(%struct.hpsb_packet*) #1

declare dso_local i32 @hpsb_free_tlabel(%struct.hpsb_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
