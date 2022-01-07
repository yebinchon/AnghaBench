; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_build.c_ubi_attach_mtd_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_build.c_ubi_attach_mtd_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mtd_info* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mtd_info = type { i64, i64, i32 }

@UBI_MAX_DEVICES = common dso_local global i32 0, align 4
@ubi_devices = common dso_local global %struct.ubi_device** null, align 8
@.str = private unnamed_addr constant [35 x i8] c"mtd%d is already attached to ubi%d\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@MTD_UBIVOLUME = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [62 x i8] c"refuse attaching mtd%d - it is already emulated on top of UBI\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@UBI_DEV_NUM_AUTO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"only %d UBI devices may be created\00", align 1
@ENFILE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"ubi%d already exists\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"attaching mtd%d to ubi%d\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"failed to attach by scanning, error %d\00", align 1
@ubi_thread = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"cannot spawn \22%s\22, error %d\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"attached mtd%d to ubi%d\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"MTD device name:            \22%s\22\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"MTD device size:            %llu MiB\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"number of good PEBs:        %d\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"number of bad PEBs:         %d\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"max. allowed volumes:       %d\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"wear-leveling threshold:    %d\00", align 1
@CONFIG_MTD_UBI_WL_THRESHOLD = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [31 x i8] c"number of internal volumes: %d\00", align 1
@UBI_INT_VOL_COUNT = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [31 x i8] c"number of user volumes:     %d\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"available PEBs:             %d\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"total number of reserved PEBs: %d\00", align 1
@.str.18 = private unnamed_addr constant [49 x i8] c"number of PEBs reserved for bad PEB handling: %d\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"max/mean erase counter: %d/%d\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"image sequence number: %d\00", align 1
@DBG_DISABLE_BGT = common dso_local global i32 0, align 4
@ubi_reboot_notifier = common dso_local global i32 0, align 4
@UBI_VOLUME_ADDED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_attach_mtd_dev(%struct.mtd_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubi_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 1, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %44, %3
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @UBI_MAX_DEVICES, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %47

16:                                               ; preds = %12
  %17 = load %struct.ubi_device**, %struct.ubi_device*** @ubi_devices, align 8
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.ubi_device*, %struct.ubi_device** %17, i64 %19
  %21 = load %struct.ubi_device*, %struct.ubi_device** %20, align 8
  store %struct.ubi_device* %21, %struct.ubi_device** %8, align 8
  %22 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %23 = icmp ne %struct.ubi_device* %22, null
  br i1 %23, label %24, label %43

24:                                               ; preds = %16
  %25 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %26 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %29 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %28, i32 0, i32 29
  %30 = load %struct.mtd_info*, %struct.mtd_info** %29, align 8
  %31 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %27, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %24
  %35 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %36 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = load i32, i32* %9, align 4
  %40 = call i32 (i8*, i32, ...) @dbg_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load i32, i32* @EEXIST, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %361

43:                                               ; preds = %24, %16
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %12

47:                                               ; preds = %12
  %48 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %49 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @MTD_UBIVOLUME, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %55 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 (i8*, i64, ...) @ubi_err(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i64 %56)
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %361

60:                                               ; preds = %47
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @UBI_DEV_NUM_AUTO, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %91

64:                                               ; preds = %60
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %78, %64
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @UBI_MAX_DEVICES, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %65
  %70 = load %struct.ubi_device**, %struct.ubi_device*** @ubi_devices, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.ubi_device*, %struct.ubi_device** %70, i64 %72
  %74 = load %struct.ubi_device*, %struct.ubi_device** %73, align 8
  %75 = icmp ne %struct.ubi_device* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %69
  br label %81

77:                                               ; preds = %69
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %6, align 4
  br label %65

81:                                               ; preds = %76, %65
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @UBI_MAX_DEVICES, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %81
  %86 = load i32, i32* @UBI_MAX_DEVICES, align 4
  %87 = call i32 (i8*, i32, ...) @dbg_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @ENFILE, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %361

90:                                               ; preds = %81
  br label %111

91:                                               ; preds = %60
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @UBI_MAX_DEVICES, align 4
  %94 = icmp sge i32 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %4, align 4
  br label %361

98:                                               ; preds = %91
  %99 = load %struct.ubi_device**, %struct.ubi_device*** @ubi_devices, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.ubi_device*, %struct.ubi_device** %99, i64 %101
  %103 = load %struct.ubi_device*, %struct.ubi_device** %102, align 8
  %104 = icmp ne %struct.ubi_device* %103, null
  br i1 %104, label %105, label %110

105:                                              ; preds = %98
  %106 = load i32, i32* %6, align 4
  %107 = call i32 (i8*, i32, ...) @dbg_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* @EEXIST, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %4, align 4
  br label %361

110:                                              ; preds = %98
  br label %111

111:                                              ; preds = %110, %90
  %112 = load i32, i32* @GFP_KERNEL, align 4
  %113 = call %struct.ubi_device* @kzalloc(i32 152, i32 %112)
  store %struct.ubi_device* %113, %struct.ubi_device** %8, align 8
  %114 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %115 = icmp ne %struct.ubi_device* %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %111
  %117 = load i32, i32* @ENOMEM, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %4, align 4
  br label %361

119:                                              ; preds = %111
  %120 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %121 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %122 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %121, i32 0, i32 29
  store %struct.mtd_info* %120, %struct.mtd_info** %122, align 8
  %123 = load i32, i32* %6, align 4
  %124 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %125 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  %126 = load i32, i32* %7, align 4
  %127 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %128 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  %129 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %130 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %129, i32 0, i32 2
  store i32 -1, i32* %130, align 8
  %131 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %132 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %131, i32 0, i32 28
  %133 = call i32 @mutex_init(i32* %132)
  %134 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %135 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %134, i32 0, i32 27
  %136 = call i32 @mutex_init(i32* %135)
  %137 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %138 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %137, i32 0, i32 26
  %139 = call i32 @mutex_init(i32* %138)
  %140 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %141 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %140, i32 0, i32 25
  %142 = call i32 @spin_lock_init(i32* %141)
  %143 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %144 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = trunc i64 %145 to i32
  %147 = load i32, i32* %6, align 4
  %148 = call i32 (i8*, i32, ...) @ubi_msg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %146, i32 %147)
  %149 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %150 = call i32 @io_init(%struct.ubi_device* %149)
  store i32 %150, i32* %10, align 4
  %151 = load i32, i32* %10, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %119
  br label %349

154:                                              ; preds = %119
  %155 = load i32, i32* @ENOMEM, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %10, align 4
  %157 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %158 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %157, i32 0, i32 23
  %159 = load i32, i32* %158, align 4
  %160 = call i8* @vmalloc(i32 %159)
  %161 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %162 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %161, i32 0, i32 15
  store i8* %160, i8** %162, align 8
  %163 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %164 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %163, i32 0, i32 15
  %165 = load i8*, i8** %164, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %168, label %167

167:                                              ; preds = %154
  br label %349

168:                                              ; preds = %154
  %169 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %170 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %169, i32 0, i32 23
  %171 = load i32, i32* %170, align 4
  %172 = call i8* @vmalloc(i32 %171)
  %173 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %174 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %173, i32 0, i32 14
  store i8* %172, i8** %174, align 8
  %175 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %176 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %175, i32 0, i32 14
  %177 = load i8*, i8** %176, align 8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %180, label %179

179:                                              ; preds = %168
  br label %349

180:                                              ; preds = %168
  %181 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %182 = call i32 @attach_by_scanning(%struct.ubi_device* %181)
  store i32 %182, i32* %10, align 4
  %183 = load i32, i32* %10, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %180
  %186 = load i32, i32* %10, align 4
  %187 = call i32 (i8*, i32, ...) @dbg_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %186)
  br label %349

188:                                              ; preds = %180
  %189 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %190 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = icmp ne i32 %191, -1
  br i1 %192, label %193, label %203

193:                                              ; preds = %188
  %194 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %195 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %196 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @autoresize(%struct.ubi_device* %194, i32 %197)
  store i32 %198, i32* %10, align 4
  %199 = load i32, i32* %10, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %193
  br label %334

202:                                              ; preds = %193
  br label %203

203:                                              ; preds = %202, %188
  %204 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %205 = call i32 @uif_init(%struct.ubi_device* %204)
  store i32 %205, i32* %10, align 4
  %206 = load i32, i32* %10, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %203
  br label %333

209:                                              ; preds = %203
  %210 = load i32, i32* @ubi_thread, align 4
  %211 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %212 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %213 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %212, i32 0, i32 22
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @kthread_create(i32 %210, %struct.ubi_device* %211, i32 %214)
  %216 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %217 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %216, i32 0, i32 19
  store i32 %215, i32* %217, align 4
  %218 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %219 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %218, i32 0, i32 19
  %220 = load i32, i32* %219, align 4
  %221 = call i64 @IS_ERR(i32 %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %234

223:                                              ; preds = %209
  %224 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %225 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %224, i32 0, i32 19
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @PTR_ERR(i32 %226)
  store i32 %227, i32* %10, align 4
  %228 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %229 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %228, i32 0, i32 22
  %230 = load i32, i32* %229, align 8
  %231 = sext i32 %230 to i64
  %232 = load i32, i32* %10, align 4
  %233 = call i32 (i8*, i64, ...) @ubi_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i64 %231, i32 %232)
  br label %330

234:                                              ; preds = %209
  %235 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %236 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = trunc i64 %237 to i32
  %239 = load i32, i32* %6, align 4
  %240 = call i32 (i8*, i32, ...) @ubi_msg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %238, i32 %239)
  %241 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %242 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = call i32 (i8*, i32, ...) @ubi_msg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %243)
  %245 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %246 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 4
  %248 = ashr i32 %247, 20
  %249 = call i32 (i8*, i32, ...) @ubi_msg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 %248)
  %250 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %251 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %250, i32 0, i32 4
  %252 = load i32, i32* %251, align 8
  %253 = call i32 (i8*, i32, ...) @ubi_msg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i32 %252)
  %254 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %255 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %254, i32 0, i32 5
  %256 = load i32, i32* %255, align 4
  %257 = call i32 (i8*, i32, ...) @ubi_msg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i32 %256)
  %258 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %259 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %258, i32 0, i32 6
  %260 = load i32, i32* %259, align 8
  %261 = call i32 (i8*, i32, ...) @ubi_msg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i32 %260)
  %262 = load i32, i32* @CONFIG_MTD_UBI_WL_THRESHOLD, align 4
  %263 = call i32 (i8*, i32, ...) @ubi_msg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i32 %262)
  %264 = load i32, i32* @UBI_INT_VOL_COUNT, align 4
  %265 = call i32 (i8*, i32, ...) @ubi_msg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0), i32 %264)
  %266 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %267 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %266, i32 0, i32 7
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* @UBI_INT_VOL_COUNT, align 4
  %270 = sub nsw i32 %268, %269
  %271 = call i32 (i8*, i32, ...) @ubi_msg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0), i32 %270)
  %272 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %273 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %272, i32 0, i32 8
  %274 = load i32, i32* %273, align 8
  %275 = call i32 (i8*, i32, ...) @ubi_msg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0), i32 %274)
  %276 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %277 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %276, i32 0, i32 9
  %278 = load i32, i32* %277, align 4
  %279 = call i32 (i8*, i32, ...) @ubi_msg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i64 0, i64 0), i32 %278)
  %280 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %281 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %280, i32 0, i32 10
  %282 = load i32, i32* %281, align 8
  %283 = call i32 (i8*, i32, ...) @ubi_msg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.18, i64 0, i64 0), i32 %282)
  %284 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %285 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %284, i32 0, i32 21
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %288 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %287, i32 0, i32 20
  %289 = load i32, i32* %288, align 8
  %290 = call i32 (i8*, i32, ...) @ubi_msg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i64 0, i64 0), i32 %286, i32 %289)
  %291 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %292 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %291, i32 0, i32 11
  %293 = load i32, i32* %292, align 4
  %294 = call i32 (i8*, i32, ...) @ubi_msg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0), i32 %293)
  %295 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %296 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %295, i32 0, i32 18
  %297 = call i32 @spin_lock(i32* %296)
  %298 = load i32, i32* @DBG_DISABLE_BGT, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %303, label %300

300:                                              ; preds = %234
  %301 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %302 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %301, i32 0, i32 12
  store i32 1, i32* %302, align 8
  br label %303

303:                                              ; preds = %300, %234
  %304 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %305 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %304, i32 0, i32 19
  %306 = load i32, i32* %305, align 4
  %307 = call i32 @wake_up_process(i32 %306)
  %308 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %309 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %308, i32 0, i32 18
  %310 = call i32 @spin_unlock(i32* %309)
  %311 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %312 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %311, i32 0, i32 17
  %313 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %312, i32 0, i32 0
  store i32 1, i32* %313, align 8
  %314 = load i32, i32* @ubi_reboot_notifier, align 4
  %315 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %316 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %315, i32 0, i32 17
  %317 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %316, i32 0, i32 1
  store i32 %314, i32* %317, align 4
  %318 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %319 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %318, i32 0, i32 17
  %320 = call i32 @register_reboot_notifier(%struct.TYPE_2__* %319)
  %321 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %322 = load %struct.ubi_device**, %struct.ubi_device*** @ubi_devices, align 8
  %323 = load i32, i32* %6, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.ubi_device*, %struct.ubi_device** %322, i64 %324
  store %struct.ubi_device* %321, %struct.ubi_device** %325, align 8
  %326 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %327 = load i32, i32* @UBI_VOLUME_ADDED, align 4
  %328 = call i32 @ubi_notify_all(%struct.ubi_device* %326, i32 %327, i32* null)
  %329 = load i32, i32* %6, align 4
  store i32 %329, i32* %4, align 4
  br label %361

330:                                              ; preds = %223
  %331 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %332 = call i32 @uif_close(%struct.ubi_device* %331)
  br label %333

333:                                              ; preds = %330, %208
  store i32 0, i32* %11, align 4
  br label %334

334:                                              ; preds = %333, %201
  %335 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %336 = call i32 @ubi_wl_close(%struct.ubi_device* %335)
  %337 = load i32, i32* %11, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %342

339:                                              ; preds = %334
  %340 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %341 = call i32 @free_user_volumes(%struct.ubi_device* %340)
  br label %342

342:                                              ; preds = %339, %334
  %343 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %344 = call i32 @free_internal_volumes(%struct.ubi_device* %343)
  %345 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %346 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %345, i32 0, i32 16
  %347 = load i8*, i8** %346, align 8
  %348 = call i32 @vfree(i8* %347)
  br label %349

349:                                              ; preds = %342, %185, %179, %167, %153
  %350 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %351 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %350, i32 0, i32 15
  %352 = load i8*, i8** %351, align 8
  %353 = call i32 @vfree(i8* %352)
  %354 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %355 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %354, i32 0, i32 14
  %356 = load i8*, i8** %355, align 8
  %357 = call i32 @vfree(i8* %356)
  %358 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %359 = call i32 @kfree(%struct.ubi_device* %358)
  %360 = load i32, i32* %10, align 4
  store i32 %360, i32* %4, align 4
  br label %361

361:                                              ; preds = %349, %303, %116, %105, %95, %85, %53, %34
  %362 = load i32, i32* %4, align 4
  ret i32 %362
}

declare dso_local i32 @dbg_err(i8*, i32, ...) #1

declare dso_local i32 @ubi_err(i8*, i64, ...) #1

declare dso_local %struct.ubi_device* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @ubi_msg(i8*, i32, ...) #1

declare dso_local i32 @io_init(%struct.ubi_device*) #1

declare dso_local i8* @vmalloc(i32) #1

declare dso_local i32 @attach_by_scanning(%struct.ubi_device*) #1

declare dso_local i32 @autoresize(%struct.ubi_device*, i32) #1

declare dso_local i32 @uif_init(%struct.ubi_device*) #1

declare dso_local i32 @kthread_create(i32, %struct.ubi_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @wake_up_process(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @register_reboot_notifier(%struct.TYPE_2__*) #1

declare dso_local i32 @ubi_notify_all(%struct.ubi_device*, i32, i32*) #1

declare dso_local i32 @uif_close(%struct.ubi_device*) #1

declare dso_local i32 @ubi_wl_close(%struct.ubi_device*) #1

declare dso_local i32 @free_user_volumes(%struct.ubi_device*) #1

declare dso_local i32 @free_internal_volumes(%struct.ubi_device*) #1

declare dso_local i32 @vfree(i8*) #1

declare dso_local i32 @kfree(%struct.ubi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
