; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/au0828/extr_au0828-video.c_au0828_isoc_copy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/au0828/extr_au0828-video.c_au0828_isoc_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au0828_dev = type { i32, i32, i32, i32, i32, i32, i64, i32, i64, %struct.TYPE_3__, %struct.au0828_dmaqueue }
%struct.TYPE_3__ = type { %struct.au0828_buffer*, %struct.au0828_buffer* }
%struct.au0828_buffer = type { i32, i32 }
%struct.au0828_dmaqueue = type { i64 }
%struct.urb = type { i32, i32, i8*, %struct.TYPE_4__*, %struct.au0828_dmaqueue* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@DEV_DISCONNECTED = common dso_local global i32 0, align 4
@DEV_MISCONFIGURED = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"packet bigger than packet size\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Video frame %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"odd\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"even\00", align 1
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.au0828_dev*, %struct.urb*)* @au0828_isoc_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au0828_isoc_copy(%struct.au0828_dev* %0, %struct.urb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.au0828_dev*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca %struct.au0828_buffer*, align 8
  %7 = alloca %struct.au0828_buffer*, align 8
  %8 = alloca %struct.au0828_dmaqueue*, align 8
  %9 = alloca %struct.au0828_dmaqueue*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.au0828_dev* %0, %struct.au0828_dev** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  %21 = load %struct.urb*, %struct.urb** %5, align 8
  %22 = getelementptr inbounds %struct.urb, %struct.urb* %21, i32 0, i32 4
  %23 = load %struct.au0828_dmaqueue*, %struct.au0828_dmaqueue** %22, align 8
  store %struct.au0828_dmaqueue* %23, %struct.au0828_dmaqueue** %8, align 8
  %24 = load %struct.au0828_dev*, %struct.au0828_dev** %4, align 8
  %25 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %24, i32 0, i32 10
  store %struct.au0828_dmaqueue* %25, %struct.au0828_dmaqueue** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i32 0, i32* %13, align 4
  store i32 1, i32* %14, align 4
  %26 = load %struct.au0828_dev*, %struct.au0828_dev** %4, align 8
  %27 = icmp ne %struct.au0828_dev* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %371

29:                                               ; preds = %2
  %30 = load %struct.au0828_dev*, %struct.au0828_dev** %4, align 8
  %31 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @DEV_DISCONNECTED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %29
  %37 = load %struct.au0828_dev*, %struct.au0828_dev** %4, align 8
  %38 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @DEV_MISCONFIGURED, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36, %29
  store i32 0, i32* %3, align 4
  br label %371

44:                                               ; preds = %36
  %45 = load %struct.urb*, %struct.urb** %5, align 8
  %46 = getelementptr inbounds %struct.urb, %struct.urb* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %44
  %50 = load %struct.au0828_dev*, %struct.au0828_dev** %4, align 8
  %51 = load %struct.urb*, %struct.urb** %5, align 8
  %52 = getelementptr inbounds %struct.urb, %struct.urb* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @print_err_status(%struct.au0828_dev* %50, i32 -1, i32 %53)
  %55 = load %struct.urb*, %struct.urb** %5, align 8
  %56 = getelementptr inbounds %struct.urb, %struct.urb* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @ENOENT, align 4
  %59 = sub nsw i32 0, %58
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %371

62:                                               ; preds = %49
  br label %63

63:                                               ; preds = %62, %44
  %64 = load %struct.au0828_dev*, %struct.au0828_dev** %4, align 8
  %65 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %64, i32 0, i32 9
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load %struct.au0828_buffer*, %struct.au0828_buffer** %66, align 8
  store %struct.au0828_buffer* %67, %struct.au0828_buffer** %6, align 8
  %68 = load %struct.au0828_buffer*, %struct.au0828_buffer** %6, align 8
  %69 = icmp ne %struct.au0828_buffer* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load %struct.au0828_buffer*, %struct.au0828_buffer** %6, align 8
  %72 = getelementptr inbounds %struct.au0828_buffer, %struct.au0828_buffer* %71, i32 0, i32 1
  %73 = call i8* @videobuf_to_vmalloc(i32* %72)
  store i8* %73, i8** %10, align 8
  br label %74

74:                                               ; preds = %70, %63
  %75 = load %struct.au0828_dev*, %struct.au0828_dev** %4, align 8
  %76 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %75, i32 0, i32 9
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load %struct.au0828_buffer*, %struct.au0828_buffer** %77, align 8
  store %struct.au0828_buffer* %78, %struct.au0828_buffer** %7, align 8
  %79 = load %struct.au0828_buffer*, %struct.au0828_buffer** %7, align 8
  %80 = icmp ne %struct.au0828_buffer* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %74
  %82 = load %struct.au0828_buffer*, %struct.au0828_buffer** %7, align 8
  %83 = getelementptr inbounds %struct.au0828_buffer, %struct.au0828_buffer* %82, i32 0, i32 1
  %84 = call i8* @videobuf_to_vmalloc(i32* %83)
  store i8* %84, i8** %11, align 8
  br label %85

85:                                               ; preds = %81, %74
  store i32 0, i32* %12, align 4
  br label %86

86:                                               ; preds = %366, %85
  %87 = load i32, i32* %12, align 4
  %88 = load %struct.urb*, %struct.urb** %5, align 8
  %89 = getelementptr inbounds %struct.urb, %struct.urb* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %369

92:                                               ; preds = %86
  %93 = load %struct.urb*, %struct.urb** %5, align 8
  %94 = getelementptr inbounds %struct.urb, %struct.urb* %93, i32 0, i32 3
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %20, align 4
  %101 = load i32, i32* %20, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %121

103:                                              ; preds = %92
  %104 = load %struct.au0828_dev*, %struct.au0828_dev** %4, align 8
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %20, align 4
  %107 = call i32 @print_err_status(%struct.au0828_dev* %104, i32 %105, i32 %106)
  %108 = load %struct.urb*, %struct.urb** %5, align 8
  %109 = getelementptr inbounds %struct.urb, %struct.urb* %108, i32 0, i32 3
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = load i32, i32* %12, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @EPROTO, align 4
  %117 = sub nsw i32 0, %116
  %118 = icmp ne i32 %115, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %103
  br label %366

120:                                              ; preds = %103
  br label %121

121:                                              ; preds = %120, %92
  %122 = load %struct.urb*, %struct.urb** %5, align 8
  %123 = getelementptr inbounds %struct.urb, %struct.urb* %122, i32 0, i32 3
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = load i32, i32* %12, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp sle i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %121
  br label %366

132:                                              ; preds = %121
  %133 = load %struct.urb*, %struct.urb** %5, align 8
  %134 = getelementptr inbounds %struct.urb, %struct.urb* %133, i32 0, i32 3
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = load i32, i32* %12, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.au0828_dev*, %struct.au0828_dev** %4, align 8
  %142 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = icmp sgt i32 %140, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %132
  %146 = call i32 (i8*, ...) @au0828_isocdbg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %366

147:                                              ; preds = %132
  %148 = load %struct.urb*, %struct.urb** %5, align 8
  %149 = getelementptr inbounds %struct.urb, %struct.urb* %148, i32 0, i32 2
  %150 = load i8*, i8** %149, align 8
  %151 = load %struct.urb*, %struct.urb** %5, align 8
  %152 = getelementptr inbounds %struct.urb, %struct.urb* %151, i32 0, i32 3
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = load i32, i32* %12, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %150, i64 %159
  store i8* %160, i8** %15, align 8
  %161 = load i8*, i8** %15, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 0
  %163 = load i8, i8* %162, align 1
  store i8 %163, i8* %16, align 1
  %164 = load %struct.urb*, %struct.urb** %5, align 8
  %165 = getelementptr inbounds %struct.urb, %struct.urb* %164, i32 0, i32 3
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %165, align 8
  %167 = load i32, i32* %12, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = sub nsw i32 %171, 4
  store i32 %172, i32* %13, align 4
  %173 = load i8*, i8** %15, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 4
  store i8* %174, i8** %15, align 8
  %175 = load i8, i8* %16, align 1
  %176 = zext i8 %175 to i32
  %177 = and i32 %176, 128
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %297

179:                                              ; preds = %147
  %180 = load i32, i32* %13, align 4
  %181 = sub nsw i32 %180, 4
  store i32 %181, i32* %13, align 4
  %182 = load i8*, i8** %15, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 4
  store i8* %183, i8** %15, align 8
  %184 = load i8, i8* %16, align 1
  %185 = zext i8 %184 to i32
  %186 = and i32 %185, 64
  %187 = icmp ne i32 %186, 0
  %188 = zext i1 %187 to i64
  %189 = select i1 %187, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %190 = call i32 (i8*, ...) @au0828_isocdbg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %189)
  %191 = load i8, i8* %16, align 1
  %192 = zext i8 %191 to i32
  %193 = and i32 %192, 64
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %260

195:                                              ; preds = %179
  %196 = load %struct.au0828_buffer*, %struct.au0828_buffer** %7, align 8
  %197 = icmp ne %struct.au0828_buffer* %196, null
  br i1 %197, label %198, label %203

198:                                              ; preds = %195
  %199 = load %struct.au0828_dev*, %struct.au0828_dev** %4, align 8
  %200 = load %struct.au0828_dmaqueue*, %struct.au0828_dmaqueue** %9, align 8
  %201 = load %struct.au0828_buffer*, %struct.au0828_buffer** %7, align 8
  %202 = call i32 @vbi_buffer_filled(%struct.au0828_dev* %199, %struct.au0828_dmaqueue* %200, %struct.au0828_buffer* %201)
  br label %203

203:                                              ; preds = %198, %195
  %204 = load %struct.au0828_dmaqueue*, %struct.au0828_dmaqueue** %9, align 8
  %205 = call i32 @vbi_get_next_buf(%struct.au0828_dmaqueue* %204, %struct.au0828_buffer** %7)
  %206 = load %struct.au0828_buffer*, %struct.au0828_buffer** %7, align 8
  %207 = icmp eq %struct.au0828_buffer* %206, null
  br i1 %207, label %208, label %209

208:                                              ; preds = %203
  store i8* null, i8** %11, align 8
  br label %213

209:                                              ; preds = %203
  %210 = load %struct.au0828_buffer*, %struct.au0828_buffer** %7, align 8
  %211 = getelementptr inbounds %struct.au0828_buffer, %struct.au0828_buffer* %210, i32 0, i32 1
  %212 = call i8* @videobuf_to_vmalloc(i32* %211)
  store i8* %212, i8** %11, align 8
  br label %213

213:                                              ; preds = %209, %208
  %214 = load %struct.au0828_buffer*, %struct.au0828_buffer** %6, align 8
  %215 = icmp ne %struct.au0828_buffer* %214, null
  br i1 %215, label %216, label %221

216:                                              ; preds = %213
  %217 = load %struct.au0828_dev*, %struct.au0828_dev** %4, align 8
  %218 = load %struct.au0828_dmaqueue*, %struct.au0828_dmaqueue** %8, align 8
  %219 = load %struct.au0828_buffer*, %struct.au0828_buffer** %6, align 8
  %220 = call i32 @buffer_filled(%struct.au0828_dev* %217, %struct.au0828_dmaqueue* %218, %struct.au0828_buffer* %219)
  br label %221

221:                                              ; preds = %216, %213
  %222 = load %struct.au0828_dmaqueue*, %struct.au0828_dmaqueue** %8, align 8
  %223 = call i32 @get_next_buf(%struct.au0828_dmaqueue* %222, %struct.au0828_buffer** %6)
  %224 = load %struct.au0828_buffer*, %struct.au0828_buffer** %6, align 8
  %225 = icmp eq %struct.au0828_buffer* %224, null
  br i1 %225, label %226, label %227

226:                                              ; preds = %221
  store i8* null, i8** %10, align 8
  br label %231

227:                                              ; preds = %221
  %228 = load %struct.au0828_buffer*, %struct.au0828_buffer** %6, align 8
  %229 = getelementptr inbounds %struct.au0828_buffer, %struct.au0828_buffer* %228, i32 0, i32 1
  %230 = call i8* @videobuf_to_vmalloc(i32* %229)
  store i8* %230, i8** %10, align 8
  br label %231

231:                                              ; preds = %227, %226
  %232 = load %struct.au0828_dev*, %struct.au0828_dev** %4, align 8
  %233 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %232, i32 0, i32 8
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %245

236:                                              ; preds = %231
  %237 = load %struct.au0828_dev*, %struct.au0828_dev** %4, align 8
  %238 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %237, i32 0, i32 7
  %239 = load i64, i64* @jiffies, align 8
  %240 = load i32, i32* @HZ, align 4
  %241 = sdiv i32 %240, 10
  %242 = sext i32 %241 to i64
  %243 = add nsw i64 %239, %242
  %244 = call i32 @mod_timer(i32* %238, i64 %243)
  br label %245

245:                                              ; preds = %236, %231
  %246 = load %struct.au0828_dev*, %struct.au0828_dev** %4, align 8
  %247 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %246, i32 0, i32 6
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %259

250:                                              ; preds = %245
  %251 = load %struct.au0828_dev*, %struct.au0828_dev** %4, align 8
  %252 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %251, i32 0, i32 5
  %253 = load i64, i64* @jiffies, align 8
  %254 = load i32, i32* @HZ, align 4
  %255 = sdiv i32 %254, 10
  %256 = sext i32 %255 to i64
  %257 = add nsw i64 %253, %256
  %258 = call i32 @mod_timer(i32* %252, i64 %257)
  br label %259

259:                                              ; preds = %250, %245
  br label %260

260:                                              ; preds = %259, %179
  %261 = load %struct.au0828_buffer*, %struct.au0828_buffer** %6, align 8
  %262 = icmp ne %struct.au0828_buffer* %261, null
  br i1 %262, label %263, label %275

263:                                              ; preds = %260
  %264 = load i8, i8* %16, align 1
  %265 = zext i8 %264 to i32
  %266 = and i32 %265, 64
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %271

268:                                              ; preds = %263
  %269 = load %struct.au0828_buffer*, %struct.au0828_buffer** %6, align 8
  %270 = getelementptr inbounds %struct.au0828_buffer, %struct.au0828_buffer* %269, i32 0, i32 0
  store i32 1, i32* %270, align 4
  br label %274

271:                                              ; preds = %263
  %272 = load %struct.au0828_buffer*, %struct.au0828_buffer** %6, align 8
  %273 = getelementptr inbounds %struct.au0828_buffer, %struct.au0828_buffer* %272, i32 0, i32 0
  store i32 0, i32* %273, align 4
  br label %274

274:                                              ; preds = %271, %268
  br label %275

275:                                              ; preds = %274, %260
  %276 = load %struct.au0828_buffer*, %struct.au0828_buffer** %7, align 8
  %277 = icmp ne %struct.au0828_buffer* %276, null
  br i1 %277, label %278, label %290

278:                                              ; preds = %275
  %279 = load i8, i8* %16, align 1
  %280 = zext i8 %279 to i32
  %281 = and i32 %280, 64
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %286

283:                                              ; preds = %278
  %284 = load %struct.au0828_buffer*, %struct.au0828_buffer** %7, align 8
  %285 = getelementptr inbounds %struct.au0828_buffer, %struct.au0828_buffer* %284, i32 0, i32 0
  store i32 1, i32* %285, align 4
  br label %289

286:                                              ; preds = %278
  %287 = load %struct.au0828_buffer*, %struct.au0828_buffer** %7, align 8
  %288 = getelementptr inbounds %struct.au0828_buffer, %struct.au0828_buffer* %287, i32 0, i32 0
  store i32 0, i32* %288, align 4
  br label %289

289:                                              ; preds = %286, %283
  br label %290

290:                                              ; preds = %289, %275
  %291 = load %struct.au0828_dev*, %struct.au0828_dev** %4, align 8
  %292 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %291, i32 0, i32 2
  store i32 0, i32* %292, align 8
  %293 = load %struct.au0828_dmaqueue*, %struct.au0828_dmaqueue** %9, align 8
  %294 = getelementptr inbounds %struct.au0828_dmaqueue, %struct.au0828_dmaqueue* %293, i32 0, i32 0
  store i64 0, i64* %294, align 8
  %295 = load %struct.au0828_dmaqueue*, %struct.au0828_dmaqueue** %8, align 8
  %296 = getelementptr inbounds %struct.au0828_dmaqueue, %struct.au0828_dmaqueue* %295, i32 0, i32 0
  store i64 0, i64* %296, align 8
  br label %297

297:                                              ; preds = %290, %147
  %298 = load %struct.au0828_dev*, %struct.au0828_dev** %4, align 8
  %299 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %298, i32 0, i32 3
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.au0828_dev*, %struct.au0828_dev** %4, align 8
  %302 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %301, i32 0, i32 4
  %303 = load i32, i32* %302, align 8
  %304 = mul nsw i32 %300, %303
  %305 = mul nsw i32 %304, 2
  store i32 %305, i32* %17, align 4
  %306 = load %struct.au0828_dev*, %struct.au0828_dev** %4, align 8
  %307 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %306, i32 0, i32 2
  %308 = load i32, i32* %307, align 8
  %309 = load i32, i32* %17, align 4
  %310 = icmp ult i32 %308, %309
  br i1 %310, label %311, label %348

311:                                              ; preds = %297
  %312 = load i32, i32* %17, align 4
  %313 = load %struct.au0828_dev*, %struct.au0828_dev** %4, align 8
  %314 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %313, i32 0, i32 2
  %315 = load i32, i32* %314, align 8
  %316 = sub i32 %312, %315
  store i32 %316, i32* %18, align 4
  %317 = load i32, i32* %13, align 4
  %318 = load i32, i32* %18, align 4
  %319 = icmp ult i32 %317, %318
  br i1 %319, label %320, label %322

320:                                              ; preds = %311
  %321 = load i32, i32* %13, align 4
  store i32 %321, i32* %19, align 4
  br label %324

322:                                              ; preds = %311
  %323 = load i32, i32* %18, align 4
  store i32 %323, i32* %19, align 4
  br label %324

324:                                              ; preds = %322, %320
  %325 = load %struct.au0828_buffer*, %struct.au0828_buffer** %7, align 8
  %326 = icmp ne %struct.au0828_buffer* %325, null
  br i1 %326, label %327, label %335

327:                                              ; preds = %324
  %328 = load %struct.au0828_dev*, %struct.au0828_dev** %4, align 8
  %329 = load %struct.au0828_dmaqueue*, %struct.au0828_dmaqueue** %9, align 8
  %330 = load %struct.au0828_buffer*, %struct.au0828_buffer** %7, align 8
  %331 = load i8*, i8** %15, align 8
  %332 = load i8*, i8** %11, align 8
  %333 = load i32, i32* %13, align 4
  %334 = call i32 @au0828_copy_vbi(%struct.au0828_dev* %328, %struct.au0828_dmaqueue* %329, %struct.au0828_buffer* %330, i8* %331, i8* %332, i32 %333)
  br label %335

335:                                              ; preds = %327, %324
  %336 = load i32, i32* %19, align 4
  %337 = load i32, i32* %13, align 4
  %338 = sub i32 %337, %336
  store i32 %338, i32* %13, align 4
  %339 = load i32, i32* %19, align 4
  %340 = load i8*, i8** %15, align 8
  %341 = zext i32 %339 to i64
  %342 = getelementptr inbounds i8, i8* %340, i64 %341
  store i8* %342, i8** %15, align 8
  %343 = load i32, i32* %19, align 4
  %344 = load %struct.au0828_dev*, %struct.au0828_dev** %4, align 8
  %345 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %344, i32 0, i32 2
  %346 = load i32, i32* %345, align 8
  %347 = add i32 %346, %343
  store i32 %347, i32* %345, align 8
  br label %348

348:                                              ; preds = %335, %297
  %349 = load %struct.au0828_dev*, %struct.au0828_dev** %4, align 8
  %350 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %349, i32 0, i32 2
  %351 = load i32, i32* %350, align 8
  %352 = load i32, i32* %17, align 4
  %353 = icmp uge i32 %351, %352
  br i1 %353, label %354, label %365

354:                                              ; preds = %348
  %355 = load %struct.au0828_buffer*, %struct.au0828_buffer** %6, align 8
  %356 = icmp ne %struct.au0828_buffer* %355, null
  br i1 %356, label %357, label %365

357:                                              ; preds = %354
  %358 = load %struct.au0828_dev*, %struct.au0828_dev** %4, align 8
  %359 = load %struct.au0828_dmaqueue*, %struct.au0828_dmaqueue** %8, align 8
  %360 = load %struct.au0828_buffer*, %struct.au0828_buffer** %6, align 8
  %361 = load i8*, i8** %15, align 8
  %362 = load i8*, i8** %10, align 8
  %363 = load i32, i32* %13, align 4
  %364 = call i32 @au0828_copy_video(%struct.au0828_dev* %358, %struct.au0828_dmaqueue* %359, %struct.au0828_buffer* %360, i8* %361, i8* %362, i32 %363)
  br label %365

365:                                              ; preds = %357, %354, %348
  br label %366

366:                                              ; preds = %365, %145, %131, %119
  %367 = load i32, i32* %12, align 4
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* %12, align 4
  br label %86

369:                                              ; preds = %86
  %370 = load i32, i32* %14, align 4
  store i32 %370, i32* %3, align 4
  br label %371

371:                                              ; preds = %369, %61, %43, %28
  %372 = load i32, i32* %3, align 4
  ret i32 %372
}

declare dso_local i32 @print_err_status(%struct.au0828_dev*, i32, i32) #1

declare dso_local i8* @videobuf_to_vmalloc(i32*) #1

declare dso_local i32 @au0828_isocdbg(i8*, ...) #1

declare dso_local i32 @vbi_buffer_filled(%struct.au0828_dev*, %struct.au0828_dmaqueue*, %struct.au0828_buffer*) #1

declare dso_local i32 @vbi_get_next_buf(%struct.au0828_dmaqueue*, %struct.au0828_buffer**) #1

declare dso_local i32 @buffer_filled(%struct.au0828_dev*, %struct.au0828_dmaqueue*, %struct.au0828_buffer*) #1

declare dso_local i32 @get_next_buf(%struct.au0828_dmaqueue*, %struct.au0828_buffer**) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @au0828_copy_vbi(%struct.au0828_dev*, %struct.au0828_dmaqueue*, %struct.au0828_buffer*, i8*, i8*, i32) #1

declare dso_local i32 @au0828_copy_video(%struct.au0828_dev*, %struct.au0828_dmaqueue*, %struct.au0828_buffer*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
