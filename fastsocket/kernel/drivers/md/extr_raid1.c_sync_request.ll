; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid1.c_sync_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid1.c_sync_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i64, i64, i64, i64, i64, i32*, i32, i64, %struct.r1conf* }
%struct.r1conf = type { i64, i32, i32, %struct.TYPE_3__*, i64, i32, i64 }
%struct.TYPE_3__ = type { %struct.md_rdev* }
%struct.md_rdev = type { i64, i32, i32, i64 }
%struct.r1bio = type { i32, %struct.bio**, i32, i64, i64, i64, %struct.mddev* }
%struct.bio = type { i32, i32, i64, i8*, i32, i64, %struct.TYPE_4__*, %struct.r1bio*, i64, i8*, i64, i64, i32* }
%struct.TYPE_4__ = type { %struct.page* }
%struct.page = type { i32 }

@RESYNC_SECTORS = common dso_local global i32 0, align 4
@MaxSector = common dso_local global i64 0, align 8
@MD_RECOVERY_REQUESTED = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@R1BIO_IsSync = common dso_local global i32 0, align 4
@BIO_POOL_MASK = common dso_local global i32 0, align 4
@BIO_UPTODATE = common dso_local global i32 0, align 4
@READ = common dso_local global i8* null, align 8
@Faulty = common dso_local global i32 0, align 4
@In_sync = common dso_local global i32 0, align 4
@WRITE = common dso_local global i8* null, align 8
@end_sync_write = common dso_local global i8* null, align 8
@WriteMostly = common dso_local global i32 0, align 4
@end_sync_read = common dso_local global i8* null, align 8
@WriteErrorSeen = common dso_local global i32 0, align 4
@MD_RECOVERY_SYNC = common dso_local global i32 0, align 4
@MD_RECOVERY_CHECK = common dso_local global i32 0, align 4
@MD_CHANGE_DEVS = common dso_local global i32 0, align 4
@MD_RECOVERY_INTR = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@BIO_SEG_VALID = common dso_local global i32 0, align 4
@RESYNC_PAGES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mddev*, i64, i32*, i32)* @sync_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sync_request(%struct.mddev* %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.mddev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.r1conf*, align 8
  %11 = alloca %struct.r1bio*, align 8
  %12 = alloca %struct.bio*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.md_rdev*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.md_rdev*, align 8
  %29 = alloca i64, align 8
  %30 = alloca %struct.page*, align 8
  %31 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %32 = load %struct.mddev*, %struct.mddev** %6, align 8
  %33 = getelementptr inbounds %struct.mddev, %struct.mddev* %32, i32 0, i32 8
  %34 = load %struct.r1conf*, %struct.r1conf** %33, align 8
  store %struct.r1conf* %34, %struct.r1conf** %10, align 8
  store i32 -1, i32* %15, align 4
  store i32 -1, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %21, align 4
  %35 = load i32, i32* @RESYNC_SECTORS, align 4
  store i32 %35, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %36 = load %struct.r1conf*, %struct.r1conf** %10, align 8
  %37 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %4
  %41 = load %struct.r1conf*, %struct.r1conf** %10, align 8
  %42 = call i64 @init_resync(%struct.r1conf* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i64 0, i64* %5, align 8
  br label %776

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %45, %4
  %47 = load %struct.mddev*, %struct.mddev** %6, align 8
  %48 = getelementptr inbounds %struct.mddev, %struct.mddev* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %13, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* %13, align 8
  %52 = icmp sge i64 %50, %51
  br i1 %52, label %53, label %77

53:                                               ; preds = %46
  %54 = load %struct.mddev*, %struct.mddev** %6, align 8
  %55 = getelementptr inbounds %struct.mddev, %struct.mddev* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %13, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %53
  %60 = load %struct.mddev*, %struct.mddev** %6, align 8
  %61 = getelementptr inbounds %struct.mddev, %struct.mddev* %60, i32 0, i32 5
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.mddev*, %struct.mddev** %6, align 8
  %64 = getelementptr inbounds %struct.mddev, %struct.mddev* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @bitmap_end_sync(i32* %62, i64 %65, i64* %20, i32 1)
  br label %70

67:                                               ; preds = %53
  %68 = load %struct.r1conf*, %struct.r1conf** %10, align 8
  %69 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %68, i32 0, i32 0
  store i64 0, i64* %69, align 8
  br label %70

70:                                               ; preds = %67, %59
  %71 = load %struct.mddev*, %struct.mddev** %6, align 8
  %72 = getelementptr inbounds %struct.mddev, %struct.mddev* %71, i32 0, i32 5
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @bitmap_close_sync(i32* %73)
  %75 = load %struct.r1conf*, %struct.r1conf** %10, align 8
  %76 = call i32 @close_sync(%struct.r1conf* %75)
  store i64 0, i64* %5, align 8
  br label %776

77:                                               ; preds = %46
  %78 = load %struct.mddev*, %struct.mddev** %6, align 8
  %79 = getelementptr inbounds %struct.mddev, %struct.mddev* %78, i32 0, i32 5
  %80 = load i32*, i32** %79, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %104

82:                                               ; preds = %77
  %83 = load %struct.mddev*, %struct.mddev** %6, align 8
  %84 = getelementptr inbounds %struct.mddev, %struct.mddev* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @MaxSector, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %104

88:                                               ; preds = %82
  %89 = load i32, i32* @MD_RECOVERY_REQUESTED, align 4
  %90 = load %struct.mddev*, %struct.mddev** %6, align 8
  %91 = getelementptr inbounds %struct.mddev, %struct.mddev* %90, i32 0, i32 4
  %92 = call i64 @test_bit(i32 %89, i64* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %104, label %94

94:                                               ; preds = %88
  %95 = load %struct.r1conf*, %struct.r1conf** %10, align 8
  %96 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load i32*, i32** %8, align 8
  store i32 1, i32* %100, align 4
  %101 = load i64, i64* %13, align 8
  %102 = load i64, i64* %7, align 8
  %103 = sub nsw i64 %101, %102
  store i64 %103, i64* %5, align 8
  br label %776

104:                                              ; preds = %94, %88, %82, %77
  %105 = load %struct.mddev*, %struct.mddev** %6, align 8
  %106 = getelementptr inbounds %struct.mddev, %struct.mddev* %105, i32 0, i32 5
  %107 = load i32*, i32** %106, align 8
  %108 = load i64, i64* %7, align 8
  %109 = call i32 @bitmap_start_sync(i32* %107, i64 %108, i64* %20, i32 1)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %125, label %111

111:                                              ; preds = %104
  %112 = load %struct.r1conf*, %struct.r1conf** %10, align 8
  %113 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %125, label %116

116:                                              ; preds = %111
  %117 = load i32, i32* @MD_RECOVERY_REQUESTED, align 4
  %118 = load %struct.mddev*, %struct.mddev** %6, align 8
  %119 = getelementptr inbounds %struct.mddev, %struct.mddev* %118, i32 0, i32 4
  %120 = call i64 @test_bit(i32 %117, i64* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %116
  %123 = load i32*, i32** %8, align 8
  store i32 1, i32* %123, align 4
  %124 = load i64, i64* %20, align 8
  store i64 %124, i64* %5, align 8
  br label %776

125:                                              ; preds = %116, %111, %104
  %126 = load i32, i32* %9, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %135, label %128

128:                                              ; preds = %125
  %129 = load %struct.r1conf*, %struct.r1conf** %10, align 8
  %130 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %129, i32 0, i32 6
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %128
  %134 = call i32 @msleep_interruptible(i32 1000)
  br label %135

135:                                              ; preds = %133, %128, %125
  %136 = load %struct.mddev*, %struct.mddev** %6, align 8
  %137 = getelementptr inbounds %struct.mddev, %struct.mddev* %136, i32 0, i32 5
  %138 = load i32*, i32** %137, align 8
  %139 = load i64, i64* %7, align 8
  %140 = call i32 @bitmap_cond_end_sync(i32* %138, i64 %139)
  %141 = load %struct.r1conf*, %struct.r1conf** %10, align 8
  %142 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @GFP_NOIO, align 4
  %145 = call %struct.r1bio* @mempool_alloc(i32 %143, i32 %144)
  store %struct.r1bio* %145, %struct.r1bio** %11, align 8
  %146 = load %struct.r1conf*, %struct.r1conf** %10, align 8
  %147 = call i32 @raise_barrier(%struct.r1conf* %146)
  %148 = load i64, i64* %7, align 8
  %149 = load %struct.r1conf*, %struct.r1conf** %10, align 8
  %150 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %149, i32 0, i32 4
  store i64 %148, i64* %150, align 8
  %151 = call i32 (...) @rcu_read_lock()
  %152 = load %struct.mddev*, %struct.mddev** %6, align 8
  %153 = load %struct.r1bio*, %struct.r1bio** %11, align 8
  %154 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %153, i32 0, i32 6
  store %struct.mddev* %152, %struct.mddev** %154, align 8
  %155 = load i64, i64* %7, align 8
  %156 = load %struct.r1bio*, %struct.r1bio** %11, align 8
  %157 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %156, i32 0, i32 5
  store i64 %155, i64* %157, align 8
  %158 = load %struct.r1bio*, %struct.r1bio** %11, align 8
  %159 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %158, i32 0, i32 4
  store i64 0, i64* %159, align 8
  %160 = load i32, i32* @R1BIO_IsSync, align 4
  %161 = load %struct.r1bio*, %struct.r1bio** %11, align 8
  %162 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %161, i32 0, i32 4
  %163 = call i32 @set_bit(i32 %160, i64* %162)
  store i32 0, i32* %16, align 4
  br label %164

164:                                              ; preds = %371, %135
  %165 = load i32, i32* %16, align 4
  %166 = load %struct.r1conf*, %struct.r1conf** %10, align 8
  %167 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = mul nsw i32 %168, 2
  %170 = icmp slt i32 %165, %169
  br i1 %170, label %171, label %374

171:                                              ; preds = %164
  %172 = load %struct.r1bio*, %struct.r1bio** %11, align 8
  %173 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %172, i32 0, i32 1
  %174 = load %struct.bio**, %struct.bio*** %173, align 8
  %175 = load i32, i32* %16, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.bio*, %struct.bio** %174, i64 %176
  %178 = load %struct.bio*, %struct.bio** %177, align 8
  store %struct.bio* %178, %struct.bio** %12, align 8
  %179 = load %struct.bio*, %struct.bio** %12, align 8
  %180 = getelementptr inbounds %struct.bio, %struct.bio* %179, i32 0, i32 12
  store i32* null, i32** %180, align 8
  %181 = load i32, i32* @BIO_POOL_MASK, align 4
  %182 = sub nsw i32 %181, 1
  %183 = xor i32 %182, -1
  %184 = load %struct.bio*, %struct.bio** %12, align 8
  %185 = getelementptr inbounds %struct.bio, %struct.bio* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = and i32 %186, %183
  store i32 %187, i32* %185, align 8
  %188 = load i32, i32* @BIO_UPTODATE, align 4
  %189 = shl i32 1, %188
  %190 = load %struct.bio*, %struct.bio** %12, align 8
  %191 = getelementptr inbounds %struct.bio, %struct.bio* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = or i32 %192, %189
  store i32 %193, i32* %191, align 8
  %194 = load %struct.bio*, %struct.bio** %12, align 8
  %195 = getelementptr inbounds %struct.bio, %struct.bio* %194, i32 0, i32 1
  store i32 -1, i32* %195, align 4
  %196 = load i8*, i8** @READ, align 8
  %197 = load %struct.bio*, %struct.bio** %12, align 8
  %198 = getelementptr inbounds %struct.bio, %struct.bio* %197, i32 0, i32 9
  store i8* %196, i8** %198, align 8
  %199 = load %struct.bio*, %struct.bio** %12, align 8
  %200 = getelementptr inbounds %struct.bio, %struct.bio* %199, i32 0, i32 2
  store i64 0, i64* %200, align 8
  %201 = load %struct.bio*, %struct.bio** %12, align 8
  %202 = getelementptr inbounds %struct.bio, %struct.bio* %201, i32 0, i32 11
  store i64 0, i64* %202, align 8
  %203 = load %struct.bio*, %struct.bio** %12, align 8
  %204 = getelementptr inbounds %struct.bio, %struct.bio* %203, i32 0, i32 10
  store i64 0, i64* %204, align 8
  %205 = load %struct.bio*, %struct.bio** %12, align 8
  %206 = getelementptr inbounds %struct.bio, %struct.bio* %205, i32 0, i32 5
  store i64 0, i64* %206, align 8
  %207 = load %struct.bio*, %struct.bio** %12, align 8
  %208 = getelementptr inbounds %struct.bio, %struct.bio* %207, i32 0, i32 3
  store i8* null, i8** %208, align 8
  %209 = load %struct.bio*, %struct.bio** %12, align 8
  %210 = getelementptr inbounds %struct.bio, %struct.bio* %209, i32 0, i32 7
  store %struct.r1bio* null, %struct.r1bio** %210, align 8
  %211 = load %struct.r1conf*, %struct.r1conf** %10, align 8
  %212 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %211, i32 0, i32 3
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** %212, align 8
  %214 = load i32, i32* %16, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 0
  %218 = load %struct.md_rdev*, %struct.md_rdev** %217, align 8
  %219 = call %struct.md_rdev* @rcu_dereference(%struct.md_rdev* %218)
  store %struct.md_rdev* %219, %struct.md_rdev** %24, align 8
  %220 = load %struct.md_rdev*, %struct.md_rdev** %24, align 8
  %221 = icmp eq %struct.md_rdev* %220, null
  br i1 %221, label %228, label %222

222:                                              ; preds = %171
  %223 = load i32, i32* @Faulty, align 4
  %224 = load %struct.md_rdev*, %struct.md_rdev** %24, align 8
  %225 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %224, i32 0, i32 3
  %226 = call i64 @test_bit(i32 %223, i64* %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %236

228:                                              ; preds = %222, %171
  %229 = load i32, i32* %16, align 4
  %230 = load %struct.r1conf*, %struct.r1conf** %10, align 8
  %231 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  %233 = icmp slt i32 %229, %232
  br i1 %233, label %234, label %235

234:                                              ; preds = %228
  store i32 1, i32* %21, align 4
  br label %235

235:                                              ; preds = %234, %228
  br label %346

236:                                              ; preds = %222
  %237 = load i32, i32* @In_sync, align 4
  %238 = load %struct.md_rdev*, %struct.md_rdev** %24, align 8
  %239 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %238, i32 0, i32 3
  %240 = call i64 @test_bit(i32 %237, i64* %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %251, label %242

242:                                              ; preds = %236
  %243 = load i8*, i8** @WRITE, align 8
  %244 = load %struct.bio*, %struct.bio** %12, align 8
  %245 = getelementptr inbounds %struct.bio, %struct.bio* %244, i32 0, i32 9
  store i8* %243, i8** %245, align 8
  %246 = load i8*, i8** @end_sync_write, align 8
  %247 = load %struct.bio*, %struct.bio** %12, align 8
  %248 = getelementptr inbounds %struct.bio, %struct.bio* %247, i32 0, i32 3
  store i8* %246, i8** %248, align 8
  %249 = load i32, i32* %18, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %18, align 4
  br label %345

251:                                              ; preds = %236
  %252 = load i64, i64* @MaxSector, align 8
  store i64 %252, i64* %25, align 8
  %253 = load %struct.md_rdev*, %struct.md_rdev** %24, align 8
  %254 = load i64, i64* %7, align 8
  %255 = load i32, i32* %22, align 4
  %256 = call i64 @is_badblock(%struct.md_rdev* %253, i64 %254, i32 %255, i64* %25, i32* %26)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %285

258:                                              ; preds = %251
  %259 = load i64, i64* %25, align 8
  %260 = load i64, i64* %7, align 8
  %261 = icmp sgt i64 %259, %260
  br i1 %261, label %262, label %267

262:                                              ; preds = %258
  %263 = load i64, i64* %25, align 8
  %264 = load i64, i64* %7, align 8
  %265 = sub nsw i64 %263, %264
  %266 = trunc i64 %265 to i32
  store i32 %266, i32* %22, align 4
  br label %284

267:                                              ; preds = %258
  %268 = load i64, i64* %7, align 8
  %269 = load i64, i64* %25, align 8
  %270 = sub nsw i64 %268, %269
  %271 = load i32, i32* %26, align 4
  %272 = sext i32 %271 to i64
  %273 = sub nsw i64 %272, %270
  %274 = trunc i64 %273 to i32
  store i32 %274, i32* %26, align 4
  %275 = load i32, i32* %23, align 4
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %281, label %277

277:                                              ; preds = %267
  %278 = load i32, i32* %23, align 4
  %279 = load i32, i32* %26, align 4
  %280 = icmp sgt i32 %278, %279
  br i1 %280, label %281, label %283

281:                                              ; preds = %277, %267
  %282 = load i32, i32* %26, align 4
  store i32 %282, i32* %23, align 4
  br label %283

283:                                              ; preds = %281, %277
  br label %284

284:                                              ; preds = %283, %262
  br label %285

285:                                              ; preds = %284, %251
  %286 = load i64, i64* %7, align 8
  %287 = load i64, i64* %25, align 8
  %288 = icmp slt i64 %286, %287
  br i1 %288, label %289, label %316

289:                                              ; preds = %285
  %290 = load i32, i32* @WriteMostly, align 4
  %291 = load %struct.md_rdev*, %struct.md_rdev** %24, align 8
  %292 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %291, i32 0, i32 3
  %293 = call i64 @test_bit(i32 %290, i64* %292)
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %301

295:                                              ; preds = %289
  %296 = load i32, i32* %17, align 4
  %297 = icmp slt i32 %296, 0
  br i1 %297, label %298, label %300

298:                                              ; preds = %295
  %299 = load i32, i32* %16, align 4
  store i32 %299, i32* %17, align 4
  br label %300

300:                                              ; preds = %298, %295
  br label %307

301:                                              ; preds = %289
  %302 = load i32, i32* %15, align 4
  %303 = icmp slt i32 %302, 0
  br i1 %303, label %304, label %306

304:                                              ; preds = %301
  %305 = load i32, i32* %16, align 4
  store i32 %305, i32* %15, align 4
  br label %306

306:                                              ; preds = %304, %301
  br label %307

307:                                              ; preds = %306, %300
  %308 = load i8*, i8** @READ, align 8
  %309 = load %struct.bio*, %struct.bio** %12, align 8
  %310 = getelementptr inbounds %struct.bio, %struct.bio* %309, i32 0, i32 9
  store i8* %308, i8** %310, align 8
  %311 = load i8*, i8** @end_sync_read, align 8
  %312 = load %struct.bio*, %struct.bio** %12, align 8
  %313 = getelementptr inbounds %struct.bio, %struct.bio* %312, i32 0, i32 3
  store i8* %311, i8** %313, align 8
  %314 = load i32, i32* %19, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %19, align 4
  br label %344

316:                                              ; preds = %285
  %317 = load i32, i32* @WriteErrorSeen, align 4
  %318 = load %struct.md_rdev*, %struct.md_rdev** %24, align 8
  %319 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %318, i32 0, i32 3
  %320 = call i64 @test_bit(i32 %317, i64* %319)
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %343, label %322

322:                                              ; preds = %316
  %323 = load i32, i32* @MD_RECOVERY_SYNC, align 4
  %324 = load %struct.mddev*, %struct.mddev** %6, align 8
  %325 = getelementptr inbounds %struct.mddev, %struct.mddev* %324, i32 0, i32 4
  %326 = call i64 @test_bit(i32 %323, i64* %325)
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %343

328:                                              ; preds = %322
  %329 = load i32, i32* @MD_RECOVERY_CHECK, align 4
  %330 = load %struct.mddev*, %struct.mddev** %6, align 8
  %331 = getelementptr inbounds %struct.mddev, %struct.mddev* %330, i32 0, i32 4
  %332 = call i64 @test_bit(i32 %329, i64* %331)
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %343, label %334

334:                                              ; preds = %328
  %335 = load i8*, i8** @WRITE, align 8
  %336 = load %struct.bio*, %struct.bio** %12, align 8
  %337 = getelementptr inbounds %struct.bio, %struct.bio* %336, i32 0, i32 9
  store i8* %335, i8** %337, align 8
  %338 = load i8*, i8** @end_sync_write, align 8
  %339 = load %struct.bio*, %struct.bio** %12, align 8
  %340 = getelementptr inbounds %struct.bio, %struct.bio* %339, i32 0, i32 3
  store i8* %338, i8** %340, align 8
  %341 = load i32, i32* %18, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %18, align 4
  br label %343

343:                                              ; preds = %334, %328, %322, %316
  br label %344

344:                                              ; preds = %343, %307
  br label %345

345:                                              ; preds = %344, %242
  br label %346

346:                                              ; preds = %345, %235
  %347 = load %struct.bio*, %struct.bio** %12, align 8
  %348 = getelementptr inbounds %struct.bio, %struct.bio* %347, i32 0, i32 3
  %349 = load i8*, i8** %348, align 8
  %350 = icmp ne i8* %349, null
  br i1 %350, label %351, label %370

351:                                              ; preds = %346
  %352 = load %struct.md_rdev*, %struct.md_rdev** %24, align 8
  %353 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %352, i32 0, i32 2
  %354 = call i32 @atomic_inc(i32* %353)
  %355 = load i64, i64* %7, align 8
  %356 = load %struct.md_rdev*, %struct.md_rdev** %24, align 8
  %357 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %356, i32 0, i32 0
  %358 = load i64, i64* %357, align 8
  %359 = add nsw i64 %355, %358
  %360 = load %struct.bio*, %struct.bio** %12, align 8
  %361 = getelementptr inbounds %struct.bio, %struct.bio* %360, i32 0, i32 8
  store i64 %359, i64* %361, align 8
  %362 = load %struct.md_rdev*, %struct.md_rdev** %24, align 8
  %363 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %362, i32 0, i32 1
  %364 = load i32, i32* %363, align 8
  %365 = load %struct.bio*, %struct.bio** %12, align 8
  %366 = getelementptr inbounds %struct.bio, %struct.bio* %365, i32 0, i32 4
  store i32 %364, i32* %366, align 8
  %367 = load %struct.r1bio*, %struct.r1bio** %11, align 8
  %368 = load %struct.bio*, %struct.bio** %12, align 8
  %369 = getelementptr inbounds %struct.bio, %struct.bio* %368, i32 0, i32 7
  store %struct.r1bio* %367, %struct.r1bio** %369, align 8
  br label %370

370:                                              ; preds = %351, %346
  br label %371

371:                                              ; preds = %370
  %372 = load i32, i32* %16, align 4
  %373 = add nsw i32 %372, 1
  store i32 %373, i32* %16, align 4
  br label %164

374:                                              ; preds = %164
  %375 = call i32 (...) @rcu_read_unlock()
  %376 = load i32, i32* %15, align 4
  %377 = icmp slt i32 %376, 0
  br i1 %377, label %378, label %380

378:                                              ; preds = %374
  %379 = load i32, i32* %17, align 4
  store i32 %379, i32* %15, align 4
  br label %380

380:                                              ; preds = %378, %374
  %381 = load i32, i32* %15, align 4
  %382 = load %struct.r1bio*, %struct.r1bio** %11, align 8
  %383 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %382, i32 0, i32 0
  store i32 %381, i32* %383, align 8
  %384 = load i32, i32* %19, align 4
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %386, label %456

386:                                              ; preds = %380
  %387 = load i32, i32* %23, align 4
  %388 = icmp sgt i32 %387, 0
  br i1 %388, label %389, label %456

389:                                              ; preds = %386
  store i32 1, i32* %27, align 4
  store i32 0, i32* %16, align 4
  br label %390

390:                                              ; preds = %430, %389
  %391 = load i32, i32* %16, align 4
  %392 = load %struct.r1conf*, %struct.r1conf** %10, align 8
  %393 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %392, i32 0, i32 1
  %394 = load i32, i32* %393, align 8
  %395 = mul nsw i32 %394, 2
  %396 = icmp slt i32 %391, %395
  br i1 %396, label %397, label %433

397:                                              ; preds = %390
  %398 = load %struct.r1bio*, %struct.r1bio** %11, align 8
  %399 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %398, i32 0, i32 1
  %400 = load %struct.bio**, %struct.bio*** %399, align 8
  %401 = load i32, i32* %16, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds %struct.bio*, %struct.bio** %400, i64 %402
  %404 = load %struct.bio*, %struct.bio** %403, align 8
  %405 = getelementptr inbounds %struct.bio, %struct.bio* %404, i32 0, i32 3
  %406 = load i8*, i8** %405, align 8
  %407 = load i8*, i8** @end_sync_write, align 8
  %408 = icmp eq i8* %406, %407
  br i1 %408, label %409, label %429

409:                                              ; preds = %397
  %410 = load %struct.r1conf*, %struct.r1conf** %10, align 8
  %411 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %410, i32 0, i32 3
  %412 = load %struct.TYPE_3__*, %struct.TYPE_3__** %411, align 8
  %413 = load i32, i32* %16, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %412, i64 %414
  %416 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %415, i32 0, i32 0
  %417 = load %struct.md_rdev*, %struct.md_rdev** %416, align 8
  store %struct.md_rdev* %417, %struct.md_rdev** %28, align 8
  %418 = load %struct.md_rdev*, %struct.md_rdev** %28, align 8
  %419 = load i64, i64* %7, align 8
  %420 = load i32, i32* %23, align 4
  %421 = call i64 @rdev_set_badblocks(%struct.md_rdev* %418, i64 %419, i32 %420, i32 0)
  %422 = icmp ne i64 %421, 0
  br i1 %422, label %423, label %426

423:                                              ; preds = %409
  %424 = load i32, i32* %27, align 4
  %425 = icmp ne i32 %424, 0
  br label %426

426:                                              ; preds = %423, %409
  %427 = phi i1 [ false, %409 ], [ %425, %423 ]
  %428 = zext i1 %427 to i32
  store i32 %428, i32* %27, align 4
  br label %429

429:                                              ; preds = %426, %397
  br label %430

430:                                              ; preds = %429
  %431 = load i32, i32* %16, align 4
  %432 = add nsw i32 %431, 1
  store i32 %432, i32* %16, align 4
  br label %390

433:                                              ; preds = %390
  %434 = load i32, i32* @MD_CHANGE_DEVS, align 4
  %435 = load %struct.mddev*, %struct.mddev** %6, align 8
  %436 = getelementptr inbounds %struct.mddev, %struct.mddev* %435, i32 0, i32 7
  %437 = call i32 @set_bit(i32 %434, i64* %436)
  %438 = load i32*, i32** %8, align 8
  store i32 1, i32* %438, align 4
  %439 = load %struct.r1bio*, %struct.r1bio** %11, align 8
  %440 = call i32 @put_buf(%struct.r1bio* %439)
  %441 = load i32, i32* %27, align 4
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %453, label %443

443:                                              ; preds = %433
  %444 = load %struct.mddev*, %struct.mddev** %6, align 8
  %445 = getelementptr inbounds %struct.mddev, %struct.mddev* %444, i32 0, i32 6
  %446 = load i32, i32* %445, align 8
  %447 = load %struct.r1conf*, %struct.r1conf** %10, align 8
  %448 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %447, i32 0, i32 2
  store i32 %446, i32* %448, align 4
  %449 = load i32, i32* @MD_RECOVERY_INTR, align 4
  %450 = load %struct.mddev*, %struct.mddev** %6, align 8
  %451 = getelementptr inbounds %struct.mddev, %struct.mddev* %450, i32 0, i32 4
  %452 = call i32 @set_bit(i32 %449, i64* %451)
  store i64 0, i64* %5, align 8
  br label %776

453:                                              ; preds = %433
  %454 = load i32, i32* %23, align 4
  %455 = sext i32 %454 to i64
  store i64 %455, i64* %5, align 8
  br label %776

456:                                              ; preds = %386, %380
  %457 = load i32, i32* %23, align 4
  %458 = icmp sgt i32 %457, 0
  br i1 %458, label %459, label %465

459:                                              ; preds = %456
  %460 = load i32, i32* %23, align 4
  %461 = load i32, i32* %22, align 4
  %462 = icmp slt i32 %460, %461
  br i1 %462, label %463, label %465

463:                                              ; preds = %459
  %464 = load i32, i32* %23, align 4
  store i32 %464, i32* %22, align 4
  br label %465

465:                                              ; preds = %463, %459, %456
  %466 = load i32, i32* @MD_RECOVERY_SYNC, align 4
  %467 = load %struct.mddev*, %struct.mddev** %6, align 8
  %468 = getelementptr inbounds %struct.mddev, %struct.mddev* %467, i32 0, i32 4
  %469 = call i64 @test_bit(i32 %466, i64* %468)
  %470 = icmp ne i64 %469, 0
  br i1 %470, label %471, label %479

471:                                              ; preds = %465
  %472 = load i32, i32* %19, align 4
  %473 = icmp sgt i32 %472, 0
  br i1 %473, label %474, label %479

474:                                              ; preds = %471
  %475 = load i32, i32* %19, align 4
  %476 = sub nsw i32 %475, 1
  %477 = load i32, i32* %18, align 4
  %478 = add nsw i32 %477, %476
  store i32 %478, i32* %18, align 4
  br label %479

479:                                              ; preds = %474, %471, %465
  %480 = load i32, i32* %18, align 4
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %485, label %482

482:                                              ; preds = %479
  %483 = load i32, i32* %19, align 4
  %484 = icmp eq i32 %483, 0
  br i1 %484, label %485, label %501

485:                                              ; preds = %482, %479
  %486 = load i32, i32* %23, align 4
  %487 = icmp sgt i32 %486, 0
  br i1 %487, label %488, label %493

488:                                              ; preds = %485
  %489 = load i64, i64* %7, align 8
  %490 = load i32, i32* %23, align 4
  %491 = sext i32 %490 to i64
  %492 = add nsw i64 %489, %491
  store i64 %492, i64* %13, align 8
  br label %493

493:                                              ; preds = %488, %485
  %494 = load i64, i64* %13, align 8
  %495 = load i64, i64* %7, align 8
  %496 = sub nsw i64 %494, %495
  store i64 %496, i64* %29, align 8
  %497 = load i32*, i32** %8, align 8
  store i32 1, i32* %497, align 4
  %498 = load %struct.r1bio*, %struct.r1bio** %11, align 8
  %499 = call i32 @put_buf(%struct.r1bio* %498)
  %500 = load i64, i64* %29, align 8
  store i64 %500, i64* %5, align 8
  br label %776

501:                                              ; preds = %482
  %502 = load i64, i64* %13, align 8
  %503 = load %struct.mddev*, %struct.mddev** %6, align 8
  %504 = getelementptr inbounds %struct.mddev, %struct.mddev* %503, i32 0, i32 3
  %505 = load i64, i64* %504, align 8
  %506 = icmp sgt i64 %502, %505
  br i1 %506, label %507, label %511

507:                                              ; preds = %501
  %508 = load %struct.mddev*, %struct.mddev** %6, align 8
  %509 = getelementptr inbounds %struct.mddev, %struct.mddev* %508, i32 0, i32 3
  %510 = load i64, i64* %509, align 8
  store i64 %510, i64* %13, align 8
  br label %511

511:                                              ; preds = %507, %501
  %512 = load i64, i64* %13, align 8
  %513 = load i64, i64* %7, align 8
  %514 = load i32, i32* %22, align 4
  %515 = sext i32 %514 to i64
  %516 = add nsw i64 %513, %515
  %517 = icmp sgt i64 %512, %516
  br i1 %517, label %518, label %523

518:                                              ; preds = %511
  %519 = load i64, i64* %7, align 8
  %520 = load i32, i32* %22, align 4
  %521 = sext i32 %520 to i64
  %522 = add nsw i64 %519, %521
  store i64 %522, i64* %13, align 8
  br label %523

523:                                              ; preds = %518, %511
  store i64 0, i64* %14, align 8
  store i64 0, i64* %20, align 8
  br label %524

524:                                              ; preds = %687, %523
  %525 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %525, i32* %31, align 4
  %526 = load i64, i64* %7, align 8
  %527 = load i32, i32* %31, align 4
  %528 = ashr i32 %527, 9
  %529 = sext i32 %528 to i64
  %530 = add nsw i64 %526, %529
  %531 = load i64, i64* %13, align 8
  %532 = icmp sgt i64 %530, %531
  br i1 %532, label %533, label %539

533:                                              ; preds = %524
  %534 = load i64, i64* %13, align 8
  %535 = load i64, i64* %7, align 8
  %536 = sub nsw i64 %534, %535
  %537 = shl i64 %536, 9
  %538 = trunc i64 %537 to i32
  store i32 %538, i32* %31, align 4
  br label %539

539:                                              ; preds = %533, %524
  %540 = load i32, i32* %31, align 4
  %541 = icmp eq i32 %540, 0
  br i1 %541, label %542, label %543

542:                                              ; preds = %539
  br label %699

543:                                              ; preds = %539
  %544 = load i64, i64* %20, align 8
  %545 = icmp eq i64 %544, 0
  br i1 %545, label %546, label %584

546:                                              ; preds = %543
  %547 = load %struct.mddev*, %struct.mddev** %6, align 8
  %548 = getelementptr inbounds %struct.mddev, %struct.mddev* %547, i32 0, i32 5
  %549 = load i32*, i32** %548, align 8
  %550 = load i64, i64* %7, align 8
  %551 = load i32, i32* %21, align 4
  %552 = call i32 @bitmap_start_sync(i32* %549, i64 %550, i64* %20, i32 %551)
  %553 = icmp ne i32 %552, 0
  br i1 %553, label %566, label %554

554:                                              ; preds = %546
  %555 = load %struct.r1conf*, %struct.r1conf** %10, align 8
  %556 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %555, i32 0, i32 0
  %557 = load i64, i64* %556, align 8
  %558 = icmp ne i64 %557, 0
  br i1 %558, label %566, label %559

559:                                              ; preds = %554
  %560 = load i32, i32* @MD_RECOVERY_REQUESTED, align 4
  %561 = load %struct.mddev*, %struct.mddev** %6, align 8
  %562 = getelementptr inbounds %struct.mddev, %struct.mddev* %561, i32 0, i32 4
  %563 = call i64 @test_bit(i32 %560, i64* %562)
  %564 = icmp ne i64 %563, 0
  br i1 %564, label %566, label %565

565:                                              ; preds = %559
  br label %699

566:                                              ; preds = %559, %554, %546
  %567 = load i64, i64* %20, align 8
  %568 = load i32, i32* @PAGE_SIZE, align 4
  %569 = ashr i32 %568, 9
  %570 = sext i32 %569 to i64
  %571 = icmp slt i64 %567, %570
  %572 = zext i1 %571 to i32
  %573 = call i32 @BUG_ON(i32 %572)
  %574 = load i32, i32* %31, align 4
  %575 = ashr i32 %574, 9
  %576 = sext i32 %575 to i64
  %577 = load i64, i64* %20, align 8
  %578 = icmp sgt i64 %576, %577
  br i1 %578, label %579, label %583

579:                                              ; preds = %566
  %580 = load i64, i64* %20, align 8
  %581 = shl i64 %580, 9
  %582 = trunc i64 %581 to i32
  store i32 %582, i32* %31, align 4
  br label %583

583:                                              ; preds = %579, %566
  br label %584

584:                                              ; preds = %583, %543
  store i32 0, i32* %16, align 4
  br label %585

585:                                              ; preds = %668, %584
  %586 = load i32, i32* %16, align 4
  %587 = load %struct.r1conf*, %struct.r1conf** %10, align 8
  %588 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %587, i32 0, i32 1
  %589 = load i32, i32* %588, align 8
  %590 = mul nsw i32 %589, 2
  %591 = icmp slt i32 %586, %590
  br i1 %591, label %592, label %671

592:                                              ; preds = %585
  %593 = load %struct.r1bio*, %struct.r1bio** %11, align 8
  %594 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %593, i32 0, i32 1
  %595 = load %struct.bio**, %struct.bio*** %594, align 8
  %596 = load i32, i32* %16, align 4
  %597 = sext i32 %596 to i64
  %598 = getelementptr inbounds %struct.bio*, %struct.bio** %595, i64 %597
  %599 = load %struct.bio*, %struct.bio** %598, align 8
  store %struct.bio* %599, %struct.bio** %12, align 8
  %600 = load %struct.bio*, %struct.bio** %12, align 8
  %601 = getelementptr inbounds %struct.bio, %struct.bio* %600, i32 0, i32 3
  %602 = load i8*, i8** %601, align 8
  %603 = icmp ne i8* %602, null
  br i1 %603, label %604, label %667

604:                                              ; preds = %592
  %605 = load %struct.bio*, %struct.bio** %12, align 8
  %606 = getelementptr inbounds %struct.bio, %struct.bio* %605, i32 0, i32 6
  %607 = load %struct.TYPE_4__*, %struct.TYPE_4__** %606, align 8
  %608 = load %struct.bio*, %struct.bio** %12, align 8
  %609 = getelementptr inbounds %struct.bio, %struct.bio* %608, i32 0, i32 2
  %610 = load i64, i64* %609, align 8
  %611 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %607, i64 %610
  %612 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %611, i32 0, i32 0
  %613 = load %struct.page*, %struct.page** %612, align 8
  store %struct.page* %613, %struct.page** %30, align 8
  %614 = load %struct.bio*, %struct.bio** %12, align 8
  %615 = load %struct.page*, %struct.page** %30, align 8
  %616 = load i32, i32* %31, align 4
  %617 = call i64 @bio_add_page(%struct.bio* %614, %struct.page* %615, i32 %616, i32 0)
  %618 = icmp eq i64 %617, 0
  br i1 %618, label %619, label %666

619:                                              ; preds = %604
  %620 = load %struct.page*, %struct.page** %30, align 8
  %621 = load %struct.bio*, %struct.bio** %12, align 8
  %622 = getelementptr inbounds %struct.bio, %struct.bio* %621, i32 0, i32 6
  %623 = load %struct.TYPE_4__*, %struct.TYPE_4__** %622, align 8
  %624 = load %struct.bio*, %struct.bio** %12, align 8
  %625 = getelementptr inbounds %struct.bio, %struct.bio* %624, i32 0, i32 2
  %626 = load i64, i64* %625, align 8
  %627 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %623, i64 %626
  %628 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %627, i32 0, i32 0
  store %struct.page* %620, %struct.page** %628, align 8
  br label %629

629:                                              ; preds = %647, %646, %619
  %630 = load i32, i32* %16, align 4
  %631 = icmp sgt i32 %630, 0
  br i1 %631, label %632, label %665

632:                                              ; preds = %629
  %633 = load i32, i32* %16, align 4
  %634 = add nsw i32 %633, -1
  store i32 %634, i32* %16, align 4
  %635 = load %struct.r1bio*, %struct.r1bio** %11, align 8
  %636 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %635, i32 0, i32 1
  %637 = load %struct.bio**, %struct.bio*** %636, align 8
  %638 = load i32, i32* %16, align 4
  %639 = sext i32 %638 to i64
  %640 = getelementptr inbounds %struct.bio*, %struct.bio** %637, i64 %639
  %641 = load %struct.bio*, %struct.bio** %640, align 8
  store %struct.bio* %641, %struct.bio** %12, align 8
  %642 = load %struct.bio*, %struct.bio** %12, align 8
  %643 = getelementptr inbounds %struct.bio, %struct.bio* %642, i32 0, i32 3
  %644 = load i8*, i8** %643, align 8
  %645 = icmp eq i8* %644, null
  br i1 %645, label %646, label %647

646:                                              ; preds = %632
  br label %629

647:                                              ; preds = %632
  %648 = load %struct.bio*, %struct.bio** %12, align 8
  %649 = getelementptr inbounds %struct.bio, %struct.bio* %648, i32 0, i32 2
  %650 = load i64, i64* %649, align 8
  %651 = add i64 %650, -1
  store i64 %651, i64* %649, align 8
  %652 = load i32, i32* %31, align 4
  %653 = sext i32 %652 to i64
  %654 = load %struct.bio*, %struct.bio** %12, align 8
  %655 = getelementptr inbounds %struct.bio, %struct.bio* %654, i32 0, i32 5
  %656 = load i64, i64* %655, align 8
  %657 = sub nsw i64 %656, %653
  store i64 %657, i64* %655, align 8
  %658 = load i32, i32* @BIO_SEG_VALID, align 4
  %659 = shl i32 1, %658
  %660 = xor i32 %659, -1
  %661 = load %struct.bio*, %struct.bio** %12, align 8
  %662 = getelementptr inbounds %struct.bio, %struct.bio* %661, i32 0, i32 0
  %663 = load i32, i32* %662, align 8
  %664 = and i32 %663, %660
  store i32 %664, i32* %662, align 8
  br label %629

665:                                              ; preds = %629
  br label %700

666:                                              ; preds = %604
  br label %667

667:                                              ; preds = %666, %592
  br label %668

668:                                              ; preds = %667
  %669 = load i32, i32* %16, align 4
  %670 = add nsw i32 %669, 1
  store i32 %670, i32* %16, align 4
  br label %585

671:                                              ; preds = %585
  %672 = load i32, i32* %31, align 4
  %673 = ashr i32 %672, 9
  %674 = sext i32 %673 to i64
  %675 = load i64, i64* %14, align 8
  %676 = add nsw i64 %675, %674
  store i64 %676, i64* %14, align 8
  %677 = load i32, i32* %31, align 4
  %678 = ashr i32 %677, 9
  %679 = sext i32 %678 to i64
  %680 = load i64, i64* %7, align 8
  %681 = add nsw i64 %680, %679
  store i64 %681, i64* %7, align 8
  %682 = load i32, i32* %31, align 4
  %683 = ashr i32 %682, 9
  %684 = sext i32 %683 to i64
  %685 = load i64, i64* %20, align 8
  %686 = sub nsw i64 %685, %684
  store i64 %686, i64* %20, align 8
  br label %687

687:                                              ; preds = %671
  %688 = load %struct.r1bio*, %struct.r1bio** %11, align 8
  %689 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %688, i32 0, i32 1
  %690 = load %struct.bio**, %struct.bio*** %689, align 8
  %691 = load i32, i32* %15, align 4
  %692 = sext i32 %691 to i64
  %693 = getelementptr inbounds %struct.bio*, %struct.bio** %690, i64 %692
  %694 = load %struct.bio*, %struct.bio** %693, align 8
  %695 = getelementptr inbounds %struct.bio, %struct.bio* %694, i32 0, i32 2
  %696 = load i64, i64* %695, align 8
  %697 = load i64, i64* @RESYNC_PAGES, align 8
  %698 = icmp ult i64 %696, %697
  br i1 %698, label %524, label %699

699:                                              ; preds = %687, %565, %542
  br label %700

700:                                              ; preds = %699, %665
  %701 = load i64, i64* %14, align 8
  %702 = load %struct.r1bio*, %struct.r1bio** %11, align 8
  %703 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %702, i32 0, i32 3
  store i64 %701, i64* %703, align 8
  %704 = load i32, i32* @MD_RECOVERY_REQUESTED, align 4
  %705 = load %struct.mddev*, %struct.mddev** %6, align 8
  %706 = getelementptr inbounds %struct.mddev, %struct.mddev* %705, i32 0, i32 4
  %707 = call i64 @test_bit(i32 %704, i64* %706)
  %708 = icmp ne i64 %707, 0
  br i1 %708, label %709, label %754

709:                                              ; preds = %700
  %710 = load %struct.r1bio*, %struct.r1bio** %11, align 8
  %711 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %710, i32 0, i32 2
  %712 = load i32, i32* %19, align 4
  %713 = call i32 @atomic_set(i32* %711, i32 %712)
  store i32 0, i32* %16, align 4
  br label %714

714:                                              ; preds = %750, %709
  %715 = load i32, i32* %16, align 4
  %716 = load %struct.r1conf*, %struct.r1conf** %10, align 8
  %717 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %716, i32 0, i32 1
  %718 = load i32, i32* %717, align 8
  %719 = mul nsw i32 %718, 2
  %720 = icmp slt i32 %715, %719
  br i1 %720, label %721, label %724

721:                                              ; preds = %714
  %722 = load i32, i32* %19, align 4
  %723 = icmp ne i32 %722, 0
  br label %724

724:                                              ; preds = %721, %714
  %725 = phi i1 [ false, %714 ], [ %723, %721 ]
  br i1 %725, label %726, label %753

726:                                              ; preds = %724
  %727 = load %struct.r1bio*, %struct.r1bio** %11, align 8
  %728 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %727, i32 0, i32 1
  %729 = load %struct.bio**, %struct.bio*** %728, align 8
  %730 = load i32, i32* %16, align 4
  %731 = sext i32 %730 to i64
  %732 = getelementptr inbounds %struct.bio*, %struct.bio** %729, i64 %731
  %733 = load %struct.bio*, %struct.bio** %732, align 8
  store %struct.bio* %733, %struct.bio** %12, align 8
  %734 = load %struct.bio*, %struct.bio** %12, align 8
  %735 = getelementptr inbounds %struct.bio, %struct.bio* %734, i32 0, i32 3
  %736 = load i8*, i8** %735, align 8
  %737 = load i8*, i8** @end_sync_read, align 8
  %738 = icmp eq i8* %736, %737
  br i1 %738, label %739, label %749

739:                                              ; preds = %726
  %740 = load i32, i32* %19, align 4
  %741 = add nsw i32 %740, -1
  store i32 %741, i32* %19, align 4
  %742 = load %struct.bio*, %struct.bio** %12, align 8
  %743 = getelementptr inbounds %struct.bio, %struct.bio* %742, i32 0, i32 4
  %744 = load i32, i32* %743, align 8
  %745 = load i64, i64* %14, align 8
  %746 = call i32 @md_sync_acct(i32 %744, i64 %745)
  %747 = load %struct.bio*, %struct.bio** %12, align 8
  %748 = call i32 @generic_make_request(%struct.bio* %747)
  br label %749

749:                                              ; preds = %739, %726
  br label %750

750:                                              ; preds = %749
  %751 = load i32, i32* %16, align 4
  %752 = add nsw i32 %751, 1
  store i32 %752, i32* %16, align 4
  br label %714

753:                                              ; preds = %724
  br label %774

754:                                              ; preds = %700
  %755 = load %struct.r1bio*, %struct.r1bio** %11, align 8
  %756 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %755, i32 0, i32 2
  %757 = call i32 @atomic_set(i32* %756, i32 1)
  %758 = load %struct.r1bio*, %struct.r1bio** %11, align 8
  %759 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %758, i32 0, i32 1
  %760 = load %struct.bio**, %struct.bio*** %759, align 8
  %761 = load %struct.r1bio*, %struct.r1bio** %11, align 8
  %762 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %761, i32 0, i32 0
  %763 = load i32, i32* %762, align 8
  %764 = sext i32 %763 to i64
  %765 = getelementptr inbounds %struct.bio*, %struct.bio** %760, i64 %764
  %766 = load %struct.bio*, %struct.bio** %765, align 8
  store %struct.bio* %766, %struct.bio** %12, align 8
  %767 = load %struct.bio*, %struct.bio** %12, align 8
  %768 = getelementptr inbounds %struct.bio, %struct.bio* %767, i32 0, i32 4
  %769 = load i32, i32* %768, align 8
  %770 = load i64, i64* %14, align 8
  %771 = call i32 @md_sync_acct(i32 %769, i64 %770)
  %772 = load %struct.bio*, %struct.bio** %12, align 8
  %773 = call i32 @generic_make_request(%struct.bio* %772)
  br label %774

774:                                              ; preds = %754, %753
  %775 = load i64, i64* %14, align 8
  store i64 %775, i64* %5, align 8
  br label %776

776:                                              ; preds = %774, %493, %453, %443, %122, %99, %70, %44
  %777 = load i64, i64* %5, align 8
  ret i64 %777
}

declare dso_local i64 @init_resync(%struct.r1conf*) #1

declare dso_local i32 @bitmap_end_sync(i32*, i64, i64*, i32) #1

declare dso_local i32 @bitmap_close_sync(i32*) #1

declare dso_local i32 @close_sync(%struct.r1conf*) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @bitmap_start_sync(i32*, i64, i64*, i32) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i32 @bitmap_cond_end_sync(i32*, i64) #1

declare dso_local %struct.r1bio* @mempool_alloc(i32, i32) #1

declare dso_local i32 @raise_barrier(%struct.r1conf*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local %struct.md_rdev* @rcu_dereference(%struct.md_rdev*) #1

declare dso_local i64 @is_badblock(%struct.md_rdev*, i64, i32, i64*, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @rdev_set_badblocks(%struct.md_rdev*, i64, i32, i32) #1

declare dso_local i32 @put_buf(%struct.r1bio*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @bio_add_page(%struct.bio*, %struct.page*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @md_sync_acct(i32, i64) #1

declare dso_local i32 @generic_make_request(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
