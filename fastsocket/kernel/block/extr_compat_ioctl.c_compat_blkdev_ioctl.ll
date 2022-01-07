; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_compat_ioctl.c_compat_blkdev_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_compat_ioctl.c_compat_blkdev_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { %struct.block_device* }
%struct.block_device = type { i32, %struct.gendisk* }
%struct.gendisk = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.block_device*, i32, i32, i64)* }
%struct.backing_dev_info = type { i32 }

@ENOIOCTLCMD = common dso_local global i32 0, align 4
@O_NDELAY = common dso_local global i32 0, align 4
@FMODE_NDELAY = common dso_local global i32 0, align 4
@BLKBSZSET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@ENOTTY = common dso_local global i64 0, align 8
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i64 0, align 8
@EFBIG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @compat_blkdev_ioctl(%struct.file* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.block_device*, align 8
  %11 = alloca %struct.gendisk*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.backing_dev_info*, align 8
  %14 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %15 = load i32, i32* @ENOIOCTLCMD, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %8, align 4
  %17 = load %struct.file*, %struct.file** %5, align 8
  %18 = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.inode*, %struct.inode** %20, align 8
  store %struct.inode* %21, %struct.inode** %9, align 8
  %22 = load %struct.inode*, %struct.inode** %9, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load %struct.block_device*, %struct.block_device** %23, align 8
  store %struct.block_device* %24, %struct.block_device** %10, align 8
  %25 = load %struct.block_device*, %struct.block_device** %10, align 8
  %26 = getelementptr inbounds %struct.block_device, %struct.block_device* %25, i32 0, i32 1
  %27 = load %struct.gendisk*, %struct.gendisk** %26, align 8
  store %struct.gendisk* %27, %struct.gendisk** %11, align 8
  %28 = load %struct.file*, %struct.file** %5, align 8
  %29 = getelementptr inbounds %struct.file, %struct.file* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %12, align 4
  %31 = load %struct.file*, %struct.file** %5, align 8
  %32 = getelementptr inbounds %struct.file, %struct.file* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @O_NDELAY, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %3
  %38 = load i32, i32* @FMODE_NDELAY, align 4
  %39 = load i32, i32* %12, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %12, align 4
  br label %46

41:                                               ; preds = %3
  %42 = load i32, i32* @FMODE_NDELAY, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %12, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %12, align 4
  br label %46

46:                                               ; preds = %41, %37
  %47 = load i32, i32* %6, align 4
  switch i32 %47, label %213 [
    i32 128, label %48
    i32 141, label %54
    i32 143, label %59
    i32 142, label %64
    i32 153, label %69
    i32 149, label %74
    i32 148, label %79
    i32 136, label %79
    i32 150, label %79
    i32 135, label %79
    i32 151, label %86
    i32 140, label %93
    i32 139, label %100
    i32 147, label %100
    i32 137, label %123
    i32 152, label %130
    i32 133, label %135
    i32 134, label %140
    i32 138, label %146
    i32 146, label %146
    i32 145, label %170
    i32 144, label %187
    i32 132, label %194
    i32 131, label %203
    i32 130, label %203
    i32 129, label %203
  ]

48:                                               ; preds = %46
  %49 = load %struct.gendisk*, %struct.gendisk** %11, align 8
  %50 = load %struct.block_device*, %struct.block_device** %10, align 8
  %51 = load i64, i64* %7, align 8
  %52 = call i64 @compat_ptr(i64 %51)
  %53 = call i64 @compat_hdio_getgeo(%struct.gendisk* %49, %struct.block_device* %50, i64 %52)
  store i64 %53, i64* %4, align 8
  br label %245

54:                                               ; preds = %46
  %55 = load i64, i64* %7, align 8
  %56 = load %struct.block_device*, %struct.block_device** %10, align 8
  %57 = call i32 @bdev_physical_block_size(%struct.block_device* %56)
  %58 = call i64 @compat_put_uint(i64 %55, i32 %57)
  store i64 %58, i64* %4, align 8
  br label %245

59:                                               ; preds = %46
  %60 = load i64, i64* %7, align 8
  %61 = load %struct.block_device*, %struct.block_device** %10, align 8
  %62 = call i32 @bdev_io_min(%struct.block_device* %61)
  %63 = call i64 @compat_put_uint(i64 %60, i32 %62)
  store i64 %63, i64* %4, align 8
  br label %245

64:                                               ; preds = %46
  %65 = load i64, i64* %7, align 8
  %66 = load %struct.block_device*, %struct.block_device** %10, align 8
  %67 = call i32 @bdev_io_opt(%struct.block_device* %66)
  %68 = call i64 @compat_put_uint(i64 %65, i32 %67)
  store i64 %68, i64* %4, align 8
  br label %245

69:                                               ; preds = %46
  %70 = load i64, i64* %7, align 8
  %71 = load %struct.block_device*, %struct.block_device** %10, align 8
  %72 = call i32 @bdev_alignment_offset(%struct.block_device* %71)
  %73 = call i64 @compat_put_int(i64 %70, i32 %72)
  store i64 %73, i64* %4, align 8
  br label %245

74:                                               ; preds = %46
  %75 = load i64, i64* %7, align 8
  %76 = load %struct.block_device*, %struct.block_device** %10, align 8
  %77 = call i32 @bdev_discard_zeroes_data(%struct.block_device* %76)
  %78 = call i64 @compat_put_uint(i64 %75, i32 %77)
  store i64 %78, i64* %4, align 8
  br label %245

79:                                               ; preds = %46, %46, %46, %46
  %80 = load %struct.block_device*, %struct.block_device** %10, align 8
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %6, align 4
  %83 = load i64, i64* %7, align 8
  %84 = call i64 @compat_ptr(i64 %83)
  %85 = call i64 @blkdev_ioctl(%struct.block_device* %80, i32 %81, i32 %82, i64 %84)
  store i64 %85, i64* %4, align 8
  br label %245

86:                                               ; preds = %46
  %87 = load %struct.block_device*, %struct.block_device** %10, align 8
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* @BLKBSZSET, align 4
  %90 = load i64, i64* %7, align 8
  %91 = call i64 @compat_ptr(i64 %90)
  %92 = call i64 @blkdev_ioctl(%struct.block_device* %87, i32 %88, i32 %89, i64 %91)
  store i64 %92, i64* %4, align 8
  br label %245

93:                                               ; preds = %46
  %94 = load %struct.block_device*, %struct.block_device** %10, align 8
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* %6, align 4
  %97 = load i64, i64* %7, align 8
  %98 = call i64 @compat_ptr(i64 %97)
  %99 = call i64 @compat_blkpg_ioctl(%struct.block_device* %94, i32 %95, i32 %96, i64 %98)
  store i64 %99, i64* %4, align 8
  br label %245

100:                                              ; preds = %46, %46
  %101 = load i64, i64* %7, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = load i64, i64* @EINVAL, align 8
  %105 = sub nsw i64 0, %104
  store i64 %105, i64* %4, align 8
  br label %245

106:                                              ; preds = %100
  %107 = load %struct.block_device*, %struct.block_device** %10, align 8
  %108 = call %struct.backing_dev_info* @blk_get_backing_dev_info(%struct.block_device* %107)
  store %struct.backing_dev_info* %108, %struct.backing_dev_info** %13, align 8
  %109 = load %struct.backing_dev_info*, %struct.backing_dev_info** %13, align 8
  %110 = icmp eq %struct.backing_dev_info* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load i64, i64* @ENOTTY, align 8
  %113 = sub nsw i64 0, %112
  store i64 %113, i64* %4, align 8
  br label %245

114:                                              ; preds = %106
  %115 = load i64, i64* %7, align 8
  %116 = load %struct.backing_dev_info*, %struct.backing_dev_info** %13, align 8
  %117 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %120 = mul nsw i32 %118, %119
  %121 = sdiv i32 %120, 512
  %122 = call i64 @compat_put_long(i64 %115, i32 %121)
  store i64 %122, i64* %4, align 8
  br label %245

123:                                              ; preds = %46
  %124 = load i64, i64* %7, align 8
  %125 = load %struct.block_device*, %struct.block_device** %10, align 8
  %126 = call i32 @bdev_read_only(%struct.block_device* %125)
  %127 = icmp ne i32 %126, 0
  %128 = zext i1 %127 to i32
  %129 = call i64 @compat_put_int(i64 %124, i32 %128)
  store i64 %129, i64* %4, align 8
  br label %245

130:                                              ; preds = %46
  %131 = load i64, i64* %7, align 8
  %132 = load %struct.block_device*, %struct.block_device** %10, align 8
  %133 = call i32 @block_size(%struct.block_device* %132)
  %134 = call i64 @compat_put_int(i64 %131, i32 %133)
  store i64 %134, i64* %4, align 8
  br label %245

135:                                              ; preds = %46
  %136 = load i64, i64* %7, align 8
  %137 = load %struct.block_device*, %struct.block_device** %10, align 8
  %138 = call i32 @bdev_logical_block_size(%struct.block_device* %137)
  %139 = call i64 @compat_put_int(i64 %136, i32 %138)
  store i64 %139, i64* %4, align 8
  br label %245

140:                                              ; preds = %46
  %141 = load i64, i64* %7, align 8
  %142 = load %struct.block_device*, %struct.block_device** %10, align 8
  %143 = call i32 @bdev_get_queue(%struct.block_device* %142)
  %144 = call i32 @queue_max_sectors(i32 %143)
  %145 = call i64 @compat_put_ushort(i64 %141, i32 %144)
  store i64 %145, i64* %4, align 8
  br label %245

146:                                              ; preds = %46, %46
  %147 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %148 = call i32 @capable(i32 %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %146
  %151 = load i64, i64* @EACCES, align 8
  %152 = sub nsw i64 0, %151
  store i64 %152, i64* %4, align 8
  br label %245

153:                                              ; preds = %146
  %154 = load %struct.block_device*, %struct.block_device** %10, align 8
  %155 = call %struct.backing_dev_info* @blk_get_backing_dev_info(%struct.block_device* %154)
  store %struct.backing_dev_info* %155, %struct.backing_dev_info** %13, align 8
  %156 = load %struct.backing_dev_info*, %struct.backing_dev_info** %13, align 8
  %157 = icmp eq %struct.backing_dev_info* %156, null
  br i1 %157, label %158, label %161

158:                                              ; preds = %153
  %159 = load i64, i64* @ENOTTY, align 8
  %160 = sub nsw i64 0, %159
  store i64 %160, i64* %4, align 8
  br label %245

161:                                              ; preds = %153
  %162 = load i64, i64* %7, align 8
  %163 = mul i64 %162, 512
  %164 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %165 = sext i32 %164 to i64
  %166 = udiv i64 %163, %165
  %167 = trunc i64 %166 to i32
  %168 = load %struct.backing_dev_info*, %struct.backing_dev_info** %13, align 8
  %169 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %168, i32 0, i32 0
  store i32 %167, i32* %169, align 4
  store i64 0, i64* %4, align 8
  br label %245

170:                                              ; preds = %46
  %171 = load %struct.block_device*, %struct.block_device** %10, align 8
  %172 = getelementptr inbounds %struct.block_device, %struct.block_device* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @i_size_read(i32 %173)
  store i32 %174, i32* %14, align 4
  %175 = load i32, i32* %14, align 4
  %176 = ashr i32 %175, 9
  %177 = sext i32 %176 to i64
  %178 = icmp ugt i64 %177, -1
  br i1 %178, label %179, label %182

179:                                              ; preds = %170
  %180 = load i64, i64* @EFBIG, align 8
  %181 = sub nsw i64 0, %180
  store i64 %181, i64* %4, align 8
  br label %245

182:                                              ; preds = %170
  %183 = load i64, i64* %7, align 8
  %184 = load i32, i32* %14, align 4
  %185 = ashr i32 %184, 9
  %186 = call i64 @compat_put_ulong(i64 %183, i32 %185)
  store i64 %186, i64* %4, align 8
  br label %245

187:                                              ; preds = %46
  %188 = load i64, i64* %7, align 8
  %189 = load %struct.block_device*, %struct.block_device** %10, align 8
  %190 = getelementptr inbounds %struct.block_device, %struct.block_device* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @i_size_read(i32 %191)
  %193 = call i64 @compat_put_u64(i64 %188, i32 %192)
  store i64 %193, i64* %4, align 8
  br label %245

194:                                              ; preds = %46
  %195 = call i32 (...) @lock_kernel()
  %196 = load %struct.block_device*, %struct.block_device** %10, align 8
  %197 = load i64, i64* %7, align 8
  %198 = call i64 @compat_ptr(i64 %197)
  %199 = call i32 @compat_blk_trace_setup(%struct.block_device* %196, i64 %198)
  store i32 %199, i32* %8, align 4
  %200 = call i32 (...) @unlock_kernel()
  %201 = load i32, i32* %8, align 4
  %202 = sext i32 %201 to i64
  store i64 %202, i64* %4, align 8
  br label %245

203:                                              ; preds = %46, %46, %46
  %204 = call i32 (...) @lock_kernel()
  %205 = load %struct.block_device*, %struct.block_device** %10, align 8
  %206 = load i32, i32* %6, align 4
  %207 = load i64, i64* %7, align 8
  %208 = call i64 @compat_ptr(i64 %207)
  %209 = call i32 @blk_trace_ioctl(%struct.block_device* %205, i32 %206, i64 %208)
  store i32 %209, i32* %8, align 4
  %210 = call i32 (...) @unlock_kernel()
  %211 = load i32, i32* %8, align 4
  %212 = sext i32 %211 to i64
  store i64 %212, i64* %4, align 8
  br label %245

213:                                              ; preds = %46
  %214 = load %struct.gendisk*, %struct.gendisk** %11, align 8
  %215 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %214, i32 0, i32 0
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 0
  %218 = load i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.block_device*, i32, i32, i64)** %217, align 8
  %219 = icmp ne i32 (%struct.block_device*, i32, i32, i64)* %218, null
  br i1 %219, label %220, label %231

220:                                              ; preds = %213
  %221 = load %struct.gendisk*, %struct.gendisk** %11, align 8
  %222 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %221, i32 0, i32 0
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 0
  %225 = load i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.block_device*, i32, i32, i64)** %224, align 8
  %226 = load %struct.block_device*, %struct.block_device** %10, align 8
  %227 = load i32, i32* %12, align 4
  %228 = load i32, i32* %6, align 4
  %229 = load i64, i64* %7, align 8
  %230 = call i32 %225(%struct.block_device* %226, i32 %227, i32 %228, i64 %229)
  store i32 %230, i32* %8, align 4
  br label %231

231:                                              ; preds = %220, %213
  %232 = load i32, i32* %8, align 4
  %233 = load i32, i32* @ENOIOCTLCMD, align 4
  %234 = sub nsw i32 0, %233
  %235 = icmp eq i32 %232, %234
  br i1 %235, label %236, label %242

236:                                              ; preds = %231
  %237 = load %struct.block_device*, %struct.block_device** %10, align 8
  %238 = load i32, i32* %12, align 4
  %239 = load i32, i32* %6, align 4
  %240 = load i64, i64* %7, align 8
  %241 = call i32 @compat_blkdev_driver_ioctl(%struct.block_device* %237, i32 %238, i32 %239, i64 %240)
  store i32 %241, i32* %8, align 4
  br label %242

242:                                              ; preds = %236, %231
  %243 = load i32, i32* %8, align 4
  %244 = sext i32 %243 to i64
  store i64 %244, i64* %4, align 8
  br label %245

245:                                              ; preds = %242, %203, %194, %187, %182, %179, %161, %158, %150, %140, %135, %130, %123, %114, %111, %103, %93, %86, %79, %74, %69, %64, %59, %54, %48
  %246 = load i64, i64* %4, align 8
  ret i64 %246
}

declare dso_local i64 @compat_hdio_getgeo(%struct.gendisk*, %struct.block_device*, i64) #1

declare dso_local i64 @compat_ptr(i64) #1

declare dso_local i64 @compat_put_uint(i64, i32) #1

declare dso_local i32 @bdev_physical_block_size(%struct.block_device*) #1

declare dso_local i32 @bdev_io_min(%struct.block_device*) #1

declare dso_local i32 @bdev_io_opt(%struct.block_device*) #1

declare dso_local i64 @compat_put_int(i64, i32) #1

declare dso_local i32 @bdev_alignment_offset(%struct.block_device*) #1

declare dso_local i32 @bdev_discard_zeroes_data(%struct.block_device*) #1

declare dso_local i64 @blkdev_ioctl(%struct.block_device*, i32, i32, i64) #1

declare dso_local i64 @compat_blkpg_ioctl(%struct.block_device*, i32, i32, i64) #1

declare dso_local %struct.backing_dev_info* @blk_get_backing_dev_info(%struct.block_device*) #1

declare dso_local i64 @compat_put_long(i64, i32) #1

declare dso_local i32 @bdev_read_only(%struct.block_device*) #1

declare dso_local i32 @block_size(%struct.block_device*) #1

declare dso_local i32 @bdev_logical_block_size(%struct.block_device*) #1

declare dso_local i64 @compat_put_ushort(i64, i32) #1

declare dso_local i32 @queue_max_sectors(i32) #1

declare dso_local i32 @bdev_get_queue(%struct.block_device*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @i_size_read(i32) #1

declare dso_local i64 @compat_put_ulong(i64, i32) #1

declare dso_local i64 @compat_put_u64(i64, i32) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @compat_blk_trace_setup(%struct.block_device*, i64) #1

declare dso_local i32 @unlock_kernel(...) #1

declare dso_local i32 @blk_trace_ioctl(%struct.block_device*, i32, i64) #1

declare dso_local i32 @compat_blkdev_driver_ioctl(%struct.block_device*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
