; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd.c_sd_read_cache_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd.c_sd_read_cache_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_disk = type { i32, i32, i32, i64, %struct.scsi_device*, i64 }
%struct.scsi_device = type { i64, i32, i64 }
%struct.scsi_mode_data = type { i32, i32, i32, i32 }
%struct.scsi_sense_hdr = type { i64, i32, i32 }

@TYPE_RBC = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Missing header in MODE_SENSE response\0A\00", align 1
@SD_BUF_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Malformed MODE SENSE response\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Got wrong page\0A\00", align 1
@KERN_NOTICE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Uses READ/WRITE(6), disabling FUA\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Write cache: %s, read cache: %s, %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"supports DPO and FUA\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"doesn't support DPO or FUA\00", align 1
@ILLEGAL_REQUEST = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [24 x i8] c"Cache data unavailable\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"Asking for cache data failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"Assuming drive cache: write through\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_disk*, i8*)* @sd_read_cache_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_read_cache_type(%struct.scsi_disk* %0, i8* %1) #0 {
  %3 = alloca %struct.scsi_disk*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.scsi_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.scsi_mode_data, align 4
  %11 = alloca %struct.scsi_sense_hdr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.scsi_disk* %0, %struct.scsi_disk** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %16 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %17 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %16, i32 0, i32 4
  %18 = load %struct.scsi_device*, %struct.scsi_device** %17, align 8
  store %struct.scsi_device* %18, %struct.scsi_device** %7, align 8
  %19 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %20 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %12, align 4
  %22 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %23 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %13, align 4
  %25 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %26 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %14, align 4
  %28 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %29 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  br label %275

33:                                               ; preds = %2
  %34 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %35 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %265

39:                                               ; preds = %33
  %40 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %41 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @TYPE_RBC, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 6, i32* %9, align 4
  store i32 8, i32* %8, align 4
  br label %47

46:                                               ; preds = %39
  store i32 8, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %46, %45
  %48 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 @sd_do_mode_sense(%struct.scsi_device* %48, i32 %49, i32 %50, i8* %51, i32 4, %struct.scsi_mode_data* %10, %struct.scsi_sense_hdr* %11)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i64 @scsi_status_is_good(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %47
  br label %240

57:                                               ; preds = %47
  %58 = getelementptr inbounds %struct.scsi_mode_data, %struct.scsi_mode_data* %10, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  store i32 6, i32* %9, align 4
  %62 = load i32, i32* @KERN_ERR, align 4
  %63 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %64 = call i32 (i32, %struct.scsi_disk*, i8*, ...) @sd_printk(i32 %62, %struct.scsi_disk* %63, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %65

65:                                               ; preds = %61, %57
  %66 = getelementptr inbounds %struct.scsi_mode_data, %struct.scsi_mode_data* %10, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp slt i32 %68, 3
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %240

71:                                               ; preds = %65
  %72 = load i32, i32* %5, align 4
  %73 = icmp sgt i32 %72, 20
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i32 20, i32* %5, align 4
  br label %75

75:                                               ; preds = %74, %71
  %76 = getelementptr inbounds %struct.scsi_mode_data, %struct.scsi_mode_data* %10, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.scsi_mode_data, %struct.scsi_mode_data* %10, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %77, %79
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @SD_BUF_SIZE, align 4
  %85 = icmp sgt i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %75
  br label %240

87:                                               ; preds = %75
  %88 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %9, align 4
  %91 = load i8*, i8** %4, align 8
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @sd_do_mode_sense(%struct.scsi_device* %88, i32 %89, i32 %90, i8* %91, i32 %92, %struct.scsi_mode_data* %10, %struct.scsi_sense_hdr* %11)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = call i64 @scsi_status_is_good(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %239

97:                                               ; preds = %87
  %98 = getelementptr inbounds %struct.scsi_mode_data, %struct.scsi_mode_data* %10, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.scsi_mode_data, %struct.scsi_mode_data* %10, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %99, %101
  store i32 %102, i32* %15, align 4
  %103 = load i32, i32* %15, align 4
  %104 = load i32, i32* @SD_BUF_SIZE, align 4
  %105 = sub nsw i32 %104, 2
  %106 = icmp sge i32 %103, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %97
  %108 = load i32, i32* @KERN_ERR, align 4
  %109 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %110 = call i32 (i32, %struct.scsi_disk*, i8*, ...) @sd_printk(i32 %108, %struct.scsi_disk* %109, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %265

111:                                              ; preds = %97
  %112 = load i8*, i8** %4, align 8
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = and i32 %117, 63
  %119 = load i32, i32* %9, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %111
  %122 = load i32, i32* @KERN_ERR, align 4
  %123 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %124 = call i32 (i32, %struct.scsi_disk*, i8*, ...) @sd_printk(i32 %122, %struct.scsi_disk* %123, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %265

125:                                              ; preds = %111
  %126 = load i32, i32* %9, align 4
  %127 = icmp eq i32 %126, 8
  br i1 %127, label %128, label %153

128:                                              ; preds = %125
  %129 = load i8*, i8** %4, align 8
  %130 = load i32, i32* %15, align 4
  %131 = add nsw i32 %130, 2
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %129, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = zext i8 %134 to i32
  %136 = and i32 %135, 4
  %137 = icmp ne i32 %136, 0
  %138 = zext i1 %137 to i32
  %139 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %140 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  %141 = load i8*, i8** %4, align 8
  %142 = load i32, i32* %15, align 4
  %143 = add nsw i32 %142, 2
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %141, i64 %144
  %146 = load i8, i8* %145, align 1
  %147 = zext i8 %146 to i32
  %148 = and i32 %147, 1
  %149 = icmp ne i32 %148, 0
  %150 = zext i1 %149 to i32
  %151 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %152 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 4
  br label %168

153:                                              ; preds = %125
  %154 = load i8*, i8** %4, align 8
  %155 = load i32, i32* %15, align 4
  %156 = add nsw i32 %155, 2
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %154, i64 %157
  %159 = load i8, i8* %158, align 1
  %160 = zext i8 %159 to i32
  %161 = and i32 %160, 1
  %162 = icmp eq i32 %161, 0
  %163 = zext i1 %162 to i32
  %164 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %165 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 8
  %166 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %167 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %166, i32 0, i32 1
  store i32 0, i32* %167, align 4
  br label %168

168:                                              ; preds = %153, %128
  %169 = getelementptr inbounds %struct.scsi_mode_data, %struct.scsi_mode_data* %10, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = and i32 %170, 16
  %172 = icmp ne i32 %171, 0
  %173 = zext i1 %172 to i32
  %174 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %175 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %174, i32 0, i32 2
  store i32 %173, i32* %175, align 8
  %176 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %177 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %193

180:                                              ; preds = %168
  %181 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %182 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %181, i32 0, i32 4
  %183 = load %struct.scsi_device*, %struct.scsi_device** %182, align 8
  %184 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %193, label %187

187:                                              ; preds = %180
  %188 = load i32, i32* @KERN_NOTICE, align 4
  %189 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %190 = call i32 (i32, %struct.scsi_disk*, i8*, ...) @sd_printk(i32 %188, %struct.scsi_disk* %189, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %191 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %192 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %191, i32 0, i32 2
  store i32 0, i32* %192, align 8
  br label %193

193:                                              ; preds = %187, %180, %168
  %194 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %195 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %194, i32 0, i32 3
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %216, label %198

198:                                              ; preds = %193
  %199 = load i32, i32* %12, align 4
  %200 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %201 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = icmp ne i32 %199, %202
  br i1 %203, label %216, label %204

204:                                              ; preds = %198
  %205 = load i32, i32* %13, align 4
  %206 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %207 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = icmp ne i32 %205, %208
  br i1 %209, label %216, label %210

210:                                              ; preds = %204
  %211 = load i32, i32* %14, align 4
  %212 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %213 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = icmp ne i32 %211, %214
  br i1 %215, label %216, label %238

216:                                              ; preds = %210, %204, %198, %193
  %217 = load i32, i32* @KERN_NOTICE, align 4
  %218 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %219 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %220 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = icmp ne i32 %221, 0
  %223 = zext i1 %222 to i64
  %224 = select i1 %222, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)
  %225 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %226 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = icmp ne i32 %227, 0
  %229 = zext i1 %228 to i64
  %230 = select i1 %228, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)
  %231 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %232 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = icmp ne i32 %233, 0
  %235 = zext i1 %234 to i64
  %236 = select i1 %234, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0)
  %237 = call i32 (i32, %struct.scsi_disk*, i8*, ...) @sd_printk(i32 %217, %struct.scsi_disk* %218, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %224, i8* %230, i8* %236)
  br label %238

238:                                              ; preds = %216, %210
  br label %275

239:                                              ; preds = %87
  br label %240

240:                                              ; preds = %239, %86, %70, %56
  %241 = call i64 @scsi_sense_valid(%struct.scsi_sense_hdr* %11)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %260

243:                                              ; preds = %240
  %244 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %11, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @ILLEGAL_REQUEST, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %248, label %260

248:                                              ; preds = %243
  %249 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %11, i32 0, i32 1
  %250 = load i32, i32* %249, align 8
  %251 = icmp eq i32 %250, 36
  br i1 %251, label %252, label %260

252:                                              ; preds = %248
  %253 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %11, i32 0, i32 2
  %254 = load i32, i32* %253, align 4
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %260

256:                                              ; preds = %252
  %257 = load i32, i32* @KERN_NOTICE, align 4
  %258 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %259 = call i32 (i32, %struct.scsi_disk*, i8*, ...) @sd_printk(i32 %257, %struct.scsi_disk* %258, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  br label %264

260:                                              ; preds = %252, %248, %243, %240
  %261 = load i32, i32* @KERN_ERR, align 4
  %262 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %263 = call i32 (i32, %struct.scsi_disk*, i8*, ...) @sd_printk(i32 %261, %struct.scsi_disk* %262, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  br label %264

264:                                              ; preds = %260, %256
  br label %265

265:                                              ; preds = %264, %121, %107, %38
  %266 = load i32, i32* @KERN_ERR, align 4
  %267 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %268 = call i32 (i32, %struct.scsi_disk*, i8*, ...) @sd_printk(i32 %266, %struct.scsi_disk* %267, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0))
  %269 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %270 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %269, i32 0, i32 0
  store i32 0, i32* %270, align 8
  %271 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %272 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %271, i32 0, i32 1
  store i32 0, i32* %272, align 4
  %273 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %274 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %273, i32 0, i32 2
  store i32 0, i32* %274, align 8
  br label %275

275:                                              ; preds = %265, %238, %32
  ret void
}

declare dso_local i32 @sd_do_mode_sense(%struct.scsi_device*, i32, i32, i8*, i32, %struct.scsi_mode_data*, %struct.scsi_sense_hdr*) #1

declare dso_local i64 @scsi_status_is_good(i32) #1

declare dso_local i32 @sd_printk(i32, %struct.scsi_disk*, i8*, ...) #1

declare dso_local i64 @scsi_sense_valid(%struct.scsi_sense_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
