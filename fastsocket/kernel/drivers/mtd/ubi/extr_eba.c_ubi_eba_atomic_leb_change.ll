; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_eba.c_ubi_eba_atomic_leb_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_eba.c_ubi_eba_atomic_leb_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32, i64 }
%struct.ubi_volume = type { i32, i32, i32* }
%struct.ubi_vid_hdr = type { i32, i8*, i8*, i8*, i32, i8*, i32, i8*, i8* }

@EROFS = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UBI_CRC32_INIT = common dso_local global i32 0, align 4
@UBI_VID_DYNAMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"change LEB %d:%d, PEB %d, write VID hdr to PEB %d\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"failed to write VID header to LEB %d:%d, PEB %d\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"failed to write %d bytes of data to PEB %d\00", align 1
@EIO = common dso_local global i32 0, align 4
@UBI_IO_RETRIES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"try another PEB\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_eba_atomic_leb_change(%struct.ubi_device* %0, %struct.ubi_volume* %1, i32 %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubi_device*, align 8
  %9 = alloca %struct.ubi_volume*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.ubi_vid_hdr*, align 8
  %19 = alloca i32, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %8, align 8
  store %struct.ubi_volume* %1, %struct.ubi_volume** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %16, align 4
  %20 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %21 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %17, align 4
  %23 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %24 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %6
  %28 = load i32, i32* @EROFS, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %231

30:                                               ; preds = %6
  %31 = load i32, i32* %12, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %30
  %34 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %35 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @ubi_eba_unmap_leb(%struct.ubi_device* %34, %struct.ubi_volume* %35, i32 %36)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* %14, align 4
  store i32 %41, i32* %7, align 4
  br label %231

42:                                               ; preds = %33
  %43 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %44 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @ubi_eba_write_leb(%struct.ubi_device* %43, %struct.ubi_volume* %44, i32 %45, i32* null, i32 0, i32 0, i32 %46)
  store i32 %47, i32* %7, align 4
  br label %231

48:                                               ; preds = %30
  %49 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %50 = load i32, i32* @GFP_NOFS, align 4
  %51 = call %struct.ubi_vid_hdr* @ubi_zalloc_vid_hdr(%struct.ubi_device* %49, i32 %50)
  store %struct.ubi_vid_hdr* %51, %struct.ubi_vid_hdr** %18, align 8
  %52 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %18, align 8
  %53 = icmp ne %struct.ubi_vid_hdr* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %7, align 4
  br label %231

57:                                               ; preds = %48
  %58 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %59 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %58, i32 0, i32 1
  %60 = call i32 @mutex_lock(i32* %59)
  %61 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %62 = load i32, i32* %17, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @leb_write_lock(%struct.ubi_device* %61, i32 %62, i32 %63)
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %14, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  br label %189

68:                                               ; preds = %57
  %69 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %70 = call i32 @next_sqnum(%struct.ubi_device* %69)
  %71 = call i8* @cpu_to_be64(i32 %70)
  %72 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %18, align 8
  %73 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  %74 = load i32, i32* %17, align 4
  %75 = call i8* @cpu_to_be32(i32 %74)
  %76 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %18, align 8
  %77 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %76, i32 0, i32 8
  store i8* %75, i8** %77, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call i8* @cpu_to_be32(i32 %78)
  %80 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %18, align 8
  %81 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %80, i32 0, i32 7
  store i8* %79, i8** %81, align 8
  %82 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %83 = load i32, i32* %17, align 4
  %84 = call i32 @ubi_get_compat(%struct.ubi_device* %82, i32 %83)
  %85 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %18, align 8
  %86 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %85, i32 0, i32 6
  store i32 %84, i32* %86, align 8
  %87 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %88 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @cpu_to_be32(i32 %89)
  %91 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %18, align 8
  %92 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %91, i32 0, i32 5
  store i8* %90, i8** %92, align 8
  %93 = load i32, i32* @UBI_CRC32_INIT, align 4
  %94 = load i8*, i8** %11, align 8
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @crc32(i32 %93, i8* %94, i32 %95)
  store i32 %96, i32* %19, align 4
  %97 = load i32, i32* @UBI_VID_DYNAMIC, align 4
  %98 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %18, align 8
  %99 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %98, i32 0, i32 4
  store i32 %97, i32* %99, align 8
  %100 = load i32, i32* %12, align 4
  %101 = call i8* @cpu_to_be32(i32 %100)
  %102 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %18, align 8
  %103 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %102, i32 0, i32 3
  store i8* %101, i8** %103, align 8
  %104 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %18, align 8
  %105 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %104, i32 0, i32 0
  store i32 1, i32* %105, align 8
  %106 = load i32, i32* %19, align 4
  %107 = call i8* @cpu_to_be32(i32 %106)
  %108 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %18, align 8
  %109 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %108, i32 0, i32 2
  store i8* %107, i8** %109, align 8
  br label %110

110:                                              ; preds = %224, %68
  %111 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %112 = load i32, i32* %13, align 4
  %113 = call i32 @ubi_wl_get_peb(%struct.ubi_device* %111, i32 %112)
  store i32 %113, i32* %15, align 4
  %114 = load i32, i32* %15, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %110
  %117 = load i32, i32* %15, align 4
  store i32 %117, i32* %14, align 4
  br label %184

118:                                              ; preds = %110
  %119 = load i32, i32* %17, align 4
  %120 = load i32, i32* %10, align 4
  %121 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %122 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %10, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %15, align 4
  %129 = call i32 @dbg_eba(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %119, i32 %120, i32 %127, i32 %128)
  %130 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %131 = load i32, i32* %15, align 4
  %132 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %18, align 8
  %133 = call i32 @ubi_io_write_vid_hdr(%struct.ubi_device* %130, i32 %131, %struct.ubi_vid_hdr* %132)
  store i32 %133, i32* %14, align 4
  %134 = load i32, i32* %14, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %118
  %137 = load i32, i32* %17, align 4
  %138 = load i32, i32* %10, align 4
  %139 = load i32, i32* %15, align 4
  %140 = call i32 (i8*, i32, i32, ...) @ubi_warn(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %137, i32 %138, i32 %139)
  br label %197

141:                                              ; preds = %118
  %142 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %143 = load i8*, i8** %11, align 8
  %144 = load i32, i32* %15, align 4
  %145 = load i32, i32* %12, align 4
  %146 = call i32 @ubi_io_write_data(%struct.ubi_device* %142, i8* %143, i32 %144, i32 0, i32 %145)
  store i32 %146, i32* %14, align 4
  %147 = load i32, i32* %14, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %141
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* %15, align 4
  %152 = call i32 (i8*, i32, i32, ...) @ubi_warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %150, i32 %151)
  br label %197

153:                                              ; preds = %141
  %154 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %155 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %154, i32 0, i32 2
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %10, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = icmp sge i32 %160, 0
  br i1 %161, label %162, label %176

162:                                              ; preds = %153
  %163 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %164 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %165 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %164, i32 0, i32 2
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %10, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @ubi_wl_put_peb(%struct.ubi_device* %163, i32 %170, i32 0)
  store i32 %171, i32* %14, align 4
  %172 = load i32, i32* %14, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %162
  br label %184

175:                                              ; preds = %162
  br label %176

176:                                              ; preds = %175, %153
  %177 = load i32, i32* %15, align 4
  %178 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %179 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %178, i32 0, i32 2
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %10, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  store i32 %177, i32* %183, align 4
  br label %184

184:                                              ; preds = %221, %207, %176, %174, %116
  %185 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %186 = load i32, i32* %17, align 4
  %187 = load i32, i32* %10, align 4
  %188 = call i32 @leb_write_unlock(%struct.ubi_device* %185, i32 %186, i32 %187)
  br label %189

189:                                              ; preds = %184, %67
  %190 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %191 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %190, i32 0, i32 1
  %192 = call i32 @mutex_unlock(i32* %191)
  %193 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %194 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %18, align 8
  %195 = call i32 @ubi_free_vid_hdr(%struct.ubi_device* %193, %struct.ubi_vid_hdr* %194)
  %196 = load i32, i32* %14, align 4
  store i32 %196, i32* %7, align 4
  br label %231

197:                                              ; preds = %149, %136
  %198 = load i32, i32* %14, align 4
  %199 = load i32, i32* @EIO, align 4
  %200 = sub nsw i32 0, %199
  %201 = icmp ne i32 %198, %200
  br i1 %201, label %207, label %202

202:                                              ; preds = %197
  %203 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %204 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %210, label %207

207:                                              ; preds = %202, %197
  %208 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %209 = call i32 @ubi_ro_mode(%struct.ubi_device* %208)
  br label %184

210:                                              ; preds = %202
  %211 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %212 = load i32, i32* %15, align 4
  %213 = call i32 @ubi_wl_put_peb(%struct.ubi_device* %211, i32 %212, i32 1)
  store i32 %213, i32* %14, align 4
  %214 = load i32, i32* %14, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %221, label %216

216:                                              ; preds = %210
  %217 = load i32, i32* %16, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %16, align 4
  %219 = load i32, i32* @UBI_IO_RETRIES, align 4
  %220 = icmp sgt i32 %218, %219
  br i1 %220, label %221, label %224

221:                                              ; preds = %216, %210
  %222 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %223 = call i32 @ubi_ro_mode(%struct.ubi_device* %222)
  br label %184

224:                                              ; preds = %216
  %225 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %226 = call i32 @next_sqnum(%struct.ubi_device* %225)
  %227 = call i8* @cpu_to_be64(i32 %226)
  %228 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %18, align 8
  %229 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %228, i32 0, i32 1
  store i8* %227, i8** %229, align 8
  %230 = call i32 @ubi_msg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %110

231:                                              ; preds = %189, %54, %42, %40, %27
  %232 = load i32, i32* %7, align 4
  ret i32 %232
}

declare dso_local i32 @ubi_eba_unmap_leb(%struct.ubi_device*, %struct.ubi_volume*, i32) #1

declare dso_local i32 @ubi_eba_write_leb(%struct.ubi_device*, %struct.ubi_volume*, i32, i32*, i32, i32, i32) #1

declare dso_local %struct.ubi_vid_hdr* @ubi_zalloc_vid_hdr(%struct.ubi_device*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @leb_write_lock(%struct.ubi_device*, i32, i32) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @next_sqnum(%struct.ubi_device*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @ubi_get_compat(%struct.ubi_device*, i32) #1

declare dso_local i32 @crc32(i32, i8*, i32) #1

declare dso_local i32 @ubi_wl_get_peb(%struct.ubi_device*, i32) #1

declare dso_local i32 @dbg_eba(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ubi_io_write_vid_hdr(%struct.ubi_device*, i32, %struct.ubi_vid_hdr*) #1

declare dso_local i32 @ubi_warn(i8*, i32, i32, ...) #1

declare dso_local i32 @ubi_io_write_data(%struct.ubi_device*, i8*, i32, i32, i32) #1

declare dso_local i32 @ubi_wl_put_peb(%struct.ubi_device*, i32, i32) #1

declare dso_local i32 @leb_write_unlock(%struct.ubi_device*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ubi_free_vid_hdr(%struct.ubi_device*, %struct.ubi_vid_hdr*) #1

declare dso_local i32 @ubi_ro_mode(%struct.ubi_device*) #1

declare dso_local i32 @ubi_msg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
