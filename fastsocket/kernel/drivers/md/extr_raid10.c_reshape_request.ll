; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_reshape_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_reshape_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, i32, i64, i64, i64, i32, i32, i32, %struct.r10conf* }
%struct.r10conf = type { i8*, i32, i32, i32, %struct.TYPE_7__*, %struct.TYPE_10__, i32, i64, %struct.TYPE_10__ }
%struct.TYPE_7__ = type { %struct.md_rdev*, %struct.md_rdev* }
%struct.md_rdev = type { i64, i64, i32, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.r10bio = type { i32, i64, i32, i64, i32, %struct.TYPE_9__*, %struct.bio*, %struct.mddev* }
%struct.TYPE_9__ = type { i64, %struct.bio*, i64, %struct.bio* }
%struct.bio = type { i32, i32, %struct.bio*, i32, i64, %struct.TYPE_8__*, i64, i32, i32, %struct.r10bio*, i64 }
%struct.TYPE_8__ = type { %struct.page* }
%struct.page = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"sync_completed\00", align 1
@RESYNC_BLOCK_SIZE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@MD_CHANGE_DEVS = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@R10BIO_IsReshape = common dso_local global i32 0, align 4
@R10BIO_Previous = common dso_local global i32 0, align 4
@MD_RECOVERY_INTR = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@RESYNC_PAGES = common dso_local global i32 0, align 4
@end_sync_read = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@BIO_POOL_MASK = common dso_local global i32 0, align 4
@BIO_UPTODATE = common dso_local global i32 0, align 4
@Faulty = common dso_local global i32 0, align 4
@end_reshape_write = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@BIO_SEG_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, i32, i32*)* @reshape_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reshape_request(%struct.mddev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mddev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.r10conf*, align 8
  %9 = alloca %struct.r10bio*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.md_rdev*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.bio*, align 8
  %19 = alloca %struct.bio*, align 8
  %20 = alloca %struct.bio*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.bio*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.md_rdev*, align 8
  %25 = alloca %struct.page*, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.bio*, align 8
  store %struct.mddev* %0, %struct.mddev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %28 = load %struct.mddev*, %struct.mddev** %5, align 8
  %29 = getelementptr inbounds %struct.mddev, %struct.mddev* %28, i32 0, i32 8
  %30 = load %struct.r10conf*, %struct.r10conf** %29, align 8
  store %struct.r10conf* %30, %struct.r10conf** %8, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %21, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %84

33:                                               ; preds = %3
  %34 = load %struct.mddev*, %struct.mddev** %5, align 8
  %35 = getelementptr inbounds %struct.mddev, %struct.mddev* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %33
  %39 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %40 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.mddev*, %struct.mddev** %5, align 8
  %43 = call i8* @raid10_size(%struct.mddev* %42, i32 0, i32 0)
  %44 = icmp ult i8* %41, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %38
  %46 = load %struct.mddev*, %struct.mddev** %5, align 8
  %47 = call i8* @raid10_size(%struct.mddev* %46, i32 0, i32 0)
  %48 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %49 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = ptrtoint i8* %47 to i64
  %52 = ptrtoint i8* %50 to i64
  %53 = sub i64 %51, %52
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %6, align 4
  br label %71

55:                                               ; preds = %38, %33
  %56 = load %struct.mddev*, %struct.mddev** %5, align 8
  %57 = getelementptr inbounds %struct.mddev, %struct.mddev* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %55
  %61 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %62 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ugt i8* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %67 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = ptrtoint i8* %68 to i32
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %65, %60, %55
  br label %71

71:                                               ; preds = %70, %45
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %71
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.mddev*, %struct.mddev** %5, align 8
  %77 = getelementptr inbounds %struct.mddev, %struct.mddev* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.mddev*, %struct.mddev** %5, align 8
  %79 = getelementptr inbounds %struct.mddev, %struct.mddev* %78, i32 0, i32 7
  %80 = call i32 @sysfs_notify(i32* %79, i32* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %81 = load i32*, i32** %7, align 8
  store i32 1, i32* %81, align 4
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %4, align 4
  br label %666

83:                                               ; preds = %71
  br label %84

84:                                               ; preds = %83, %3
  %85 = load %struct.mddev*, %struct.mddev** %5, align 8
  %86 = getelementptr inbounds %struct.mddev, %struct.mddev* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %144

89:                                               ; preds = %84
  %90 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %91 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr i8, i8* %92, i64 -1
  %94 = ptrtoint i8* %93 to i32
  %95 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %96 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %95, i32 0, i32 5
  %97 = call i32 @first_dev_address(i32 %94, %struct.TYPE_10__* %96)
  store i32 %97, i32* %10, align 4
  %98 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %99 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = sub nsw i32 %100, 1
  %102 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %103 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %102, i32 0, i32 8
  %104 = call i32 @last_dev_address(i32 %101, %struct.TYPE_10__* %103)
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %10, align 4
  %106 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %107 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %105, %108
  %110 = load i32, i32* %11, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %89
  store i32 1, i32* %17, align 4
  br label %113

113:                                              ; preds = %112, %89
  %114 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %115 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = getelementptr i8, i8* %116, i64 -1
  %118 = ptrtoint i8* %117 to i32
  store i32 %118, i32* %12, align 4
  %119 = load i32, i32* %12, align 4
  %120 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %121 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %120, i32 0, i32 5
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %125 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %124, i32 0, i32 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = and i32 %123, %127
  %129 = xor i32 %128, -1
  %130 = and i32 %119, %129
  store i32 %130, i32* %6, align 4
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* @RESYNC_BLOCK_SIZE, align 4
  %133 = sdiv i32 %132, 512
  %134 = add nsw i32 %131, %133
  %135 = load i32, i32* %12, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %143

137:                                              ; preds = %113
  %138 = load i32, i32* %12, align 4
  %139 = add nsw i32 %138, 1
  %140 = load i32, i32* @RESYNC_BLOCK_SIZE, align 4
  %141 = sdiv i32 %140, 512
  %142 = sub nsw i32 %139, %141
  store i32 %142, i32* %6, align 4
  br label %143

143:                                              ; preds = %137, %113
  br label %195

144:                                              ; preds = %84
  %145 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %146 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = ptrtoint i8* %147 to i32
  %149 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %150 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %149, i32 0, i32 5
  %151 = call i32 @last_dev_address(i32 %148, %struct.TYPE_10__* %150)
  store i32 %151, i32* %10, align 4
  %152 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %153 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %156 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %155, i32 0, i32 8
  %157 = call i32 @first_dev_address(i32 %154, %struct.TYPE_10__* %156)
  store i32 %157, i32* %11, align 4
  %158 = load i32, i32* %10, align 4
  %159 = load i32, i32* %11, align 4
  %160 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %161 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %159, %162
  %164 = icmp sgt i32 %158, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %144
  store i32 1, i32* %17, align 4
  br label %166

166:                                              ; preds = %165, %144
  %167 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %168 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %167, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  %170 = ptrtoint i8* %169 to i32
  store i32 %170, i32* %6, align 4
  %171 = load i32, i32* %6, align 4
  %172 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %173 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %172, i32 0, i32 5
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %177 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %176, i32 0, i32 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = and i32 %175, %179
  %181 = or i32 %171, %180
  store i32 %181, i32* %12, align 4
  %182 = load i32, i32* %6, align 4
  %183 = load i32, i32* @RESYNC_BLOCK_SIZE, align 4
  %184 = sdiv i32 %183, 512
  %185 = add nsw i32 %182, %184
  %186 = load i32, i32* %12, align 4
  %187 = icmp sle i32 %185, %186
  br i1 %187, label %188, label %194

188:                                              ; preds = %166
  %189 = load i32, i32* %6, align 4
  %190 = load i32, i32* @RESYNC_BLOCK_SIZE, align 4
  %191 = sdiv i32 %190, 512
  %192 = add nsw i32 %189, %191
  %193 = sub nsw i32 %192, 1
  store i32 %193, i32* %12, align 4
  br label %194

194:                                              ; preds = %188, %166
  br label %195

195:                                              ; preds = %194, %143
  %196 = load i32, i32* %17, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %209, label %198

198:                                              ; preds = %195
  %199 = load i64, i64* @jiffies, align 8
  %200 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %201 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %200, i32 0, i32 7
  %202 = load i64, i64* %201, align 8
  %203 = load i32, i32* @HZ, align 4
  %204 = mul nsw i32 10, %203
  %205 = sext i32 %204 to i64
  %206 = add nsw i64 %202, %205
  %207 = call i64 @time_after(i64 %199, i64 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %274

209:                                              ; preds = %198, %195
  %210 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %211 = call i32 @wait_barrier(%struct.r10conf* %210)
  %212 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %213 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %212, i32 0, i32 0
  %214 = load i8*, i8** %213, align 8
  %215 = ptrtoint i8* %214 to i32
  %216 = load %struct.mddev*, %struct.mddev** %5, align 8
  %217 = getelementptr inbounds %struct.mddev, %struct.mddev* %216, i32 0, i32 1
  store i32 %215, i32* %217, align 4
  %218 = load %struct.mddev*, %struct.mddev** %5, align 8
  %219 = getelementptr inbounds %struct.mddev, %struct.mddev* %218, i32 0, i32 4
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %234

222:                                              ; preds = %209
  %223 = load %struct.mddev*, %struct.mddev** %5, align 8
  %224 = call i8* @raid10_size(%struct.mddev* %223, i32 0, i32 0)
  %225 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %226 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %225, i32 0, i32 0
  %227 = load i8*, i8** %226, align 8
  %228 = ptrtoint i8* %224 to i64
  %229 = ptrtoint i8* %227 to i64
  %230 = sub i64 %228, %229
  %231 = trunc i64 %230 to i32
  %232 = load %struct.mddev*, %struct.mddev** %5, align 8
  %233 = getelementptr inbounds %struct.mddev, %struct.mddev* %232, i32 0, i32 0
  store i32 %231, i32* %233, align 8
  br label %241

234:                                              ; preds = %209
  %235 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %236 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %235, i32 0, i32 0
  %237 = load i8*, i8** %236, align 8
  %238 = ptrtoint i8* %237 to i32
  %239 = load %struct.mddev*, %struct.mddev** %5, align 8
  %240 = getelementptr inbounds %struct.mddev, %struct.mddev* %239, i32 0, i32 0
  store i32 %238, i32* %240, align 8
  br label %241

241:                                              ; preds = %234, %222
  %242 = load i64, i64* @jiffies, align 8
  %243 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %244 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %243, i32 0, i32 7
  store i64 %242, i64* %244, align 8
  %245 = load i32, i32* @MD_CHANGE_DEVS, align 4
  %246 = load %struct.mddev*, %struct.mddev** %5, align 8
  %247 = getelementptr inbounds %struct.mddev, %struct.mddev* %246, i32 0, i32 2
  %248 = call i32 @set_bit(i32 %245, i64* %247)
  %249 = load %struct.mddev*, %struct.mddev** %5, align 8
  %250 = getelementptr inbounds %struct.mddev, %struct.mddev* %249, i32 0, i32 6
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @md_wakeup_thread(i32 %251)
  %253 = load %struct.mddev*, %struct.mddev** %5, align 8
  %254 = getelementptr inbounds %struct.mddev, %struct.mddev* %253, i32 0, i32 5
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.mddev*, %struct.mddev** %5, align 8
  %257 = getelementptr inbounds %struct.mddev, %struct.mddev* %256, i32 0, i32 2
  %258 = load i64, i64* %257, align 8
  %259 = icmp eq i64 %258, 0
  br i1 %259, label %263, label %260

260:                                              ; preds = %241
  %261 = call i64 (...) @kthread_should_stop()
  %262 = icmp ne i64 %261, 0
  br label %263

263:                                              ; preds = %260, %241
  %264 = phi i1 [ true, %241 ], [ %262, %260 ]
  %265 = zext i1 %264 to i32
  %266 = call i32 @wait_event(i32 %255, i32 %265)
  %267 = load %struct.mddev*, %struct.mddev** %5, align 8
  %268 = getelementptr inbounds %struct.mddev, %struct.mddev* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %271 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %270, i32 0, i32 1
  store i32 %269, i32* %271, align 8
  %272 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %273 = call i32 @allow_barrier(%struct.r10conf* %272)
  br label %274

274:                                              ; preds = %263, %198
  br label %275

275:                                              ; preds = %643, %274
  %276 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %277 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %276, i32 0, i32 6
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* @GFP_NOIO, align 4
  %280 = call %struct.r10bio* @mempool_alloc(i32 %278, i32 %279)
  store %struct.r10bio* %280, %struct.r10bio** %9, align 8
  %281 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %282 = load i32, i32* %21, align 4
  %283 = icmp ne i32 %282, 0
  %284 = zext i1 %283 to i32
  %285 = call i32 @raise_barrier(%struct.r10conf* %281, i32 %284)
  %286 = load %struct.r10bio*, %struct.r10bio** %9, align 8
  %287 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %286, i32 0, i32 4
  %288 = call i32 @atomic_set(i32* %287, i32 0)
  %289 = load %struct.mddev*, %struct.mddev** %5, align 8
  %290 = load %struct.r10bio*, %struct.r10bio** %9, align 8
  %291 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %290, i32 0, i32 7
  store %struct.mddev* %289, %struct.mddev** %291, align 8
  %292 = load i32, i32* %6, align 4
  %293 = load %struct.r10bio*, %struct.r10bio** %9, align 8
  %294 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %293, i32 0, i32 0
  store i32 %292, i32* %294, align 8
  %295 = load i32, i32* @R10BIO_IsReshape, align 4
  %296 = load %struct.r10bio*, %struct.r10bio** %9, align 8
  %297 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %296, i32 0, i32 1
  %298 = call i32 @set_bit(i32 %295, i64* %297)
  %299 = load i32, i32* %12, align 4
  %300 = load i32, i32* %6, align 4
  %301 = sub nsw i32 %299, %300
  %302 = add nsw i32 %301, 1
  %303 = load %struct.r10bio*, %struct.r10bio** %9, align 8
  %304 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %303, i32 0, i32 2
  store i32 %302, i32* %304, align 8
  %305 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %306 = load %struct.r10bio*, %struct.r10bio** %9, align 8
  %307 = call %struct.md_rdev* @read_balance(%struct.r10conf* %305, %struct.r10bio* %306, i32* %13)
  store %struct.md_rdev* %307, %struct.md_rdev** %16, align 8
  %308 = load i32, i32* @R10BIO_Previous, align 4
  %309 = load %struct.r10bio*, %struct.r10bio** %9, align 8
  %310 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %309, i32 0, i32 1
  %311 = call i64 @test_bit(i32 %308, i64* %310)
  %312 = icmp ne i64 %311, 0
  %313 = xor i1 %312, true
  %314 = zext i1 %313 to i32
  %315 = call i32 @BUG_ON(i32 %314)
  %316 = load %struct.md_rdev*, %struct.md_rdev** %16, align 8
  %317 = icmp ne %struct.md_rdev* %316, null
  br i1 %317, label %324, label %318

318:                                              ; preds = %275
  %319 = load i32, i32* @MD_RECOVERY_INTR, align 4
  %320 = load %struct.mddev*, %struct.mddev** %5, align 8
  %321 = getelementptr inbounds %struct.mddev, %struct.mddev* %320, i32 0, i32 3
  %322 = call i32 @set_bit(i32 %319, i64* %321)
  %323 = load i32, i32* %21, align 4
  store i32 %323, i32* %4, align 4
  br label %666

324:                                              ; preds = %275
  %325 = load i32, i32* @GFP_KERNEL, align 4
  %326 = load i32, i32* @RESYNC_PAGES, align 4
  %327 = load %struct.mddev*, %struct.mddev** %5, align 8
  %328 = call %struct.bio* @bio_alloc_mddev(i32 %325, i32 %326, %struct.mddev* %327)
  store %struct.bio* %328, %struct.bio** %20, align 8
  %329 = load %struct.md_rdev*, %struct.md_rdev** %16, align 8
  %330 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %329, i32 0, i32 2
  %331 = load i32, i32* %330, align 8
  %332 = load %struct.bio*, %struct.bio** %20, align 8
  %333 = getelementptr inbounds %struct.bio, %struct.bio* %332, i32 0, i32 3
  store i32 %331, i32* %333, align 8
  %334 = load %struct.r10bio*, %struct.r10bio** %9, align 8
  %335 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %334, i32 0, i32 5
  %336 = load %struct.TYPE_9__*, %struct.TYPE_9__** %335, align 8
  %337 = load %struct.r10bio*, %struct.r10bio** %9, align 8
  %338 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %337, i32 0, i32 3
  %339 = load i64, i64* %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %336, i64 %339
  %341 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %340, i32 0, i32 2
  %342 = load i64, i64* %341, align 8
  %343 = load %struct.md_rdev*, %struct.md_rdev** %16, align 8
  %344 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %343, i32 0, i32 3
  %345 = load i64, i64* %344, align 8
  %346 = add nsw i64 %342, %345
  %347 = load %struct.bio*, %struct.bio** %20, align 8
  %348 = getelementptr inbounds %struct.bio, %struct.bio* %347, i32 0, i32 10
  store i64 %346, i64* %348, align 8
  %349 = load %struct.r10bio*, %struct.r10bio** %9, align 8
  %350 = load %struct.bio*, %struct.bio** %20, align 8
  %351 = getelementptr inbounds %struct.bio, %struct.bio* %350, i32 0, i32 9
  store %struct.r10bio* %349, %struct.r10bio** %351, align 8
  %352 = load i32, i32* @end_sync_read, align 4
  %353 = load %struct.bio*, %struct.bio** %20, align 8
  %354 = getelementptr inbounds %struct.bio, %struct.bio* %353, i32 0, i32 8
  store i32 %352, i32* %354, align 4
  %355 = load i32, i32* @READ, align 4
  %356 = load %struct.bio*, %struct.bio** %20, align 8
  %357 = getelementptr inbounds %struct.bio, %struct.bio* %356, i32 0, i32 7
  store i32 %355, i32* %357, align 8
  %358 = load i32, i32* @BIO_POOL_MASK, align 4
  %359 = sub nsw i32 %358, 1
  %360 = xor i32 %359, -1
  %361 = load %struct.bio*, %struct.bio** %20, align 8
  %362 = getelementptr inbounds %struct.bio, %struct.bio* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 8
  %364 = and i32 %363, %360
  store i32 %364, i32* %362, align 8
  %365 = load i32, i32* @BIO_UPTODATE, align 4
  %366 = shl i32 1, %365
  %367 = load %struct.bio*, %struct.bio** %20, align 8
  %368 = getelementptr inbounds %struct.bio, %struct.bio* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = or i32 %369, %366
  store i32 %370, i32* %368, align 8
  %371 = load %struct.bio*, %struct.bio** %20, align 8
  %372 = getelementptr inbounds %struct.bio, %struct.bio* %371, i32 0, i32 4
  store i64 0, i64* %372, align 8
  %373 = load %struct.bio*, %struct.bio** %20, align 8
  %374 = getelementptr inbounds %struct.bio, %struct.bio* %373, i32 0, i32 6
  store i64 0, i64* %374, align 8
  %375 = load %struct.bio*, %struct.bio** %20, align 8
  %376 = getelementptr inbounds %struct.bio, %struct.bio* %375, i32 0, i32 1
  store i32 0, i32* %376, align 4
  %377 = load %struct.bio*, %struct.bio** %20, align 8
  %378 = load %struct.r10bio*, %struct.r10bio** %9, align 8
  %379 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %378, i32 0, i32 6
  store %struct.bio* %377, %struct.bio** %379, align 8
  %380 = load %struct.r10bio*, %struct.r10bio** %9, align 8
  %381 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %380, i32 0, i32 5
  %382 = load %struct.TYPE_9__*, %struct.TYPE_9__** %381, align 8
  %383 = load %struct.r10bio*, %struct.r10bio** %9, align 8
  %384 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %383, i32 0, i32 3
  %385 = load i64, i64* %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %382, i64 %385
  %387 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %386, i32 0, i32 0
  %388 = load i64, i64* %387, align 8
  %389 = load %struct.r10bio*, %struct.r10bio** %9, align 8
  %390 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %389, i32 0, i32 3
  store i64 %388, i64* %390, align 8
  %391 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %392 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %391, i32 0, i32 5
  %393 = load %struct.r10bio*, %struct.r10bio** %9, align 8
  %394 = call i32 @__raid10_find_phys(%struct.TYPE_10__* %392, %struct.r10bio* %393)
  %395 = load %struct.bio*, %struct.bio** %20, align 8
  store %struct.bio* %395, %struct.bio** %18, align 8
  %396 = load %struct.bio*, %struct.bio** %20, align 8
  %397 = getelementptr inbounds %struct.bio, %struct.bio* %396, i32 0, i32 2
  store %struct.bio* null, %struct.bio** %397, align 8
  store i32 0, i32* %15, align 4
  br label %398

398:                                              ; preds = %518, %324
  %399 = load i32, i32* %15, align 4
  %400 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %401 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %400, i32 0, i32 3
  %402 = load i32, i32* %401, align 8
  %403 = mul nsw i32 %402, 2
  %404 = icmp slt i32 %399, %403
  br i1 %404, label %405, label %521

405:                                              ; preds = %398
  %406 = load %struct.r10bio*, %struct.r10bio** %9, align 8
  %407 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %406, i32 0, i32 5
  %408 = load %struct.TYPE_9__*, %struct.TYPE_9__** %407, align 8
  %409 = load i32, i32* %15, align 4
  %410 = sdiv i32 %409, 2
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %408, i64 %411
  %413 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %412, i32 0, i32 0
  %414 = load i64, i64* %413, align 8
  %415 = trunc i64 %414 to i32
  store i32 %415, i32* %23, align 4
  %416 = load i32, i32* %15, align 4
  %417 = and i32 %416, 1
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %437

419:                                              ; preds = %405
  %420 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %421 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %420, i32 0, i32 4
  %422 = load %struct.TYPE_7__*, %struct.TYPE_7__** %421, align 8
  %423 = load i32, i32* %23, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %422, i64 %424
  %426 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %425, i32 0, i32 1
  %427 = load %struct.md_rdev*, %struct.md_rdev** %426, align 8
  store %struct.md_rdev* %427, %struct.md_rdev** %24, align 8
  %428 = load %struct.r10bio*, %struct.r10bio** %9, align 8
  %429 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %428, i32 0, i32 5
  %430 = load %struct.TYPE_9__*, %struct.TYPE_9__** %429, align 8
  %431 = load i32, i32* %15, align 4
  %432 = sdiv i32 %431, 2
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %430, i64 %433
  %435 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %434, i32 0, i32 3
  %436 = load %struct.bio*, %struct.bio** %435, align 8
  store %struct.bio* %436, %struct.bio** %22, align 8
  br label %455

437:                                              ; preds = %405
  %438 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %439 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %438, i32 0, i32 4
  %440 = load %struct.TYPE_7__*, %struct.TYPE_7__** %439, align 8
  %441 = load i32, i32* %23, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %440, i64 %442
  %444 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %443, i32 0, i32 0
  %445 = load %struct.md_rdev*, %struct.md_rdev** %444, align 8
  store %struct.md_rdev* %445, %struct.md_rdev** %24, align 8
  %446 = load %struct.r10bio*, %struct.r10bio** %9, align 8
  %447 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %446, i32 0, i32 5
  %448 = load %struct.TYPE_9__*, %struct.TYPE_9__** %447, align 8
  %449 = load i32, i32* %15, align 4
  %450 = sdiv i32 %449, 2
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %448, i64 %451
  %453 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %452, i32 0, i32 1
  %454 = load %struct.bio*, %struct.bio** %453, align 8
  store %struct.bio* %454, %struct.bio** %22, align 8
  br label %455

455:                                              ; preds = %437, %419
  %456 = load %struct.md_rdev*, %struct.md_rdev** %24, align 8
  %457 = icmp ne %struct.md_rdev* %456, null
  br i1 %457, label %458, label %464

458:                                              ; preds = %455
  %459 = load i32, i32* @Faulty, align 4
  %460 = load %struct.md_rdev*, %struct.md_rdev** %24, align 8
  %461 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %460, i32 0, i32 0
  %462 = call i64 @test_bit(i32 %459, i64* %461)
  %463 = icmp ne i64 %462, 0
  br i1 %463, label %464, label %465

464:                                              ; preds = %458, %455
  br label %518

465:                                              ; preds = %458
  %466 = load %struct.md_rdev*, %struct.md_rdev** %24, align 8
  %467 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %466, i32 0, i32 2
  %468 = load i32, i32* %467, align 8
  %469 = load %struct.bio*, %struct.bio** %22, align 8
  %470 = getelementptr inbounds %struct.bio, %struct.bio* %469, i32 0, i32 3
  store i32 %468, i32* %470, align 8
  %471 = load %struct.r10bio*, %struct.r10bio** %9, align 8
  %472 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %471, i32 0, i32 5
  %473 = load %struct.TYPE_9__*, %struct.TYPE_9__** %472, align 8
  %474 = load i32, i32* %15, align 4
  %475 = sdiv i32 %474, 2
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %473, i64 %476
  %478 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %477, i32 0, i32 2
  %479 = load i64, i64* %478, align 8
  %480 = load %struct.md_rdev*, %struct.md_rdev** %24, align 8
  %481 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %480, i32 0, i32 1
  %482 = load i64, i64* %481, align 8
  %483 = add nsw i64 %479, %482
  %484 = load %struct.bio*, %struct.bio** %22, align 8
  %485 = getelementptr inbounds %struct.bio, %struct.bio* %484, i32 0, i32 10
  store i64 %483, i64* %485, align 8
  %486 = load %struct.r10bio*, %struct.r10bio** %9, align 8
  %487 = load %struct.bio*, %struct.bio** %22, align 8
  %488 = getelementptr inbounds %struct.bio, %struct.bio* %487, i32 0, i32 9
  store %struct.r10bio* %486, %struct.r10bio** %488, align 8
  %489 = load i32, i32* @end_reshape_write, align 4
  %490 = load %struct.bio*, %struct.bio** %22, align 8
  %491 = getelementptr inbounds %struct.bio, %struct.bio* %490, i32 0, i32 8
  store i32 %489, i32* %491, align 4
  %492 = load i32, i32* @WRITE, align 4
  %493 = load %struct.bio*, %struct.bio** %22, align 8
  %494 = getelementptr inbounds %struct.bio, %struct.bio* %493, i32 0, i32 7
  store i32 %492, i32* %494, align 8
  %495 = load i32, i32* @BIO_POOL_MASK, align 4
  %496 = sub nsw i32 %495, 1
  %497 = xor i32 %496, -1
  %498 = load %struct.bio*, %struct.bio** %22, align 8
  %499 = getelementptr inbounds %struct.bio, %struct.bio* %498, i32 0, i32 0
  %500 = load i32, i32* %499, align 8
  %501 = and i32 %500, %497
  store i32 %501, i32* %499, align 8
  %502 = load i32, i32* @BIO_UPTODATE, align 4
  %503 = shl i32 1, %502
  %504 = load %struct.bio*, %struct.bio** %22, align 8
  %505 = getelementptr inbounds %struct.bio, %struct.bio* %504, i32 0, i32 0
  %506 = load i32, i32* %505, align 8
  %507 = or i32 %506, %503
  store i32 %507, i32* %505, align 8
  %508 = load %struct.bio*, %struct.bio** %18, align 8
  %509 = load %struct.bio*, %struct.bio** %22, align 8
  %510 = getelementptr inbounds %struct.bio, %struct.bio* %509, i32 0, i32 2
  store %struct.bio* %508, %struct.bio** %510, align 8
  %511 = load %struct.bio*, %struct.bio** %22, align 8
  %512 = getelementptr inbounds %struct.bio, %struct.bio* %511, i32 0, i32 4
  store i64 0, i64* %512, align 8
  %513 = load %struct.bio*, %struct.bio** %22, align 8
  %514 = getelementptr inbounds %struct.bio, %struct.bio* %513, i32 0, i32 6
  store i64 0, i64* %514, align 8
  %515 = load %struct.bio*, %struct.bio** %22, align 8
  %516 = getelementptr inbounds %struct.bio, %struct.bio* %515, i32 0, i32 1
  store i32 0, i32* %516, align 4
  %517 = load %struct.bio*, %struct.bio** %22, align 8
  store %struct.bio* %517, %struct.bio** %18, align 8
  br label %518

518:                                              ; preds = %465, %464
  %519 = load i32, i32* %15, align 4
  %520 = add nsw i32 %519, 1
  store i32 %520, i32* %15, align 4
  br label %398

521:                                              ; preds = %398
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %522

522:                                              ; preds = %610, %521
  %523 = load i32, i32* %15, align 4
  %524 = load i32, i32* %13, align 4
  %525 = icmp slt i32 %523, %524
  br i1 %525, label %526, label %615

526:                                              ; preds = %522
  %527 = load %struct.r10bio*, %struct.r10bio** %9, align 8
  %528 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %527, i32 0, i32 5
  %529 = load %struct.TYPE_9__*, %struct.TYPE_9__** %528, align 8
  %530 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %529, i64 0
  %531 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %530, i32 0, i32 1
  %532 = load %struct.bio*, %struct.bio** %531, align 8
  %533 = getelementptr inbounds %struct.bio, %struct.bio* %532, i32 0, i32 5
  %534 = load %struct.TYPE_8__*, %struct.TYPE_8__** %533, align 8
  %535 = load i32, i32* %15, align 4
  %536 = load i32, i32* @PAGE_SIZE, align 4
  %537 = ashr i32 %536, 9
  %538 = sdiv i32 %535, %537
  %539 = sext i32 %538 to i64
  %540 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %534, i64 %539
  %541 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %540, i32 0, i32 0
  %542 = load %struct.page*, %struct.page** %541, align 8
  store %struct.page* %542, %struct.page** %25, align 8
  %543 = load i32, i32* %13, align 4
  %544 = load i32, i32* %15, align 4
  %545 = sub nsw i32 %543, %544
  %546 = shl i32 %545, 9
  store i32 %546, i32* %26, align 4
  %547 = load i32, i32* %26, align 4
  %548 = load i32, i32* @PAGE_SIZE, align 4
  %549 = icmp sgt i32 %547, %548
  br i1 %549, label %550, label %552

550:                                              ; preds = %526
  %551 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %551, i32* %26, align 4
  br label %552

552:                                              ; preds = %550, %526
  %553 = load %struct.bio*, %struct.bio** %18, align 8
  store %struct.bio* %553, %struct.bio** %19, align 8
  br label %554

554:                                              ; preds = %597, %552
  %555 = load %struct.bio*, %struct.bio** %19, align 8
  %556 = icmp ne %struct.bio* %555, null
  br i1 %556, label %557, label %601

557:                                              ; preds = %554
  %558 = load %struct.bio*, %struct.bio** %19, align 8
  %559 = load %struct.page*, %struct.page** %25, align 8
  %560 = load i32, i32* %26, align 4
  %561 = call i64 @bio_add_page(%struct.bio* %558, %struct.page* %559, i32 %560, i32 0)
  %562 = icmp ne i64 %561, 0
  br i1 %562, label %563, label %564

563:                                              ; preds = %557
  br label %597

564:                                              ; preds = %557
  %565 = load %struct.bio*, %struct.bio** %18, align 8
  store %struct.bio* %565, %struct.bio** %27, align 8
  br label %566

566:                                              ; preds = %592, %564
  %567 = load %struct.bio*, %struct.bio** %27, align 8
  %568 = icmp ne %struct.bio* %567, null
  br i1 %568, label %569, label %573

569:                                              ; preds = %566
  %570 = load %struct.bio*, %struct.bio** %27, align 8
  %571 = load %struct.bio*, %struct.bio** %19, align 8
  %572 = icmp ne %struct.bio* %570, %571
  br label %573

573:                                              ; preds = %569, %566
  %574 = phi i1 [ false, %566 ], [ %572, %569 ]
  br i1 %574, label %575, label %596

575:                                              ; preds = %573
  %576 = load %struct.bio*, %struct.bio** %27, align 8
  %577 = getelementptr inbounds %struct.bio, %struct.bio* %576, i32 0, i32 4
  %578 = load i64, i64* %577, align 8
  %579 = add nsw i64 %578, -1
  store i64 %579, i64* %577, align 8
  %580 = load i32, i32* %26, align 4
  %581 = load %struct.bio*, %struct.bio** %27, align 8
  %582 = getelementptr inbounds %struct.bio, %struct.bio* %581, i32 0, i32 1
  %583 = load i32, i32* %582, align 4
  %584 = sub nsw i32 %583, %580
  store i32 %584, i32* %582, align 4
  %585 = load i32, i32* @BIO_SEG_VALID, align 4
  %586 = shl i32 1, %585
  %587 = xor i32 %586, -1
  %588 = load %struct.bio*, %struct.bio** %27, align 8
  %589 = getelementptr inbounds %struct.bio, %struct.bio* %588, i32 0, i32 0
  %590 = load i32, i32* %589, align 8
  %591 = and i32 %590, %587
  store i32 %591, i32* %589, align 8
  br label %592

592:                                              ; preds = %575
  %593 = load %struct.bio*, %struct.bio** %27, align 8
  %594 = getelementptr inbounds %struct.bio, %struct.bio* %593, i32 0, i32 2
  %595 = load %struct.bio*, %struct.bio** %594, align 8
  store %struct.bio* %595, %struct.bio** %27, align 8
  br label %566

596:                                              ; preds = %573
  br label %616

597:                                              ; preds = %563
  %598 = load %struct.bio*, %struct.bio** %19, align 8
  %599 = getelementptr inbounds %struct.bio, %struct.bio* %598, i32 0, i32 2
  %600 = load %struct.bio*, %struct.bio** %599, align 8
  store %struct.bio* %600, %struct.bio** %19, align 8
  br label %554

601:                                              ; preds = %554
  %602 = load i32, i32* %26, align 4
  %603 = ashr i32 %602, 9
  %604 = load i32, i32* %6, align 4
  %605 = add nsw i32 %604, %603
  store i32 %605, i32* %6, align 4
  %606 = load i32, i32* %26, align 4
  %607 = ashr i32 %606, 9
  %608 = load i32, i32* %14, align 4
  %609 = add nsw i32 %608, %607
  store i32 %609, i32* %14, align 4
  br label %610

610:                                              ; preds = %601
  %611 = load i32, i32* @PAGE_SIZE, align 4
  %612 = ashr i32 %611, 9
  %613 = load i32, i32* %15, align 4
  %614 = add nsw i32 %613, %612
  store i32 %614, i32* %15, align 4
  br label %522

615:                                              ; preds = %522
  br label %616

616:                                              ; preds = %615, %596
  %617 = load i32, i32* %14, align 4
  %618 = load %struct.r10bio*, %struct.r10bio** %9, align 8
  %619 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %618, i32 0, i32 2
  store i32 %617, i32* %619, align 8
  %620 = load %struct.bio*, %struct.bio** %20, align 8
  %621 = getelementptr inbounds %struct.bio, %struct.bio* %620, i32 0, i32 3
  %622 = load i32, i32* %621, align 8
  %623 = load %struct.r10bio*, %struct.r10bio** %9, align 8
  %624 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %623, i32 0, i32 2
  %625 = load i32, i32* %624, align 8
  %626 = call i32 @md_sync_acct(i32 %622, i32 %625)
  %627 = load %struct.r10bio*, %struct.r10bio** %9, align 8
  %628 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %627, i32 0, i32 4
  %629 = call i32 @atomic_inc(i32* %628)
  %630 = load %struct.bio*, %struct.bio** %20, align 8
  %631 = getelementptr inbounds %struct.bio, %struct.bio* %630, i32 0, i32 2
  store %struct.bio* null, %struct.bio** %631, align 8
  %632 = load %struct.bio*, %struct.bio** %20, align 8
  %633 = call i32 @generic_make_request(%struct.bio* %632)
  %634 = load i32, i32* %14, align 4
  %635 = load i32, i32* %6, align 4
  %636 = add nsw i32 %635, %634
  store i32 %636, i32* %6, align 4
  %637 = load i32, i32* %14, align 4
  %638 = load i32, i32* %21, align 4
  %639 = add nsw i32 %638, %637
  store i32 %639, i32* %21, align 4
  %640 = load i32, i32* %6, align 4
  %641 = load i32, i32* %12, align 4
  %642 = icmp sle i32 %640, %641
  br i1 %642, label %643, label %644

643:                                              ; preds = %616
  br label %275

644:                                              ; preds = %616
  %645 = load %struct.mddev*, %struct.mddev** %5, align 8
  %646 = getelementptr inbounds %struct.mddev, %struct.mddev* %645, i32 0, i32 4
  %647 = load i64, i64* %646, align 8
  %648 = icmp ne i64 %647, 0
  br i1 %648, label %649, label %657

649:                                              ; preds = %644
  %650 = load i32, i32* %21, align 4
  %651 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %652 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %651, i32 0, i32 0
  %653 = load i8*, i8** %652, align 8
  %654 = sext i32 %650 to i64
  %655 = sub i64 0, %654
  %656 = getelementptr i8, i8* %653, i64 %655
  store i8* %656, i8** %652, align 8
  br label %664

657:                                              ; preds = %644
  %658 = load i32, i32* %21, align 4
  %659 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %660 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %659, i32 0, i32 0
  %661 = load i8*, i8** %660, align 8
  %662 = sext i32 %658 to i64
  %663 = getelementptr i8, i8* %661, i64 %662
  store i8* %663, i8** %660, align 8
  br label %664

664:                                              ; preds = %657, %649
  %665 = load i32, i32* %21, align 4
  store i32 %665, i32* %4, align 4
  br label %666

666:                                              ; preds = %664, %318, %74
  %667 = load i32, i32* %4, align 4
  ret i32 %667
}

declare dso_local i8* @raid10_size(%struct.mddev*, i32, i32) #1

declare dso_local i32 @sysfs_notify(i32*, i32*, i8*) #1

declare dso_local i32 @first_dev_address(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @last_dev_address(i32, %struct.TYPE_10__*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @wait_barrier(%struct.r10conf*) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @md_wakeup_thread(i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @allow_barrier(%struct.r10conf*) #1

declare dso_local %struct.r10bio* @mempool_alloc(i32, i32) #1

declare dso_local i32 @raise_barrier(%struct.r10conf*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local %struct.md_rdev* @read_balance(%struct.r10conf*, %struct.r10bio*, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local %struct.bio* @bio_alloc_mddev(i32, i32, %struct.mddev*) #1

declare dso_local i32 @__raid10_find_phys(%struct.TYPE_10__*, %struct.r10bio*) #1

declare dso_local i64 @bio_add_page(%struct.bio*, %struct.page*, i32, i32) #1

declare dso_local i32 @md_sync_acct(i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @generic_make_request(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
