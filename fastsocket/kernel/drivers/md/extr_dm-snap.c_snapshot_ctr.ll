; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap.c_snapshot_ctr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap.c_snapshot_ctr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i8*, i32, %struct.dm_snapshot*, i32 }
%struct.dm_snapshot = type { i32, i32, i32, %struct.TYPE_6__*, i32, i32, i32, i8*, i8*, i32, i32*, i32, i64, i64, i64, i64, i32, i32, i32, i32, i64, %struct.dm_target* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*, i32, i8*)* }

@EINVAL = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"requires exactly 4 arguments\00", align 1
@FMODE_WRITE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Cannot allocate private snapshot structure\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Cannot get origin device\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Cannot get COW device\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Couldn't create exception store\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Unable to allocate hash table space\00", align 1
@dm_kcopyd_throttle = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"Could not create kcopyd client\00", align 1
@MIN_IOS = common dso_local global i32 0, align 4
@pending_cache = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [50 x i8] c"Could not allocate mempool for pending exceptions\00", align 1
@tracked_chunk_cache = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [60 x i8] c"Could not allocate tracked_chunk mempool for tracking reads\00", align 1
@DM_TRACKED_CHUNK_HASH_SIZE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [41 x i8] c"Snapshot origin struct allocation failed\00", align 1
@dm_add_exception = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [33 x i8] c"Failed to read snapshot metadata\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"Snapshot is marked invalid.\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"Chunk size not set\00", align 1
@exception_cache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32, i8**)* @snapshot_ctr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snapshot_ctr(%struct.dm_target* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_target*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.dm_snapshot*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %10, align 4
  store i32 1, i32* %14, align 4
  %18 = load i32, i32* @FMODE_READ, align 4
  store i32 %18, i32* %15, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 4
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %23 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %22, i32 0, i32 0
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8** %23, align 8
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %10, align 4
  br label %333

26:                                               ; preds = %3
  %27 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %28 = call i64 @dm_target_is_snapshot_merge(%struct.dm_target* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  store i32 2, i32* %14, align 4
  %31 = load i32, i32* @FMODE_WRITE, align 4
  store i32 %31, i32* %15, align 4
  br label %32

32:                                               ; preds = %30, %26
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.dm_snapshot* @kmalloc(i32 144, i32 %33)
  store %struct.dm_snapshot* %34, %struct.dm_snapshot** %8, align 8
  %35 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %36 = icmp ne %struct.dm_snapshot* %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %39 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %38, i32 0, i32 0
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8** %39, align 8
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %10, align 4
  br label %333

42:                                               ; preds = %32
  %43 = load i8**, i8*** %7, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 0
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %11, align 8
  %46 = load i8**, i8*** %7, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i32 1
  store i8** %47, i8*** %7, align 8
  %48 = load i32, i32* %6, align 4
  %49 = add i32 %48, -1
  store i32 %49, i32* %6, align 4
  %50 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = load i32, i32* %15, align 4
  %53 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %54 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %53, i32 0, i32 1
  %55 = call i32 @dm_get_device(%struct.dm_target* %50, i8* %51, i32 %52, i32* %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %42
  %59 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %60 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %59, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8** %60, align 8
  br label %330

61:                                               ; preds = %42
  %62 = load i8**, i8*** %7, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 0
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %12, align 8
  %65 = load i8**, i8*** %7, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i32 1
  store i8** %66, i8*** %7, align 8
  %67 = load i32, i32* %6, align 4
  %68 = add i32 %67, -1
  store i32 %68, i32* %6, align 4
  %69 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %70 = load i8*, i8** %12, align 8
  %71 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %72 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @dm_table_get_mode(i32 %73)
  %75 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %76 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %75, i32 0, i32 2
  %77 = call i32 @dm_get_device(%struct.dm_target* %69, i8* %70, i32 %74, i32* %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %61
  %81 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %82 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %81, i32 0, i32 0
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8** %82, align 8
  br label %324

83:                                               ; preds = %61
  %84 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %85 = load i32, i32* %6, align 4
  %86 = load i8**, i8*** %7, align 8
  %87 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %88 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %89 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %88, i32 0, i32 3
  %90 = call i32 @dm_exception_store_create(%struct.dm_target* %84, i32 %85, i8** %86, %struct.dm_snapshot* %87, i32* %13, %struct.TYPE_6__** %89)
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %83
  %94 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %95 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %94, i32 0, i32 0
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8** %95, align 8
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %10, align 4
  br label %318

98:                                               ; preds = %83
  %99 = load i32, i32* %13, align 4
  %100 = load i8**, i8*** %7, align 8
  %101 = zext i32 %99 to i64
  %102 = getelementptr inbounds i8*, i8** %100, i64 %101
  store i8** %102, i8*** %7, align 8
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* %6, align 4
  %105 = sub i32 %104, %103
  store i32 %105, i32* %6, align 4
  %106 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %107 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %108 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %107, i32 0, i32 21
  store %struct.dm_target* %106, %struct.dm_target** %108, align 8
  %109 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %110 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %109, i32 0, i32 0
  store i32 1, i32* %110, align 8
  %111 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %112 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %111, i32 0, i32 20
  store i64 0, i64* %112, align 8
  %113 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %114 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %113, i32 0, i32 19
  %115 = call i32 @atomic_set(i32* %114, i32 0)
  %116 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %117 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %116, i32 0, i32 18
  %118 = call i32 @init_rwsem(i32* %117)
  %119 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %120 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %119, i32 0, i32 17
  %121 = call i32 @INIT_LIST_HEAD(i32* %120)
  %122 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %123 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %122, i32 0, i32 16
  %124 = call i32 @spin_lock_init(i32* %123)
  %125 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %126 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %125, i32 0, i32 15
  store i64 0, i64* %126, align 8
  %127 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %128 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %127, i32 0, i32 14
  store i64 0, i64* %128, align 8
  %129 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %130 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %129, i32 0, i32 13
  store i64 0, i64* %130, align 8
  %131 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %132 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %131, i32 0, i32 12
  store i64 0, i64* %132, align 8
  %133 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %134 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %133, i32 0, i32 11
  %135 = call i32 @bio_list_init(i32* %134)
  %136 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %137 = call i64 @init_hash_tables(%struct.dm_snapshot* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %98
  %140 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %141 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %140, i32 0, i32 0
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i8** %141, align 8
  %142 = load i32, i32* @ENOMEM, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %10, align 4
  br label %313

144:                                              ; preds = %98
  %145 = call i32 @dm_kcopyd_client_create(i32* @dm_kcopyd_throttle)
  %146 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %147 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %146, i32 0, i32 6
  store i32 %145, i32* %147, align 8
  %148 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %149 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %148, i32 0, i32 6
  %150 = load i32, i32* %149, align 8
  %151 = call i64 @IS_ERR(i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %144
  %154 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %155 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %154, i32 0, i32 6
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @PTR_ERR(i32 %156)
  store i32 %157, i32* %10, align 4
  %158 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %159 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %158, i32 0, i32 0
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8** %159, align 8
  br label %304

160:                                              ; preds = %144
  %161 = load i32, i32* @MIN_IOS, align 4
  %162 = load i32, i32* @pending_cache, align 4
  %163 = call i8* @mempool_create_slab_pool(i32 %161, i32 %162)
  %164 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %165 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %164, i32 0, i32 7
  store i8* %163, i8** %165, align 8
  %166 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %167 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %166, i32 0, i32 7
  %168 = load i8*, i8** %167, align 8
  %169 = icmp ne i8* %168, null
  br i1 %169, label %175, label %170

170:                                              ; preds = %160
  %171 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %172 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %171, i32 0, i32 0
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i8** %172, align 8
  %173 = load i32, i32* @ENOMEM, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %10, align 4
  br label %299

175:                                              ; preds = %160
  %176 = load i32, i32* @MIN_IOS, align 4
  %177 = load i32, i32* @tracked_chunk_cache, align 4
  %178 = call i8* @mempool_create_slab_pool(i32 %176, i32 %177)
  %179 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %180 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %179, i32 0, i32 8
  store i8* %178, i8** %180, align 8
  %181 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %182 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %181, i32 0, i32 8
  %183 = load i8*, i8** %182, align 8
  %184 = icmp ne i8* %183, null
  br i1 %184, label %188, label %185

185:                                              ; preds = %175
  %186 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %187 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %186, i32 0, i32 0
  store i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.8, i64 0, i64 0), i8** %187, align 8
  br label %294

188:                                              ; preds = %175
  store i32 0, i32* %9, align 4
  br label %189

189:                                              ; preds = %201, %188
  %190 = load i32, i32* %9, align 4
  %191 = load i32, i32* @DM_TRACKED_CHUNK_HASH_SIZE, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %204

193:                                              ; preds = %189
  %194 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %195 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %194, i32 0, i32 10
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* %9, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  %200 = call i32 @INIT_HLIST_HEAD(i32* %199)
  br label %201

201:                                              ; preds = %193
  %202 = load i32, i32* %9, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %9, align 4
  br label %189

204:                                              ; preds = %189
  %205 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %206 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %205, i32 0, i32 9
  %207 = call i32 @spin_lock_init(i32* %206)
  %208 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %209 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %210 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %209, i32 0, i32 2
  store %struct.dm_snapshot* %208, %struct.dm_snapshot** %210, align 8
  %211 = load i32, i32* %14, align 4
  %212 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %213 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %212, i32 0, i32 1
  store i32 %211, i32* %213, align 8
  %214 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %215 = call i32 @register_snapshot(%struct.dm_snapshot* %214)
  store i32 %215, i32* %10, align 4
  %216 = load i32, i32* %10, align 4
  %217 = load i32, i32* @ENOMEM, align 4
  %218 = sub nsw i32 0, %217
  %219 = icmp eq i32 %216, %218
  br i1 %219, label %220, label %223

220:                                              ; preds = %204
  %221 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %222 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %221, i32 0, i32 0
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i8** %222, align 8
  br label %289

223:                                              ; preds = %204
  %224 = load i32, i32* %10, align 4
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %223
  br label %289

227:                                              ; preds = %223
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %10, align 4
  %230 = icmp sgt i32 %229, 0
  br i1 %230, label %231, label %236

231:                                              ; preds = %228
  %232 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %233 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %232, i32 0, i32 3
  %234 = load %struct.TYPE_6__*, %struct.TYPE_6__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 0
  store i64 0, i64* %235, align 8
  store i32 0, i32* %4, align 4
  br label %335

236:                                              ; preds = %228
  %237 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %238 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %237, i32 0, i32 3
  %239 = load %struct.TYPE_6__*, %struct.TYPE_6__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 1
  %241 = load %struct.TYPE_5__*, %struct.TYPE_5__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 0
  %243 = load i32 (%struct.TYPE_6__*, i32, i8*)*, i32 (%struct.TYPE_6__*, i32, i8*)** %242, align 8
  %244 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %245 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %244, i32 0, i32 3
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** %245, align 8
  %247 = load i32, i32* @dm_add_exception, align 4
  %248 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %249 = bitcast %struct.dm_snapshot* %248 to i8*
  %250 = call i32 %243(%struct.TYPE_6__* %246, i32 %247, i8* %249)
  store i32 %250, i32* %10, align 4
  %251 = load i32, i32* %10, align 4
  %252 = icmp slt i32 %251, 0
  br i1 %252, label %253, label %256

253:                                              ; preds = %236
  %254 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %255 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %254, i32 0, i32 0
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i8** %255, align 8
  br label %286

256:                                              ; preds = %236
  %257 = load i32, i32* %10, align 4
  %258 = icmp sgt i32 %257, 0
  br i1 %258, label %259, label %263

259:                                              ; preds = %256
  %260 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %261 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %260, i32 0, i32 0
  store i32 0, i32* %261, align 8
  %262 = call i32 @DMWARN(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  br label %263

263:                                              ; preds = %259, %256
  br label %264

264:                                              ; preds = %263
  %265 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %266 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %265, i32 0, i32 3
  %267 = load %struct.TYPE_6__*, %struct.TYPE_6__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %274, label %271

271:                                              ; preds = %264
  %272 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %273 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %272, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i8** %273, align 8
  br label %286

274:                                              ; preds = %264
  %275 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %276 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %277 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %276, i32 0, i32 3
  %278 = load %struct.TYPE_6__*, %struct.TYPE_6__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = call i32 @dm_set_target_max_io_len(%struct.dm_target* %275, i64 %280)
  store i32 %281, i32* %10, align 4
  %282 = load i32, i32* %10, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %285

284:                                              ; preds = %274
  br label %286

285:                                              ; preds = %274
  store i32 0, i32* %4, align 4
  br label %335

286:                                              ; preds = %284, %271, %253
  %287 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %288 = call i32 @unregister_snapshot(%struct.dm_snapshot* %287)
  br label %289

289:                                              ; preds = %286, %226, %220
  %290 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %291 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %290, i32 0, i32 8
  %292 = load i8*, i8** %291, align 8
  %293 = call i32 @mempool_destroy(i8* %292)
  br label %294

294:                                              ; preds = %289, %185
  %295 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %296 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %295, i32 0, i32 7
  %297 = load i8*, i8** %296, align 8
  %298 = call i32 @mempool_destroy(i8* %297)
  br label %299

299:                                              ; preds = %294, %170
  %300 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %301 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %300, i32 0, i32 6
  %302 = load i32, i32* %301, align 8
  %303 = call i32 @dm_kcopyd_client_destroy(i32 %302)
  br label %304

304:                                              ; preds = %299, %153
  %305 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %306 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %305, i32 0, i32 5
  %307 = load i32, i32* @pending_cache, align 4
  %308 = call i32 @dm_exception_table_exit(i32* %306, i32 %307)
  %309 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %310 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %309, i32 0, i32 4
  %311 = load i32, i32* @exception_cache, align 4
  %312 = call i32 @dm_exception_table_exit(i32* %310, i32 %311)
  br label %313

313:                                              ; preds = %304, %139
  %314 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %315 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %314, i32 0, i32 3
  %316 = load %struct.TYPE_6__*, %struct.TYPE_6__** %315, align 8
  %317 = call i32 @dm_exception_store_destroy(%struct.TYPE_6__* %316)
  br label %318

318:                                              ; preds = %313, %93
  %319 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %320 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %321 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %320, i32 0, i32 2
  %322 = load i32, i32* %321, align 8
  %323 = call i32 @dm_put_device(%struct.dm_target* %319, i32 %322)
  br label %324

324:                                              ; preds = %318, %80
  %325 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %326 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %327 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  %329 = call i32 @dm_put_device(%struct.dm_target* %325, i32 %328)
  br label %330

330:                                              ; preds = %324, %58
  %331 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %332 = call i32 @kfree(%struct.dm_snapshot* %331)
  br label %333

333:                                              ; preds = %330, %37, %21
  %334 = load i32, i32* %10, align 4
  store i32 %334, i32* %4, align 4
  br label %335

335:                                              ; preds = %333, %285, %231
  %336 = load i32, i32* %4, align 4
  ret i32 %336
}

declare dso_local i64 @dm_target_is_snapshot_merge(%struct.dm_target*) #1

declare dso_local %struct.dm_snapshot* @kmalloc(i32, i32) #1

declare dso_local i32 @dm_get_device(%struct.dm_target*, i8*, i32, i32*) #1

declare dso_local i32 @dm_table_get_mode(i32) #1

declare dso_local i32 @dm_exception_store_create(%struct.dm_target*, i32, i8**, %struct.dm_snapshot*, i32*, %struct.TYPE_6__**) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @bio_list_init(i32*) #1

declare dso_local i64 @init_hash_tables(%struct.dm_snapshot*) #1

declare dso_local i32 @dm_kcopyd_client_create(i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i8* @mempool_create_slab_pool(i32, i32) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i32 @register_snapshot(%struct.dm_snapshot*) #1

declare dso_local i32 @DMWARN(i8*) #1

declare dso_local i32 @dm_set_target_max_io_len(%struct.dm_target*, i64) #1

declare dso_local i32 @unregister_snapshot(%struct.dm_snapshot*) #1

declare dso_local i32 @mempool_destroy(i8*) #1

declare dso_local i32 @dm_kcopyd_client_destroy(i32) #1

declare dso_local i32 @dm_exception_table_exit(i32*, i32) #1

declare dso_local i32 @dm_exception_store_destroy(%struct.TYPE_6__*) #1

declare dso_local i32 @dm_put_device(%struct.dm_target*, i32) #1

declare dso_local i32 @kfree(%struct.dm_snapshot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
