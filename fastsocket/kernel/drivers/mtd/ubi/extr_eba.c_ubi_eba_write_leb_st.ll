; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_eba.c_ubi_eba_write_leb_st.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_eba.c_ubi_eba_write_leb_st.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32, i64 }
%struct.ubi_volume = type { i32, i32, i32* }
%struct.ubi_vid_hdr = type { i8*, i8*, i8*, i8*, i32, i8*, i32, i8*, i8* }

@EROFS = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UBI_CRC32_INIT = common dso_local global i32 0, align 4
@UBI_VID_STATIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"write VID hdr and %d bytes at LEB %d:%d, PEB %d, used_ebs %d\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"failed to write VID header to LEB %d:%d, PEB %d\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"failed to write %d bytes of data to PEB %d\00", align 1
@EIO = common dso_local global i32 0, align 4
@UBI_IO_RETRIES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"try another PEB\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_eba_write_leb_st(%struct.ubi_device* %0, %struct.ubi_volume* %1, i32 %2, i8* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ubi_device*, align 8
  %10 = alloca %struct.ubi_volume*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.ubi_vid_hdr*, align 8
  %22 = alloca i32, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %9, align 8
  store %struct.ubi_volume* %1, %struct.ubi_volume** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %18, align 4
  %23 = load i32, i32* %13, align 4
  store i32 %23, i32* %19, align 4
  %24 = load %struct.ubi_volume*, %struct.ubi_volume** %10, align 8
  %25 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %20, align 4
  %27 = load %struct.ubi_device*, %struct.ubi_device** %9, align 8
  %28 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %7
  %32 = load i32, i32* @EROFS, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %8, align 4
  br label %241

34:                                               ; preds = %7
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %15, align 4
  %37 = sub nsw i32 %36, 1
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load i32, i32* %19, align 4
  %41 = load %struct.ubi_device*, %struct.ubi_device** %9, align 8
  %42 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ALIGN(i32 %40, i32 %43)
  store i32 %44, i32* %13, align 4
  br label %56

45:                                               ; preds = %34
  %46 = load i32, i32* %13, align 4
  %47 = load %struct.ubi_device*, %struct.ubi_device** %9, align 8
  %48 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %49, 1
  %51 = and i32 %46, %50
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i32 @ubi_assert(i32 %54)
  br label %56

56:                                               ; preds = %45, %39
  %57 = load %struct.ubi_device*, %struct.ubi_device** %9, align 8
  %58 = load i32, i32* @GFP_NOFS, align 4
  %59 = call %struct.ubi_vid_hdr* @ubi_zalloc_vid_hdr(%struct.ubi_device* %57, i32 %58)
  store %struct.ubi_vid_hdr* %59, %struct.ubi_vid_hdr** %21, align 8
  %60 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %21, align 8
  %61 = icmp ne %struct.ubi_vid_hdr* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %56
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %8, align 4
  br label %241

65:                                               ; preds = %56
  %66 = load %struct.ubi_device*, %struct.ubi_device** %9, align 8
  %67 = load i32, i32* %20, align 4
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @leb_write_lock(%struct.ubi_device* %66, i32 %67, i32 %68)
  store i32 %69, i32* %16, align 4
  %70 = load i32, i32* %16, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %65
  %73 = load %struct.ubi_device*, %struct.ubi_device** %9, align 8
  %74 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %21, align 8
  %75 = call i32 @ubi_free_vid_hdr(%struct.ubi_device* %73, %struct.ubi_vid_hdr* %74)
  %76 = load i32, i32* %16, align 4
  store i32 %76, i32* %8, align 4
  br label %241

77:                                               ; preds = %65
  %78 = load %struct.ubi_device*, %struct.ubi_device** %9, align 8
  %79 = call i32 @next_sqnum(%struct.ubi_device* %78)
  %80 = call i8* @cpu_to_be64(i32 %79)
  %81 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %21, align 8
  %82 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %81, i32 0, i32 0
  store i8* %80, i8** %82, align 8
  %83 = load i32, i32* %20, align 4
  %84 = call i8* @cpu_to_be32(i32 %83)
  %85 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %21, align 8
  %86 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %85, i32 0, i32 8
  store i8* %84, i8** %86, align 8
  %87 = load i32, i32* %11, align 4
  %88 = call i8* @cpu_to_be32(i32 %87)
  %89 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %21, align 8
  %90 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %89, i32 0, i32 7
  store i8* %88, i8** %90, align 8
  %91 = load %struct.ubi_device*, %struct.ubi_device** %9, align 8
  %92 = load i32, i32* %20, align 4
  %93 = call i32 @ubi_get_compat(%struct.ubi_device* %91, i32 %92)
  %94 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %21, align 8
  %95 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %94, i32 0, i32 6
  store i32 %93, i32* %95, align 8
  %96 = load %struct.ubi_volume*, %struct.ubi_volume** %10, align 8
  %97 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i8* @cpu_to_be32(i32 %98)
  %100 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %21, align 8
  %101 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %100, i32 0, i32 5
  store i8* %99, i8** %101, align 8
  %102 = load i32, i32* @UBI_CRC32_INIT, align 4
  %103 = load i8*, i8** %12, align 8
  %104 = load i32, i32* %19, align 4
  %105 = call i32 @crc32(i32 %102, i8* %103, i32 %104)
  store i32 %105, i32* %22, align 4
  %106 = load i32, i32* @UBI_VID_STATIC, align 4
  %107 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %21, align 8
  %108 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %107, i32 0, i32 4
  store i32 %106, i32* %108, align 8
  %109 = load i32, i32* %19, align 4
  %110 = call i8* @cpu_to_be32(i32 %109)
  %111 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %21, align 8
  %112 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %111, i32 0, i32 3
  store i8* %110, i8** %112, align 8
  %113 = load i32, i32* %15, align 4
  %114 = call i8* @cpu_to_be32(i32 %113)
  %115 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %21, align 8
  %116 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %115, i32 0, i32 2
  store i8* %114, i8** %116, align 8
  %117 = load i32, i32* %22, align 4
  %118 = call i8* @cpu_to_be32(i32 %117)
  %119 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %21, align 8
  %120 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %119, i32 0, i32 1
  store i8* %118, i8** %120, align 8
  br label %121

121:                                              ; preds = %234, %77
  %122 = load %struct.ubi_device*, %struct.ubi_device** %9, align 8
  %123 = load i32, i32* %14, align 4
  %124 = call i32 @ubi_wl_get_peb(%struct.ubi_device* %122, i32 %123)
  store i32 %124, i32* %17, align 4
  %125 = load i32, i32* %17, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %121
  %128 = load %struct.ubi_device*, %struct.ubi_device** %9, align 8
  %129 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %21, align 8
  %130 = call i32 @ubi_free_vid_hdr(%struct.ubi_device* %128, %struct.ubi_vid_hdr* %129)
  %131 = load %struct.ubi_device*, %struct.ubi_device** %9, align 8
  %132 = load i32, i32* %20, align 4
  %133 = load i32, i32* %11, align 4
  %134 = call i32 @leb_write_unlock(%struct.ubi_device* %131, i32 %132, i32 %133)
  %135 = load i32, i32* %17, align 4
  store i32 %135, i32* %8, align 4
  br label %241

136:                                              ; preds = %121
  %137 = load i32, i32* %13, align 4
  %138 = load i32, i32* %20, align 4
  %139 = load i32, i32* %11, align 4
  %140 = load i32, i32* %17, align 4
  %141 = load i32, i32* %15, align 4
  %142 = call i32 @dbg_eba(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %137, i32 %138, i32 %139, i32 %140, i32 %141)
  %143 = load %struct.ubi_device*, %struct.ubi_device** %9, align 8
  %144 = load i32, i32* %17, align 4
  %145 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %21, align 8
  %146 = call i32 @ubi_io_write_vid_hdr(%struct.ubi_device* %143, i32 %144, %struct.ubi_vid_hdr* %145)
  store i32 %146, i32* %16, align 4
  %147 = load i32, i32* %16, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %136
  %150 = load i32, i32* %20, align 4
  %151 = load i32, i32* %11, align 4
  %152 = load i32, i32* %17, align 4
  %153 = call i32 (i8*, i32, i32, ...) @ubi_warn(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %150, i32 %151, i32 %152)
  br label %191

154:                                              ; preds = %136
  %155 = load %struct.ubi_device*, %struct.ubi_device** %9, align 8
  %156 = load i8*, i8** %12, align 8
  %157 = load i32, i32* %17, align 4
  %158 = load i32, i32* %13, align 4
  %159 = call i32 @ubi_io_write_data(%struct.ubi_device* %155, i8* %156, i32 %157, i32 0, i32 %158)
  store i32 %159, i32* %16, align 4
  %160 = load i32, i32* %16, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %154
  %163 = load i32, i32* %13, align 4
  %164 = load i32, i32* %17, align 4
  %165 = call i32 (i8*, i32, i32, ...) @ubi_warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %163, i32 %164)
  br label %191

166:                                              ; preds = %154
  %167 = load %struct.ubi_volume*, %struct.ubi_volume** %10, align 8
  %168 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %167, i32 0, i32 2
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %11, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = icmp slt i32 %173, 0
  %175 = zext i1 %174 to i32
  %176 = call i32 @ubi_assert(i32 %175)
  %177 = load i32, i32* %17, align 4
  %178 = load %struct.ubi_volume*, %struct.ubi_volume** %10, align 8
  %179 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %178, i32 0, i32 2
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %11, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  store i32 %177, i32* %183, align 4
  %184 = load %struct.ubi_device*, %struct.ubi_device** %9, align 8
  %185 = load i32, i32* %20, align 4
  %186 = load i32, i32* %11, align 4
  %187 = call i32 @leb_write_unlock(%struct.ubi_device* %184, i32 %185, i32 %186)
  %188 = load %struct.ubi_device*, %struct.ubi_device** %9, align 8
  %189 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %21, align 8
  %190 = call i32 @ubi_free_vid_hdr(%struct.ubi_device* %188, %struct.ubi_vid_hdr* %189)
  store i32 0, i32* %8, align 4
  br label %241

191:                                              ; preds = %162, %149
  %192 = load i32, i32* %16, align 4
  %193 = load i32, i32* @EIO, align 4
  %194 = sub nsw i32 0, %193
  %195 = icmp ne i32 %192, %194
  br i1 %195, label %201, label %196

196:                                              ; preds = %191
  %197 = load %struct.ubi_device*, %struct.ubi_device** %9, align 8
  %198 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %212, label %201

201:                                              ; preds = %196, %191
  %202 = load %struct.ubi_device*, %struct.ubi_device** %9, align 8
  %203 = call i32 @ubi_ro_mode(%struct.ubi_device* %202)
  %204 = load %struct.ubi_device*, %struct.ubi_device** %9, align 8
  %205 = load i32, i32* %20, align 4
  %206 = load i32, i32* %11, align 4
  %207 = call i32 @leb_write_unlock(%struct.ubi_device* %204, i32 %205, i32 %206)
  %208 = load %struct.ubi_device*, %struct.ubi_device** %9, align 8
  %209 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %21, align 8
  %210 = call i32 @ubi_free_vid_hdr(%struct.ubi_device* %208, %struct.ubi_vid_hdr* %209)
  %211 = load i32, i32* %16, align 4
  store i32 %211, i32* %8, align 4
  br label %241

212:                                              ; preds = %196
  %213 = load %struct.ubi_device*, %struct.ubi_device** %9, align 8
  %214 = load i32, i32* %17, align 4
  %215 = call i32 @ubi_wl_put_peb(%struct.ubi_device* %213, i32 %214, i32 1)
  store i32 %215, i32* %16, align 4
  %216 = load i32, i32* %16, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %223, label %218

218:                                              ; preds = %212
  %219 = load i32, i32* %18, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %18, align 4
  %221 = load i32, i32* @UBI_IO_RETRIES, align 4
  %222 = icmp sgt i32 %220, %221
  br i1 %222, label %223, label %234

223:                                              ; preds = %218, %212
  %224 = load %struct.ubi_device*, %struct.ubi_device** %9, align 8
  %225 = call i32 @ubi_ro_mode(%struct.ubi_device* %224)
  %226 = load %struct.ubi_device*, %struct.ubi_device** %9, align 8
  %227 = load i32, i32* %20, align 4
  %228 = load i32, i32* %11, align 4
  %229 = call i32 @leb_write_unlock(%struct.ubi_device* %226, i32 %227, i32 %228)
  %230 = load %struct.ubi_device*, %struct.ubi_device** %9, align 8
  %231 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %21, align 8
  %232 = call i32 @ubi_free_vid_hdr(%struct.ubi_device* %230, %struct.ubi_vid_hdr* %231)
  %233 = load i32, i32* %16, align 4
  store i32 %233, i32* %8, align 4
  br label %241

234:                                              ; preds = %218
  %235 = load %struct.ubi_device*, %struct.ubi_device** %9, align 8
  %236 = call i32 @next_sqnum(%struct.ubi_device* %235)
  %237 = call i8* @cpu_to_be64(i32 %236)
  %238 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %21, align 8
  %239 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %238, i32 0, i32 0
  store i8* %237, i8** %239, align 8
  %240 = call i32 @ubi_msg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %121

241:                                              ; preds = %223, %201, %166, %127, %72, %62, %31
  %242 = load i32, i32* %8, align 4
  ret i32 %242
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @ubi_assert(i32) #1

declare dso_local %struct.ubi_vid_hdr* @ubi_zalloc_vid_hdr(%struct.ubi_device*, i32) #1

declare dso_local i32 @leb_write_lock(%struct.ubi_device*, i32, i32) #1

declare dso_local i32 @ubi_free_vid_hdr(%struct.ubi_device*, %struct.ubi_vid_hdr*) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @next_sqnum(%struct.ubi_device*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @ubi_get_compat(%struct.ubi_device*, i32) #1

declare dso_local i32 @crc32(i32, i8*, i32) #1

declare dso_local i32 @ubi_wl_get_peb(%struct.ubi_device*, i32) #1

declare dso_local i32 @leb_write_unlock(%struct.ubi_device*, i32, i32) #1

declare dso_local i32 @dbg_eba(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ubi_io_write_vid_hdr(%struct.ubi_device*, i32, %struct.ubi_vid_hdr*) #1

declare dso_local i32 @ubi_warn(i8*, i32, i32, ...) #1

declare dso_local i32 @ubi_io_write_data(%struct.ubi_device*, i8*, i32, i32, i32) #1

declare dso_local i32 @ubi_ro_mode(%struct.ubi_device*) #1

declare dso_local i32 @ubi_wl_put_peb(%struct.ubi_device*, i32, i32) #1

declare dso_local i32 @ubi_msg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
