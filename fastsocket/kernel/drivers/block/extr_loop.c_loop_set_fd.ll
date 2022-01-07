; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_loop.c_loop_set_fd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_loop.c_loop_set_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop_device = type { i64, i32, i32, i32, i32, %struct.TYPE_6__*, %struct.file*, %struct.block_device*, i32*, i32, i32, i64, i32*, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.file = type { i32, %struct.TYPE_5__*, %struct.address_space* }
%struct.TYPE_5__ = type { i64, i32 }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { %struct.block_device*, i32 }
%struct.block_device = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.loop_device* }

@THIS_MODULE = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@Lo_unbound = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@LO_FLAGS_READ_ONLY = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@transfer_none = common dso_local global i32 0, align 4
@__GFP_IO = common dso_local global i32 0, align 4
@__GFP_FS = common dso_local global i32 0, align 4
@loop_unplug = common dso_local global i32* null, align 8
@REQ_FLUSH = common dso_local global i32 0, align 4
@loop_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"loop%d\00", align 1
@Lo_bound = common dso_local global i64 0, align 8
@max_part = common dso_local global i64 0, align 8
@BLKRRPART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loop_device*, i32, %struct.block_device*, i32)* @loop_set_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loop_set_fd(%struct.loop_device* %0, i32 %1, %struct.block_device* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.loop_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.block_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.file*, align 8
  %11 = alloca %struct.file*, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.address_space*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.loop_device*, align 8
  store %struct.loop_device* %0, %struct.loop_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.block_device* %2, %struct.block_device** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %15, align 4
  %19 = load i32, i32* @THIS_MODULE, align 4
  %20 = call i32 @__module_get(i32 %19)
  %21 = load i32, i32* @EBADF, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call %struct.file* @fget(i32 %23)
  store %struct.file* %24, %struct.file** %10, align 8
  %25 = load %struct.file*, %struct.file** %10, align 8
  %26 = icmp ne %struct.file* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %4
  br label %293

28:                                               ; preds = %4
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %16, align 4
  %31 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %32 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @Lo_unbound, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %290

37:                                               ; preds = %28
  %38 = load %struct.file*, %struct.file** %10, align 8
  store %struct.file* %38, %struct.file** %11, align 8
  br label %39

39:                                               ; preds = %74, %37
  %40 = load %struct.file*, %struct.file** %11, align 8
  %41 = call i64 @is_loop_device(%struct.file* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %78

43:                                               ; preds = %39
  %44 = load %struct.file*, %struct.file** %11, align 8
  %45 = getelementptr inbounds %struct.file, %struct.file* %44, i32 0, i32 2
  %46 = load %struct.address_space*, %struct.address_space** %45, align 8
  %47 = getelementptr inbounds %struct.address_space, %struct.address_space* %46, i32 0, i32 0
  %48 = load %struct.inode*, %struct.inode** %47, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 0
  %50 = load %struct.block_device*, %struct.block_device** %49, align 8
  %51 = load %struct.block_device*, %struct.block_device** %8, align 8
  %52 = icmp eq %struct.block_device* %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %290

54:                                               ; preds = %43
  %55 = load %struct.file*, %struct.file** %11, align 8
  %56 = getelementptr inbounds %struct.file, %struct.file* %55, i32 0, i32 2
  %57 = load %struct.address_space*, %struct.address_space** %56, align 8
  %58 = getelementptr inbounds %struct.address_space, %struct.address_space* %57, i32 0, i32 0
  %59 = load %struct.inode*, %struct.inode** %58, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 0
  %61 = load %struct.block_device*, %struct.block_device** %60, align 8
  %62 = getelementptr inbounds %struct.block_device, %struct.block_device* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load %struct.loop_device*, %struct.loop_device** %64, align 8
  store %struct.loop_device* %65, %struct.loop_device** %18, align 8
  %66 = load %struct.loop_device*, %struct.loop_device** %18, align 8
  %67 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @Lo_unbound, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %54
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %16, align 4
  br label %290

74:                                               ; preds = %54
  %75 = load %struct.loop_device*, %struct.loop_device** %18, align 8
  %76 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %75, i32 0, i32 6
  %77 = load %struct.file*, %struct.file** %76, align 8
  store %struct.file* %77, %struct.file** %11, align 8
  br label %39

78:                                               ; preds = %39
  %79 = load %struct.file*, %struct.file** %10, align 8
  %80 = getelementptr inbounds %struct.file, %struct.file* %79, i32 0, i32 2
  %81 = load %struct.address_space*, %struct.address_space** %80, align 8
  store %struct.address_space* %81, %struct.address_space** %13, align 8
  %82 = load %struct.address_space*, %struct.address_space** %13, align 8
  %83 = getelementptr inbounds %struct.address_space, %struct.address_space* %82, i32 0, i32 0
  %84 = load %struct.inode*, %struct.inode** %83, align 8
  store %struct.inode* %84, %struct.inode** %12, align 8
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %16, align 4
  %87 = load %struct.inode*, %struct.inode** %12, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @S_ISREG(i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %78
  %93 = load %struct.inode*, %struct.inode** %12, align 8
  %94 = getelementptr inbounds %struct.inode, %struct.inode* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i64 @S_ISBLK(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %92
  br label %290

99:                                               ; preds = %92, %78
  %100 = load %struct.file*, %struct.file** %10, align 8
  %101 = getelementptr inbounds %struct.file, %struct.file* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @FMODE_WRITE, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %99
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @FMODE_WRITE, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %106
  %112 = load %struct.file*, %struct.file** %10, align 8
  %113 = getelementptr inbounds %struct.file, %struct.file* %112, i32 0, i32 1
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %111, %106, %99
  %119 = load i32, i32* @LO_FLAGS_READ_ONLY, align 4
  %120 = load i32, i32* %15, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %15, align 4
  br label %122

122:                                              ; preds = %118, %111
  %123 = load %struct.inode*, %struct.inode** %12, align 8
  %124 = getelementptr inbounds %struct.inode, %struct.inode* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = call i64 @S_ISBLK(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %122
  %129 = load %struct.inode*, %struct.inode** %12, align 8
  %130 = getelementptr inbounds %struct.inode, %struct.inode* %129, i32 0, i32 0
  %131 = load %struct.block_device*, %struct.block_device** %130, align 8
  %132 = getelementptr inbounds %struct.block_device, %struct.block_device* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  br label %136

134:                                              ; preds = %122
  %135 = load i32, i32* @PAGE_SIZE, align 4
  br label %136

136:                                              ; preds = %134, %128
  %137 = phi i32 [ %133, %128 ], [ %135, %134 ]
  store i32 %137, i32* %14, align 4
  %138 = load i32, i32* @EFBIG, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %16, align 4
  %140 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %141 = load %struct.file*, %struct.file** %10, align 8
  %142 = call i32 @get_loop_size(%struct.loop_device* %140, %struct.file* %141)
  store i32 %142, i32* %17, align 4
  %143 = load i32, i32* %17, align 4
  %144 = sext i32 %143 to i64
  %145 = trunc i64 %144 to i32
  %146 = load i32, i32* %17, align 4
  %147 = icmp ne i32 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %136
  br label %290

149:                                              ; preds = %136
  store i32 0, i32* %16, align 4
  %150 = load %struct.block_device*, %struct.block_device** %8, align 8
  %151 = load i32, i32* %15, align 4
  %152 = load i32, i32* @LO_FLAGS_READ_ONLY, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  %155 = zext i1 %154 to i32
  %156 = call i32 @set_device_ro(%struct.block_device* %150, i32 %155)
  %157 = load i32, i32* %14, align 4
  %158 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %159 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 8
  %160 = load %struct.block_device*, %struct.block_device** %8, align 8
  %161 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %162 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %161, i32 0, i32 7
  store %struct.block_device* %160, %struct.block_device** %162, align 8
  %163 = load i32, i32* %15, align 4
  %164 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %165 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %164, i32 0, i32 2
  store i32 %163, i32* %165, align 4
  %166 = load %struct.file*, %struct.file** %10, align 8
  %167 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %168 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %167, i32 0, i32 6
  store %struct.file* %166, %struct.file** %168, align 8
  %169 = load i32, i32* @transfer_none, align 4
  %170 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %171 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %170, i32 0, i32 13
  store i32 %169, i32* %171, align 8
  %172 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %173 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %172, i32 0, i32 12
  store i32* null, i32** %173, align 8
  %174 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %175 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %174, i32 0, i32 11
  store i64 0, i64* %175, align 8
  %176 = load %struct.address_space*, %struct.address_space** %13, align 8
  %177 = call i32 @mapping_gfp_mask(%struct.address_space* %176)
  %178 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %179 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %178, i32 0, i32 3
  store i32 %177, i32* %179, align 8
  %180 = load %struct.address_space*, %struct.address_space** %13, align 8
  %181 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %182 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @__GFP_IO, align 4
  %185 = load i32, i32* @__GFP_FS, align 4
  %186 = or i32 %184, %185
  %187 = xor i32 %186, -1
  %188 = and i32 %183, %187
  %189 = call i32 @mapping_set_gfp_mask(%struct.address_space* %180, i32 %188)
  %190 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %191 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %190, i32 0, i32 10
  %192 = call i32 @bio_list_init(i32* %191)
  %193 = load i32*, i32** @loop_unplug, align 8
  %194 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %195 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %194, i32 0, i32 5
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 0
  store i32* %193, i32** %197, align 8
  %198 = load i32, i32* %15, align 4
  %199 = load i32, i32* @LO_FLAGS_READ_ONLY, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %215, label %202

202:                                              ; preds = %149
  %203 = load %struct.file*, %struct.file** %10, align 8
  %204 = getelementptr inbounds %struct.file, %struct.file* %203, i32 0, i32 1
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %215

209:                                              ; preds = %202
  %210 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %211 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %210, i32 0, i32 5
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %211, align 8
  %213 = load i32, i32* @REQ_FLUSH, align 4
  %214 = call i32 @blk_queue_flush(%struct.TYPE_6__* %212, i32 %213)
  br label %215

215:                                              ; preds = %209, %202, %149
  %216 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %217 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %216, i32 0, i32 4
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* %17, align 4
  %220 = call i32 @set_capacity(i32 %218, i32 %219)
  %221 = load %struct.block_device*, %struct.block_device** %8, align 8
  %222 = load i32, i32* %17, align 4
  %223 = shl i32 %222, 9
  %224 = call i32 @bd_set_size(%struct.block_device* %221, i32 %223)
  %225 = load %struct.block_device*, %struct.block_device** %8, align 8
  %226 = load i32, i32* %14, align 4
  %227 = call i32 @set_blocksize(%struct.block_device* %225, i32 %226)
  %228 = load i32, i32* @loop_thread, align 4
  %229 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %230 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %231 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %230, i32 0, i32 9
  %232 = load i32, i32* %231, align 8
  %233 = call i32* @kthread_create(i32 %228, %struct.loop_device* %229, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %232)
  %234 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %235 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %234, i32 0, i32 8
  store i32* %233, i32** %235, align 8
  %236 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %237 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %236, i32 0, i32 8
  %238 = load i32*, i32** %237, align 8
  %239 = call i64 @IS_ERR(i32* %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %246

241:                                              ; preds = %215
  %242 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %243 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %242, i32 0, i32 8
  %244 = load i32*, i32** %243, align 8
  %245 = call i32 @PTR_ERR(i32* %244)
  store i32 %245, i32* %16, align 4
  br label %261

246:                                              ; preds = %215
  %247 = load i64, i64* @Lo_bound, align 8
  %248 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %249 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %248, i32 0, i32 0
  store i64 %247, i64* %249, align 8
  %250 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %251 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %250, i32 0, i32 8
  %252 = load i32*, i32** %251, align 8
  %253 = call i32 @wake_up_process(i32* %252)
  %254 = load i64, i64* @max_part, align 8
  %255 = icmp sgt i64 %254, 0
  br i1 %255, label %256, label %260

256:                                              ; preds = %246
  %257 = load %struct.block_device*, %struct.block_device** %8, align 8
  %258 = load i32, i32* @BLKRRPART, align 4
  %259 = call i32 @ioctl_by_bdev(%struct.block_device* %257, i32 %258, i32 0)
  br label %260

260:                                              ; preds = %256, %246
  store i32 0, i32* %5, align 4
  br label %297

261:                                              ; preds = %241
  %262 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %263 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %262, i32 0, i32 8
  store i32* null, i32** %263, align 8
  %264 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %265 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %264, i32 0, i32 7
  store %struct.block_device* null, %struct.block_device** %265, align 8
  %266 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %267 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %266, i32 0, i32 6
  store %struct.file* null, %struct.file** %267, align 8
  %268 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %269 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %268, i32 0, i32 2
  store i32 0, i32* %269, align 4
  %270 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %271 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %270, i32 0, i32 5
  %272 = load %struct.TYPE_6__*, %struct.TYPE_6__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i32 0, i32 0
  store i32* null, i32** %273, align 8
  %274 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %275 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %274, i32 0, i32 4
  %276 = load i32, i32* %275, align 4
  %277 = call i32 @set_capacity(i32 %276, i32 0)
  %278 = load %struct.block_device*, %struct.block_device** %8, align 8
  %279 = call i32 @invalidate_bdev(%struct.block_device* %278)
  %280 = load %struct.block_device*, %struct.block_device** %8, align 8
  %281 = call i32 @bd_set_size(%struct.block_device* %280, i32 0)
  %282 = load %struct.address_space*, %struct.address_space** %13, align 8
  %283 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %284 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %283, i32 0, i32 3
  %285 = load i32, i32* %284, align 8
  %286 = call i32 @mapping_set_gfp_mask(%struct.address_space* %282, i32 %285)
  %287 = load i64, i64* @Lo_unbound, align 8
  %288 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %289 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %288, i32 0, i32 0
  store i64 %287, i64* %289, align 8
  br label %290

290:                                              ; preds = %261, %148, %98, %71, %53, %36
  %291 = load %struct.file*, %struct.file** %10, align 8
  %292 = call i32 @fput(%struct.file* %291)
  br label %293

293:                                              ; preds = %290, %27
  %294 = load i32, i32* @THIS_MODULE, align 4
  %295 = call i32 @module_put(i32 %294)
  %296 = load i32, i32* %16, align 4
  store i32 %296, i32* %5, align 4
  br label %297

297:                                              ; preds = %293, %260
  %298 = load i32, i32* %5, align 4
  ret i32 %298
}

declare dso_local i32 @__module_get(i32) #1

declare dso_local %struct.file* @fget(i32) #1

declare dso_local i64 @is_loop_device(%struct.file*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i32 @get_loop_size(%struct.loop_device*, %struct.file*) #1

declare dso_local i32 @set_device_ro(%struct.block_device*, i32) #1

declare dso_local i32 @mapping_gfp_mask(%struct.address_space*) #1

declare dso_local i32 @mapping_set_gfp_mask(%struct.address_space*, i32) #1

declare dso_local i32 @bio_list_init(i32*) #1

declare dso_local i32 @blk_queue_flush(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @set_capacity(i32, i32) #1

declare dso_local i32 @bd_set_size(%struct.block_device*, i32) #1

declare dso_local i32 @set_blocksize(%struct.block_device*, i32) #1

declare dso_local i32* @kthread_create(i32, %struct.loop_device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @wake_up_process(i32*) #1

declare dso_local i32 @ioctl_by_bdev(%struct.block_device*, i32, i32) #1

declare dso_local i32 @invalidate_bdev(%struct.block_device*) #1

declare dso_local i32 @fput(%struct.file*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
