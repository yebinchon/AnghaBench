; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_eba.c_ubi_eba_copy_leb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_eba.c_ubi_eba_copy_leb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32, i32, i32, i32, %struct.ubi_volume**, i32 }
%struct.ubi_volume = type { i32* }
%struct.ubi_vid_hdr = type { i64, i32, i32, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [33 x i8] c"copy LEB %d:%d, PEB %d to PEB %d\00", align 1
@UBI_VID_STATIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"volume %d is being removed, cancel\00", align 1
@MOVE_CANCEL_RACE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"contention on LEB %d:%d, cancel\00", align 1
@.str.3 = private unnamed_addr constant [66 x i8] c"LEB %d:%d is no longer mapped to PEB %d, mapped to PEB %d, cancel\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"read %d bytes of data\00", align 1
@UBI_IO_BITFLIPS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"error %d while reading data from PEB %d\00", align 1
@MOVE_SOURCE_RD_ERR = common dso_local global i32 0, align 4
@UBI_VID_DYNAMIC = common dso_local global i64 0, align 8
@UBI_CRC32_INIT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@MOVE_TARGET_WR_ERR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [51 x i8] c"error %d while reading VID header back from PEB %d\00", align 1
@MOVE_TARGET_RD_ERR = common dso_local global i32 0, align 4
@MOVE_CANCEL_BITFLIPS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [45 x i8] c"error %d while reading data back from PEB %d\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"read data back from PEB %d and it is different\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_eba_copy_leb(%struct.ubi_device* %0, i32 %1, i32 %2, %struct.ubi_vid_hdr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubi_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ubi_vid_hdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ubi_volume*, align 8
  %17 = alloca i32, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.ubi_vid_hdr* %3, %struct.ubi_vid_hdr** %9, align 8
  %18 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %9, align 8
  %19 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %18, i32 0, i32 7
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @be32_to_cpu(i8* %20)
  store i32 %21, i32* %11, align 4
  %22 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %9, align 8
  %23 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %22, i32 0, i32 6
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @be32_to_cpu(i8* %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 (i8*, i32, ...) @dbg_wl(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27, i32 %28, i32 %29)
  %31 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %9, align 8
  %32 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @UBI_VID_STATIC, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %4
  %37 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %9, align 8
  %38 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %37, i32 0, i32 4
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @be32_to_cpu(i8* %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %43 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @ALIGN(i32 %41, i32 %44)
  store i32 %45, i32* %14, align 4
  br label %55

46:                                               ; preds = %4
  %47 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %48 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %9, align 8
  %51 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %50, i32 0, i32 5
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @be32_to_cpu(i8* %52)
  %54 = sub nsw i32 %49, %53
  store i32 %54, i32* %14, align 4
  store i32 %54, i32* %13, align 4
  br label %55

55:                                               ; preds = %46, %36
  %56 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @vol_id2idx(%struct.ubi_device* %56, i32 %57)
  store i32 %58, i32* %15, align 4
  %59 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %60 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %59, i32 0, i32 4
  %61 = call i32 @spin_lock(i32* %60)
  %62 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %63 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %62, i32 0, i32 5
  %64 = load %struct.ubi_volume**, %struct.ubi_volume*** %63, align 8
  %65 = load i32, i32* %15, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.ubi_volume*, %struct.ubi_volume** %64, i64 %66
  %68 = load %struct.ubi_volume*, %struct.ubi_volume** %67, align 8
  store %struct.ubi_volume* %68, %struct.ubi_volume** %16, align 8
  %69 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %70 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %69, i32 0, i32 4
  %71 = call i32 @spin_unlock(i32* %70)
  %72 = load %struct.ubi_volume*, %struct.ubi_volume** %16, align 8
  %73 = icmp ne %struct.ubi_volume* %72, null
  br i1 %73, label %78, label %74

74:                                               ; preds = %55
  %75 = load i32, i32* %11, align 4
  %76 = call i32 (i8*, i32, ...) @dbg_wl(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @MOVE_CANCEL_RACE, align 4
  store i32 %77, i32* %5, align 4
  br label %312

78:                                               ; preds = %55
  %79 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @leb_write_trylock(%struct.ubi_device* %79, i32 %80, i32 %81)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %78
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %12, align 4
  %88 = call i32 (i8*, i32, ...) @dbg_wl(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %86, i32 %87)
  %89 = load i32, i32* @MOVE_CANCEL_RACE, align 4
  store i32 %89, i32* %5, align 4
  br label %312

90:                                               ; preds = %78
  %91 = load %struct.ubi_volume*, %struct.ubi_volume** %16, align 8
  %92 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %113

100:                                              ; preds = %90
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* %7, align 4
  %104 = load %struct.ubi_volume*, %struct.ubi_volume** %16, align 8
  %105 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = call i32 (i8*, i32, ...) @dbg_wl(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0), i32 %101, i32 %102, i32 %103, i32 %110)
  %112 = load i32, i32* @MOVE_CANCEL_RACE, align 4
  store i32 %112, i32* %10, align 4
  br label %306

113:                                              ; preds = %90
  %114 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %115 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %114, i32 0, i32 1
  %116 = call i32 @mutex_lock(i32* %115)
  %117 = load i32, i32* %14, align 4
  %118 = call i32 (i8*, i32, ...) @dbg_wl(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %117)
  %119 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %120 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %121 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* %14, align 4
  %125 = call i32 @ubi_io_read_data(%struct.ubi_device* %119, i32 %122, i32 %123, i32 0, i32 %124)
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %10, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %113
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* @UBI_IO_BITFLIPS, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %128
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* %7, align 4
  %135 = call i32 (i8*, i32, ...) @ubi_warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %133, i32 %134)
  %136 = load i32, i32* @MOVE_SOURCE_RD_ERR, align 4
  store i32 %136, i32* %10, align 4
  br label %302

137:                                              ; preds = %128, %113
  %138 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %9, align 8
  %139 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @UBI_VID_DYNAMIC, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %150

143:                                              ; preds = %137
  %144 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %145 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %146 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %13, align 4
  %149 = call i32 @ubi_calc_data_len(%struct.ubi_device* %144, i32 %147, i32 %148)
  store i32 %149, i32* %13, align 4
  store i32 %149, i32* %14, align 4
  br label %150

150:                                              ; preds = %143, %137
  %151 = call i32 (...) @cond_resched()
  %152 = load i32, i32* @UBI_CRC32_INIT, align 4
  %153 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %154 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %13, align 4
  %157 = call i32 @crc32(i32 %152, i32 %155, i32 %156)
  store i32 %157, i32* %17, align 4
  %158 = call i32 (...) @cond_resched()
  %159 = load i32, i32* %13, align 4
  %160 = icmp sgt i32 %159, 0
  br i1 %160, label %161, label %172

161:                                              ; preds = %150
  %162 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %9, align 8
  %163 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %162, i32 0, i32 1
  store i32 1, i32* %163, align 8
  %164 = load i32, i32* %13, align 4
  %165 = call i8* @cpu_to_be32(i32 %164)
  %166 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %9, align 8
  %167 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %166, i32 0, i32 4
  store i8* %165, i8** %167, align 8
  %168 = load i32, i32* %17, align 4
  %169 = call i8* @cpu_to_be32(i32 %168)
  %170 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %9, align 8
  %171 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %170, i32 0, i32 3
  store i8* %169, i8** %171, align 8
  br label %172

172:                                              ; preds = %161, %150
  %173 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %174 = call i32 @next_sqnum(%struct.ubi_device* %173)
  %175 = call i32 @cpu_to_be64(i32 %174)
  %176 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %9, align 8
  %177 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %176, i32 0, i32 2
  store i32 %175, i32* %177, align 4
  %178 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %179 = load i32, i32* %8, align 4
  %180 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %9, align 8
  %181 = call i32 @ubi_io_write_vid_hdr(%struct.ubi_device* %178, i32 %179, %struct.ubi_vid_hdr* %180)
  store i32 %181, i32* %10, align 4
  %182 = load i32, i32* %10, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %192

184:                                              ; preds = %172
  %185 = load i32, i32* %10, align 4
  %186 = load i32, i32* @EIO, align 4
  %187 = sub nsw i32 0, %186
  %188 = icmp eq i32 %185, %187
  br i1 %188, label %189, label %191

189:                                              ; preds = %184
  %190 = load i32, i32* @MOVE_TARGET_WR_ERR, align 4
  store i32 %190, i32* %10, align 4
  br label %191

191:                                              ; preds = %189, %184
  br label %302

192:                                              ; preds = %172
  %193 = call i32 (...) @cond_resched()
  %194 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %195 = load i32, i32* %8, align 4
  %196 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %9, align 8
  %197 = call i32 @ubi_io_read_vid_hdr(%struct.ubi_device* %194, i32 %195, %struct.ubi_vid_hdr* %196, i32 1)
  store i32 %197, i32* %10, align 4
  %198 = load i32, i32* %10, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %217

200:                                              ; preds = %192
  %201 = load i32, i32* %10, align 4
  %202 = load i32, i32* @UBI_IO_BITFLIPS, align 4
  %203 = icmp ne i32 %201, %202
  br i1 %203, label %204, label %214

204:                                              ; preds = %200
  %205 = load i32, i32* %10, align 4
  %206 = load i32, i32* %8, align 4
  %207 = call i32 (i8*, i32, ...) @ubi_warn(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i32 %205, i32 %206)
  %208 = load i32, i32* %10, align 4
  %209 = call i64 @is_error_sane(i32 %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %204
  %212 = load i32, i32* @MOVE_TARGET_RD_ERR, align 4
  store i32 %212, i32* %10, align 4
  br label %213

213:                                              ; preds = %211, %204
  br label %216

214:                                              ; preds = %200
  %215 = load i32, i32* @MOVE_CANCEL_BITFLIPS, align 4
  store i32 %215, i32* %10, align 4
  br label %216

216:                                              ; preds = %214, %213
  br label %302

217:                                              ; preds = %192
  %218 = load i32, i32* %13, align 4
  %219 = icmp sgt i32 %218, 0
  br i1 %219, label %220, label %283

220:                                              ; preds = %217
  %221 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %222 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %223 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* %8, align 4
  %226 = load i32, i32* %14, align 4
  %227 = call i32 @ubi_io_write_data(%struct.ubi_device* %221, i32 %224, i32 %225, i32 0, i32 %226)
  store i32 %227, i32* %10, align 4
  %228 = load i32, i32* %10, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %238

230:                                              ; preds = %220
  %231 = load i32, i32* %10, align 4
  %232 = load i32, i32* @EIO, align 4
  %233 = sub nsw i32 0, %232
  %234 = icmp eq i32 %231, %233
  br i1 %234, label %235, label %237

235:                                              ; preds = %230
  %236 = load i32, i32* @MOVE_TARGET_WR_ERR, align 4
  store i32 %236, i32* %10, align 4
  br label %237

237:                                              ; preds = %235, %230
  br label %302

238:                                              ; preds = %220
  %239 = call i32 (...) @cond_resched()
  %240 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %241 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %242 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* %8, align 4
  %245 = load i32, i32* %14, align 4
  %246 = call i32 @ubi_io_read_data(%struct.ubi_device* %240, i32 %243, i32 %244, i32 0, i32 %245)
  store i32 %246, i32* %10, align 4
  %247 = load i32, i32* %10, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %266

249:                                              ; preds = %238
  %250 = load i32, i32* %10, align 4
  %251 = load i32, i32* @UBI_IO_BITFLIPS, align 4
  %252 = icmp ne i32 %250, %251
  br i1 %252, label %253, label %263

253:                                              ; preds = %249
  %254 = load i32, i32* %10, align 4
  %255 = load i32, i32* %8, align 4
  %256 = call i32 (i8*, i32, ...) @ubi_warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i32 %254, i32 %255)
  %257 = load i32, i32* %10, align 4
  %258 = call i64 @is_error_sane(i32 %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %262

260:                                              ; preds = %253
  %261 = load i32, i32* @MOVE_TARGET_RD_ERR, align 4
  store i32 %261, i32* %10, align 4
  br label %262

262:                                              ; preds = %260, %253
  br label %265

263:                                              ; preds = %249
  %264 = load i32, i32* @MOVE_CANCEL_BITFLIPS, align 4
  store i32 %264, i32* %10, align 4
  br label %265

265:                                              ; preds = %263, %262
  br label %302

266:                                              ; preds = %238
  %267 = call i32 (...) @cond_resched()
  %268 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %269 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %272 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 8
  %274 = load i32, i32* %14, align 4
  %275 = call i64 @memcmp(i32 %270, i32 %273, i32 %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %282

277:                                              ; preds = %266
  %278 = load i32, i32* %8, align 4
  %279 = call i32 (i8*, i32, ...) @ubi_warn(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0), i32 %278)
  %280 = load i32, i32* @EINVAL, align 4
  %281 = sub nsw i32 0, %280
  store i32 %281, i32* %10, align 4
  br label %302

282:                                              ; preds = %266
  br label %283

283:                                              ; preds = %282, %217
  %284 = load %struct.ubi_volume*, %struct.ubi_volume** %16, align 8
  %285 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %284, i32 0, i32 0
  %286 = load i32*, i32** %285, align 8
  %287 = load i32, i32* %12, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %286, i64 %288
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* %7, align 4
  %292 = icmp eq i32 %290, %291
  %293 = zext i1 %292 to i32
  %294 = call i32 @ubi_assert(i32 %293)
  %295 = load i32, i32* %8, align 4
  %296 = load %struct.ubi_volume*, %struct.ubi_volume** %16, align 8
  %297 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %296, i32 0, i32 0
  %298 = load i32*, i32** %297, align 8
  %299 = load i32, i32* %12, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %298, i64 %300
  store i32 %295, i32* %301, align 4
  br label %302

302:                                              ; preds = %283, %277, %265, %237, %216, %191, %132
  %303 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %304 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %303, i32 0, i32 1
  %305 = call i32 @mutex_unlock(i32* %304)
  br label %306

306:                                              ; preds = %302, %100
  %307 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %308 = load i32, i32* %11, align 4
  %309 = load i32, i32* %12, align 4
  %310 = call i32 @leb_write_unlock(%struct.ubi_device* %307, i32 %308, i32 %309)
  %311 = load i32, i32* %10, align 4
  store i32 %311, i32* %5, align 4
  br label %312

312:                                              ; preds = %306, %85, %74
  %313 = load i32, i32* %5, align 4
  ret i32 %313
}

declare dso_local i32 @be32_to_cpu(i8*) #1

declare dso_local i32 @dbg_wl(i8*, i32, ...) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @vol_id2idx(%struct.ubi_device*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @leb_write_trylock(%struct.ubi_device*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ubi_io_read_data(%struct.ubi_device*, i32, i32, i32, i32) #1

declare dso_local i32 @ubi_warn(i8*, i32, ...) #1

declare dso_local i32 @ubi_calc_data_len(%struct.ubi_device*, i32, i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @crc32(i32, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @next_sqnum(%struct.ubi_device*) #1

declare dso_local i32 @ubi_io_write_vid_hdr(%struct.ubi_device*, i32, %struct.ubi_vid_hdr*) #1

declare dso_local i32 @ubi_io_read_vid_hdr(%struct.ubi_device*, i32, %struct.ubi_vid_hdr*, i32) #1

declare dso_local i64 @is_error_sane(i32) #1

declare dso_local i32 @ubi_io_write_data(%struct.ubi_device*, i32, i32, i32, i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @ubi_assert(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @leb_write_unlock(%struct.ubi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
