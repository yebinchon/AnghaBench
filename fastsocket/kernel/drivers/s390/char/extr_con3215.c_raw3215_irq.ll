; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_con3215.c_raw3215_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_con3215.c_raw3215_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32 }
%struct.irb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.raw3215_info = type { i8*, i32, i32, i32, i32, i32*, i32*, %struct.tty_struct* }
%struct.tty_struct = type { i32 }
%struct.raw3215_req = type { i32, i32, i32, %struct.raw3215_info* }

@RAW3215_READ = common dso_local global i32 0, align 4
@CTRLCHAR_MASK = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\AAn\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"^n\00", align 1
@RAW3215_WRITE = common dso_local global i32 0, align 4
@RAW3215_WORKING = common dso_local global i32 0, align 4
@RAW3215_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*, i64, %struct.irb*)* @raw3215_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raw3215_irq(%struct.ccw_device* %0, i64 %1, %struct.irb* %2) #0 {
  %4 = alloca %struct.ccw_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.irb*, align 8
  %7 = alloca %struct.raw3215_info*, align 8
  %8 = alloca %struct.raw3215_req*, align 8
  %9 = alloca %struct.tty_struct*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.irb* %2, %struct.irb** %6, align 8
  %14 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %15 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %14, i32 0, i32 0
  %16 = call %struct.raw3215_info* @dev_get_drvdata(i32* %15)
  store %struct.raw3215_info* %16, %struct.raw3215_info** %7, align 8
  %17 = load i64, i64* %5, align 8
  %18 = inttoptr i64 %17 to %struct.raw3215_req*
  store %struct.raw3215_req* %18, %struct.raw3215_req** %8, align 8
  %19 = load %struct.irb*, %struct.irb** %6, align 8
  %20 = getelementptr inbounds %struct.irb, %struct.irb* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  %24 = load %struct.irb*, %struct.irb** %6, align 8
  %25 = getelementptr inbounds %struct.irb, %struct.irb* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load %struct.raw3215_info*, %struct.raw3215_info** %7, align 8
  %33 = call i32 @raw3215_next_io(%struct.raw3215_info* %32)
  br label %34

34:                                               ; preds = %31, %3
  %35 = load i32, i32* %11, align 4
  %36 = and i32 %35, 1
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* %11, align 4
  %40 = and i32 %39, -2
  store i32 %40, i32* %11, align 4
  br label %41

41:                                               ; preds = %38, %34
  %42 = load i32, i32* %11, align 4
  switch i32 %42, label %227 [
    i32 128, label %43
    i32 8, label %52
    i32 12, label %52
    i32 4, label %77
  ]

43:                                               ; preds = %41
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %269

47:                                               ; preds = %43
  %48 = load %struct.raw3215_info*, %struct.raw3215_info** %7, align 8
  %49 = call i32 @raw3215_mk_read_req(%struct.raw3215_info* %48)
  %50 = load %struct.raw3215_info*, %struct.raw3215_info** %7, align 8
  %51 = call i32 @raw3215_next_io(%struct.raw3215_info* %50)
  br label %269

52:                                               ; preds = %41, %41
  %53 = load %struct.raw3215_req*, %struct.raw3215_req** %8, align 8
  %54 = getelementptr inbounds %struct.raw3215_req, %struct.raw3215_req* %53, i32 0, i32 3
  %55 = load %struct.raw3215_info*, %struct.raw3215_info** %54, align 8
  store %struct.raw3215_info* %55, %struct.raw3215_info** %7, align 8
  %56 = icmp eq %struct.raw3215_info* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %270

58:                                               ; preds = %52
  %59 = load %struct.raw3215_req*, %struct.raw3215_req** %8, align 8
  %60 = getelementptr inbounds %struct.raw3215_req, %struct.raw3215_req* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @RAW3215_READ, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %58
  %65 = load %struct.irb*, %struct.irb** %6, align 8
  %66 = getelementptr inbounds %struct.irb, %struct.irb* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.raw3215_req*, %struct.raw3215_req** %8, align 8
  %71 = getelementptr inbounds %struct.raw3215_req, %struct.raw3215_req* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  br label %72

72:                                               ; preds = %64, %58
  %73 = load i32, i32* %11, align 4
  %74 = icmp eq i32 %73, 8
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  br label %269

76:                                               ; preds = %72
  br label %77

77:                                               ; preds = %41, %76
  %78 = load %struct.raw3215_req*, %struct.raw3215_req** %8, align 8
  %79 = getelementptr inbounds %struct.raw3215_req, %struct.raw3215_req* %78, i32 0, i32 3
  %80 = load %struct.raw3215_info*, %struct.raw3215_info** %79, align 8
  store %struct.raw3215_info* %80, %struct.raw3215_info** %7, align 8
  %81 = icmp eq %struct.raw3215_info* %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %270

83:                                               ; preds = %77
  %84 = load %struct.raw3215_req*, %struct.raw3215_req** %8, align 8
  %85 = getelementptr inbounds %struct.raw3215_req, %struct.raw3215_req* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @RAW3215_READ, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %175

89:                                               ; preds = %83
  %90 = load %struct.raw3215_info*, %struct.raw3215_info** %7, align 8
  %91 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %90, i32 0, i32 7
  %92 = load %struct.tty_struct*, %struct.tty_struct** %91, align 8
  %93 = icmp ne %struct.tty_struct* %92, null
  br i1 %93, label %94, label %175

94:                                               ; preds = %89
  %95 = load %struct.raw3215_info*, %struct.raw3215_info** %7, align 8
  %96 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %95, i32 0, i32 7
  %97 = load %struct.tty_struct*, %struct.tty_struct** %96, align 8
  store %struct.tty_struct* %97, %struct.tty_struct** %9, align 8
  %98 = load %struct.raw3215_req*, %struct.raw3215_req** %8, align 8
  %99 = getelementptr inbounds %struct.raw3215_req, %struct.raw3215_req* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = sub nsw i32 160, %100
  store i32 %101, i32* %12, align 4
  %102 = load %struct.raw3215_info*, %struct.raw3215_info** %7, align 8
  %103 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @EBCASC(i8* %104, i32 %105)
  %107 = load %struct.raw3215_info*, %struct.raw3215_info** %7, align 8
  %108 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = load i32, i32* %12, align 4
  %111 = load %struct.tty_struct*, %struct.tty_struct** %9, align 8
  %112 = call i32 @ctrlchar_handle(i8* %109, i32 %110, %struct.tty_struct* %111)
  store i32 %112, i32* %13, align 4
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* @CTRLCHAR_MASK, align 4
  %115 = and i32 %113, %114
  switch i32 %115, label %174 [
    i32 128, label %116
    i32 130, label %117
    i32 129, label %126
  ]

116:                                              ; preds = %94
  br label %174

117:                                              ; preds = %94
  %118 = load %struct.tty_struct*, %struct.tty_struct** %9, align 8
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* @TTY_NORMAL, align 4
  %121 = call i32 @tty_insert_flip_char(%struct.tty_struct* %118, i32 %119, i32 %120)
  %122 = load %struct.raw3215_info*, %struct.raw3215_info** %7, align 8
  %123 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %122, i32 0, i32 7
  %124 = load %struct.tty_struct*, %struct.tty_struct** %123, align 8
  %125 = call i32 @tty_flip_buffer_push(%struct.tty_struct* %124)
  br label %174

126:                                              ; preds = %94
  %127 = load i32, i32* %12, align 4
  %128 = icmp slt i32 %127, 2
  br i1 %128, label %151, label %129

129:                                              ; preds = %126
  %130 = load %struct.raw3215_info*, %struct.raw3215_info** %7, align 8
  %131 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = load i32, i32* %12, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %132, i64 %134
  %136 = getelementptr inbounds i8, i8* %135, i64 -2
  %137 = ptrtoint i8* %136 to i32
  %138 = call i32 @strncmp(i32 %137, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %160

140:                                              ; preds = %129
  %141 = load %struct.raw3215_info*, %struct.raw3215_info** %7, align 8
  %142 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = load i32, i32* %12, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  %147 = getelementptr inbounds i8, i8* %146, i64 -2
  %148 = ptrtoint i8* %147 to i32
  %149 = call i32 @strncmp(i32 %148, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %160

151:                                              ; preds = %140, %126
  %152 = load %struct.raw3215_info*, %struct.raw3215_info** %7, align 8
  %153 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = load i32, i32* %12, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %154, i64 %156
  store i8 10, i8* %157, align 1
  %158 = load i32, i32* %12, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %12, align 4
  br label %163

160:                                              ; preds = %140, %129
  %161 = load i32, i32* %12, align 4
  %162 = sub nsw i32 %161, 2
  store i32 %162, i32* %12, align 4
  br label %163

163:                                              ; preds = %160, %151
  %164 = load %struct.tty_struct*, %struct.tty_struct** %9, align 8
  %165 = load %struct.raw3215_info*, %struct.raw3215_info** %7, align 8
  %166 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %165, i32 0, i32 0
  %167 = load i8*, i8** %166, align 8
  %168 = load i32, i32* %12, align 4
  %169 = call i32 @tty_insert_flip_string(%struct.tty_struct* %164, i8* %167, i32 %168)
  %170 = load %struct.raw3215_info*, %struct.raw3215_info** %7, align 8
  %171 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %170, i32 0, i32 7
  %172 = load %struct.tty_struct*, %struct.tty_struct** %171, align 8
  %173 = call i32 @tty_flip_buffer_push(%struct.tty_struct* %172)
  br label %174

174:                                              ; preds = %94, %163, %117, %116
  br label %197

175:                                              ; preds = %89, %83
  %176 = load %struct.raw3215_req*, %struct.raw3215_req** %8, align 8
  %177 = getelementptr inbounds %struct.raw3215_req, %struct.raw3215_req* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @RAW3215_WRITE, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %196

181:                                              ; preds = %175
  %182 = load %struct.raw3215_req*, %struct.raw3215_req** %8, align 8
  %183 = getelementptr inbounds %struct.raw3215_req, %struct.raw3215_req* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.raw3215_info*, %struct.raw3215_info** %7, align 8
  %186 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 8
  %188 = sub nsw i32 %187, %184
  store i32 %188, i32* %186, align 8
  %189 = load %struct.raw3215_req*, %struct.raw3215_req** %8, align 8
  %190 = getelementptr inbounds %struct.raw3215_req, %struct.raw3215_req* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.raw3215_info*, %struct.raw3215_info** %7, align 8
  %193 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = sub nsw i32 %194, %191
  store i32 %195, i32* %193, align 4
  br label %196

196:                                              ; preds = %181, %175
  br label %197

197:                                              ; preds = %196, %174
  %198 = load i32, i32* @RAW3215_WORKING, align 4
  %199 = xor i32 %198, -1
  %200 = load %struct.raw3215_info*, %struct.raw3215_info** %7, align 8
  %201 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = and i32 %202, %199
  store i32 %203, i32* %201, align 8
  %204 = load %struct.raw3215_req*, %struct.raw3215_req** %8, align 8
  %205 = call i32 @raw3215_free_req(%struct.raw3215_req* %204)
  %206 = load %struct.raw3215_info*, %struct.raw3215_info** %7, align 8
  %207 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %206, i32 0, i32 4
  %208 = call i32 @waitqueue_active(i32* %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %224

210:                                              ; preds = %197
  %211 = load %struct.raw3215_info*, %struct.raw3215_info** %7, align 8
  %212 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %211, i32 0, i32 6
  %213 = load i32*, i32** %212, align 8
  %214 = icmp eq i32* %213, null
  br i1 %214, label %215, label %224

215:                                              ; preds = %210
  %216 = load %struct.raw3215_info*, %struct.raw3215_info** %7, align 8
  %217 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %216, i32 0, i32 5
  %218 = load i32*, i32** %217, align 8
  %219 = icmp eq i32* %218, null
  br i1 %219, label %220, label %224

220:                                              ; preds = %215
  %221 = load %struct.raw3215_info*, %struct.raw3215_info** %7, align 8
  %222 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %221, i32 0, i32 4
  %223 = call i32 @wake_up_interruptible(i32* %222)
  br label %224

224:                                              ; preds = %220, %215, %210, %197
  %225 = load %struct.raw3215_info*, %struct.raw3215_info** %7, align 8
  %226 = call i32 @raw3215_next_io(%struct.raw3215_info* %225)
  br label %269

227:                                              ; preds = %41
  %228 = load %struct.raw3215_req*, %struct.raw3215_req** %8, align 8
  %229 = icmp ne %struct.raw3215_req* %228, null
  br i1 %229, label %230, label %266

230:                                              ; preds = %227
  %231 = load %struct.raw3215_req*, %struct.raw3215_req** %8, align 8
  %232 = getelementptr inbounds %struct.raw3215_req, %struct.raw3215_req* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @RAW3215_FREE, align 4
  %235 = icmp ne i32 %233, %234
  br i1 %235, label %236, label %266

236:                                              ; preds = %230
  %237 = load %struct.raw3215_req*, %struct.raw3215_req** %8, align 8
  %238 = getelementptr inbounds %struct.raw3215_req, %struct.raw3215_req* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @RAW3215_WRITE, align 4
  %241 = icmp eq i32 %239, %240
  br i1 %241, label %242, label %257

242:                                              ; preds = %236
  %243 = load %struct.raw3215_req*, %struct.raw3215_req** %8, align 8
  %244 = getelementptr inbounds %struct.raw3215_req, %struct.raw3215_req* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.raw3215_info*, %struct.raw3215_info** %7, align 8
  %247 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 8
  %249 = sub nsw i32 %248, %245
  store i32 %249, i32* %247, align 8
  %250 = load %struct.raw3215_req*, %struct.raw3215_req** %8, align 8
  %251 = getelementptr inbounds %struct.raw3215_req, %struct.raw3215_req* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.raw3215_info*, %struct.raw3215_info** %7, align 8
  %254 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 4
  %256 = sub nsw i32 %255, %252
  store i32 %256, i32* %254, align 4
  br label %257

257:                                              ; preds = %242, %236
  %258 = load i32, i32* @RAW3215_WORKING, align 4
  %259 = xor i32 %258, -1
  %260 = load %struct.raw3215_info*, %struct.raw3215_info** %7, align 8
  %261 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 8
  %263 = and i32 %262, %259
  store i32 %263, i32* %261, align 8
  %264 = load %struct.raw3215_req*, %struct.raw3215_req** %8, align 8
  %265 = call i32 @raw3215_free_req(%struct.raw3215_req* %264)
  br label %266

266:                                              ; preds = %257, %230, %227
  %267 = load %struct.raw3215_info*, %struct.raw3215_info** %7, align 8
  %268 = call i32 @raw3215_next_io(%struct.raw3215_info* %267)
  br label %269

269:                                              ; preds = %266, %224, %75, %47, %46
  br label %270

270:                                              ; preds = %269, %82, %57
  ret void
}

declare dso_local %struct.raw3215_info* @dev_get_drvdata(i32*) #1

declare dso_local i32 @raw3215_next_io(%struct.raw3215_info*) #1

declare dso_local i32 @raw3215_mk_read_req(%struct.raw3215_info*) #1

declare dso_local i32 @EBCASC(i8*, i32) #1

declare dso_local i32 @ctrlchar_handle(i8*, i32, %struct.tty_struct*) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_struct*, i32, i32) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_struct*) #1

declare dso_local i32 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @tty_insert_flip_string(%struct.tty_struct*, i8*, i32) #1

declare dso_local i32 @raw3215_free_req(%struct.raw3215_req*) #1

declare dso_local i32 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
