; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_proc_config_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_proc_config_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32* }
%struct.proc_data = type { i32, i32*, i32, i32, i32* }
%struct.proc_dir_entry = type { %struct.net_device* }
%struct.net_device = type { %struct.airo_info* }
%struct.airo_info = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i8*, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@proc_config_on_close = common dso_local global i32 0, align 4
@MODE_CFG_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [111 x i8] c"Mode: %s\0ARadio: %s\0ANodeName: %-16s\0APowerMode: %s\0ADataRates: %d %d %d %d %d %d %d %d\0AChannel: %d\0AXmitPower: %d\0A\00", align 1
@MODE_STA_IBSS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"adhoc\00", align 1
@MODE_STA_ESS = common dso_local global i32 0, align 4
@MODE_AP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"AP\00", align 1
@MODE_AP_RPTR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"AP RPTR\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@FLAG_RADIO_OFF = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@POWERSAVE_CAM = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [4 x i8] c"CAM\00", align 1
@POWERSAVE_PSP = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [4 x i8] c"PSP\00", align 1
@POWERSAVE_PSPCAM = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [7 x i8] c"PSPCAM\00", align 1
@.str.10 = private unnamed_addr constant [181 x i8] c"LongRetryLimit: %d\0AShortRetryLimit: %d\0ARTSThreshold: %d\0ATXMSDULifetime: %d\0ARXMSDULifetime: %d\0ATXDiversity: %s\0ARXDiversity: %s\0AFragThreshold: %d\0AWEP: %s\0AModulation: %s\0APreamble: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@AUTH_ENCRYPT = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [8 x i8] c"encrypt\00", align 1
@AUTH_SHAREDKEY = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [7 x i8] c"shared\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@MOD_DEFAULT = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@MOD_CCK = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [4 x i8] c"cck\00", align 1
@MOD_MOK = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [4 x i8] c"mok\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@PREAMBLE_AUTO = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@PREAMBLE_LONG = common dso_local global i64 0, align 8
@.str.22 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@PREAMBLE_SHORT = common dso_local global i64 0, align 8
@.str.23 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @proc_config_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_config_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.proc_data*, align 8
  %7 = alloca %struct.proc_dir_entry*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.airo_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = call %struct.proc_dir_entry* @PDE(%struct.inode* %12)
  store %struct.proc_dir_entry* %13, %struct.proc_dir_entry** %7, align 8
  %14 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  %15 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %14, i32 0, i32 0
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %8, align 8
  %17 = load %struct.net_device*, %struct.net_device** %8, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load %struct.airo_info*, %struct.airo_info** %18, align 8
  store %struct.airo_info* %19, %struct.airo_info** %9, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i8* @kzalloc(i32 32, i32 %20)
  %22 = bitcast i8* %21 to i32*
  %23 = load %struct.file*, %struct.file** %5, align 8
  %24 = getelementptr inbounds %struct.file, %struct.file* %23, i32 0, i32 0
  store i32* %22, i32** %24, align 8
  %25 = icmp eq i32* %22, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %367

29:                                               ; preds = %2
  %30 = load %struct.file*, %struct.file** %5, align 8
  %31 = getelementptr inbounds %struct.file, %struct.file* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = bitcast i32* %32 to %struct.proc_data*
  store %struct.proc_data* %33, %struct.proc_data** %6, align 8
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i32* @kmalloc(i32 2048, i32 %34)
  %36 = load %struct.proc_data*, %struct.proc_data** %6, align 8
  %37 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %36, i32 0, i32 1
  store i32* %35, i32** %37, align 8
  %38 = icmp eq i32* %35, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %29
  %40 = load %struct.file*, %struct.file** %5, align 8
  %41 = getelementptr inbounds %struct.file, %struct.file* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @kfree(i32* %42)
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %367

46:                                               ; preds = %29
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i8* @kzalloc(i32 2048, i32 %47)
  %49 = bitcast i8* %48 to i32*
  %50 = load %struct.proc_data*, %struct.proc_data** %6, align 8
  %51 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %50, i32 0, i32 4
  store i32* %49, i32** %51, align 8
  %52 = icmp eq i32* %49, null
  br i1 %52, label %53, label %64

53:                                               ; preds = %46
  %54 = load %struct.proc_data*, %struct.proc_data** %6, align 8
  %55 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @kfree(i32* %56)
  %58 = load %struct.file*, %struct.file** %5, align 8
  %59 = getelementptr inbounds %struct.file, %struct.file* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @kfree(i32* %60)
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %367

64:                                               ; preds = %46
  %65 = load %struct.proc_data*, %struct.proc_data** %6, align 8
  %66 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %65, i32 0, i32 0
  store i32 2048, i32* %66, align 8
  %67 = load i32, i32* @proc_config_on_close, align 4
  %68 = load %struct.proc_data*, %struct.proc_data** %6, align 8
  %69 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  %70 = load %struct.airo_info*, %struct.airo_info** %9, align 8
  %71 = call i32 @readConfigRid(%struct.airo_info* %70, i32 1)
  %72 = load %struct.airo_info*, %struct.airo_info** %9, align 8
  %73 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @MODE_CFG_MASK, align 4
  %77 = and i32 %75, %76
  store i32 %77, i32* %11, align 4
  %78 = load %struct.proc_data*, %struct.proc_data** %6, align 8
  %79 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* @MODE_STA_IBSS, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %64
  br label %110

85:                                               ; preds = %64
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* @MODE_STA_ESS, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %85
  %90 = load %struct.airo_info*, %struct.airo_info** %9, align 8
  %91 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 17
  %93 = load i32, i32* %92, align 8
  %94 = call i8* @get_rmode(i32 %93)
  br label %108

95:                                               ; preds = %85
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* @MODE_AP, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  br label %106

100:                                              ; preds = %95
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* @MODE_AP_RPTR, align 4
  %103 = icmp eq i32 %101, %102
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)
  br label %106

106:                                              ; preds = %100, %99
  %107 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %99 ], [ %105, %100 ]
  br label %108

108:                                              ; preds = %106, %89
  %109 = phi i8* [ %94, %89 ], [ %107, %106 ]
  br label %110

110:                                              ; preds = %108, %84
  %111 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %84 ], [ %109, %108 ]
  %112 = load i32, i32* @FLAG_RADIO_OFF, align 4
  %113 = load %struct.airo_info*, %struct.airo_info** %9, align 8
  %114 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %113, i32 0, i32 1
  %115 = call i64 @test_bit(i32 %112, i32* %114)
  %116 = icmp ne i64 %115, 0
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)
  %119 = load %struct.airo_info*, %struct.airo_info** %9, align 8
  %120 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  %123 = load %struct.airo_info*, %struct.airo_info** %9, align 8
  %124 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @POWERSAVE_CAM, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %110
  br label %149

130:                                              ; preds = %110
  %131 = load %struct.airo_info*, %struct.airo_info** %9, align 8
  %132 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @POWERSAVE_PSP, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %130
  br label %147

138:                                              ; preds = %130
  %139 = load %struct.airo_info*, %struct.airo_info** %9, align 8
  %140 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @POWERSAVE_PSPCAM, align 8
  %144 = icmp eq i64 %142, %143
  %145 = zext i1 %144 to i64
  %146 = select i1 %144, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)
  br label %147

147:                                              ; preds = %138, %137
  %148 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), %137 ], [ %146, %138 ]
  br label %149

149:                                              ; preds = %147, %129
  %150 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), %129 ], [ %148, %147 ]
  %151 = load %struct.airo_info*, %struct.airo_info** %9, align 8
  %152 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 16
  %154 = load i64*, i64** %153, align 8
  %155 = getelementptr inbounds i64, i64* %154, i64 0
  %156 = load i64, i64* %155, align 8
  %157 = trunc i64 %156 to i32
  %158 = load %struct.airo_info*, %struct.airo_info** %9, align 8
  %159 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 16
  %161 = load i64*, i64** %160, align 8
  %162 = getelementptr inbounds i64, i64* %161, i64 1
  %163 = load i64, i64* %162, align 8
  %164 = trunc i64 %163 to i32
  %165 = load %struct.airo_info*, %struct.airo_info** %9, align 8
  %166 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 16
  %168 = load i64*, i64** %167, align 8
  %169 = getelementptr inbounds i64, i64* %168, i64 2
  %170 = load i64, i64* %169, align 8
  %171 = trunc i64 %170 to i32
  %172 = load %struct.airo_info*, %struct.airo_info** %9, align 8
  %173 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 16
  %175 = load i64*, i64** %174, align 8
  %176 = getelementptr inbounds i64, i64* %175, i64 3
  %177 = load i64, i64* %176, align 8
  %178 = trunc i64 %177 to i32
  %179 = load %struct.airo_info*, %struct.airo_info** %9, align 8
  %180 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 16
  %182 = load i64*, i64** %181, align 8
  %183 = getelementptr inbounds i64, i64* %182, i64 4
  %184 = load i64, i64* %183, align 8
  %185 = trunc i64 %184 to i32
  %186 = load %struct.airo_info*, %struct.airo_info** %9, align 8
  %187 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 16
  %189 = load i64*, i64** %188, align 8
  %190 = getelementptr inbounds i64, i64* %189, i64 5
  %191 = load i64, i64* %190, align 8
  %192 = trunc i64 %191 to i32
  %193 = load %struct.airo_info*, %struct.airo_info** %9, align 8
  %194 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 16
  %196 = load i64*, i64** %195, align 8
  %197 = getelementptr inbounds i64, i64* %196, i64 6
  %198 = load i64, i64* %197, align 8
  %199 = trunc i64 %198 to i32
  %200 = load %struct.airo_info*, %struct.airo_info** %9, align 8
  %201 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 16
  %203 = load i64*, i64** %202, align 8
  %204 = getelementptr inbounds i64, i64* %203, i64 7
  %205 = load i64, i64* %204, align 8
  %206 = trunc i64 %205 to i32
  %207 = load %struct.airo_info*, %struct.airo_info** %9, align 8
  %208 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 15
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @le16_to_cpu(i32 %210)
  %212 = load %struct.airo_info*, %struct.airo_info** %9, align 8
  %213 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %213, i32 0, i32 14
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @le16_to_cpu(i32 %215)
  %217 = call i32 (i32*, i8*, ...) @sprintf(i32* %80, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str, i64 0, i64 0), i8* %111, i8* %118, i8* %122, i8* %150, i32 %157, i32 %164, i32 %171, i32 %178, i32 %185, i32 %192, i32 %199, i32 %206, i32 %211, i32 %216)
  store i32 %217, i32* %10, align 4
  %218 = load %struct.proc_data*, %struct.proc_data** %6, align 8
  %219 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %218, i32 0, i32 1
  %220 = load i32*, i32** %219, align 8
  %221 = load i32, i32* %10, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = load %struct.airo_info*, %struct.airo_info** %9, align 8
  %225 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 13
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @le16_to_cpu(i32 %227)
  %229 = load %struct.airo_info*, %struct.airo_info** %9, align 8
  %230 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i32 0, i32 12
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @le16_to_cpu(i32 %232)
  %234 = load %struct.airo_info*, %struct.airo_info** %9, align 8
  %235 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i32 0, i32 11
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @le16_to_cpu(i32 %237)
  %239 = load %struct.airo_info*, %struct.airo_info** %9, align 8
  %240 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %240, i32 0, i32 10
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @le16_to_cpu(i32 %242)
  %244 = load %struct.airo_info*, %struct.airo_info** %9, align 8
  %245 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i32 0, i32 9
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @le16_to_cpu(i32 %247)
  %249 = load %struct.airo_info*, %struct.airo_info** %9, align 8
  %250 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 8
  %253 = icmp eq i32 %252, 1
  br i1 %253, label %254, label %255

254:                                              ; preds = %149
  br label %263

255:                                              ; preds = %149
  %256 = load %struct.airo_info*, %struct.airo_info** %9, align 8
  %257 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 8
  %260 = icmp eq i32 %259, 2
  %261 = zext i1 %260 to i64
  %262 = select i1 %260, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0)
  br label %263

263:                                              ; preds = %255, %254
  %264 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), %254 ], [ %262, %255 ]
  %265 = load %struct.airo_info*, %struct.airo_info** %9, align 8
  %266 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %266, i32 0, i32 4
  %268 = load i32, i32* %267, align 4
  %269 = icmp eq i32 %268, 1
  br i1 %269, label %270, label %271

270:                                              ; preds = %263
  br label %279

271:                                              ; preds = %263
  %272 = load %struct.airo_info*, %struct.airo_info** %9, align 8
  %273 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %273, i32 0, i32 4
  %275 = load i32, i32* %274, align 4
  %276 = icmp eq i32 %275, 2
  %277 = zext i1 %276 to i64
  %278 = select i1 %276, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0)
  br label %279

279:                                              ; preds = %271, %270
  %280 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), %270 ], [ %278, %271 ]
  %281 = load %struct.airo_info*, %struct.airo_info** %9, align 8
  %282 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %282, i32 0, i32 8
  %284 = load i32, i32* %283, align 8
  %285 = call i32 @le16_to_cpu(i32 %284)
  %286 = load %struct.airo_info*, %struct.airo_info** %9, align 8
  %287 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %287, i32 0, i32 5
  %289 = load i64, i64* %288, align 8
  %290 = load i64, i64* @AUTH_ENCRYPT, align 8
  %291 = icmp eq i64 %289, %290
  br i1 %291, label %292, label %293

292:                                              ; preds = %279
  br label %302

293:                                              ; preds = %279
  %294 = load %struct.airo_info*, %struct.airo_info** %9, align 8
  %295 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %295, i32 0, i32 5
  %297 = load i64, i64* %296, align 8
  %298 = load i64, i64* @AUTH_SHAREDKEY, align 8
  %299 = icmp eq i64 %297, %298
  %300 = zext i1 %299 to i64
  %301 = select i1 %299, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0)
  br label %302

302:                                              ; preds = %293, %292
  %303 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), %292 ], [ %301, %293 ]
  %304 = load %struct.airo_info*, %struct.airo_info** %9, align 8
  %305 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %305, i32 0, i32 6
  %307 = load i64, i64* %306, align 8
  %308 = load i64, i64* @MOD_DEFAULT, align 8
  %309 = icmp eq i64 %307, %308
  br i1 %309, label %310, label %311

310:                                              ; preds = %302
  br label %330

311:                                              ; preds = %302
  %312 = load %struct.airo_info*, %struct.airo_info** %9, align 8
  %313 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %313, i32 0, i32 6
  %315 = load i64, i64* %314, align 8
  %316 = load i64, i64* @MOD_CCK, align 8
  %317 = icmp eq i64 %315, %316
  br i1 %317, label %318, label %319

318:                                              ; preds = %311
  br label %328

319:                                              ; preds = %311
  %320 = load %struct.airo_info*, %struct.airo_info** %9, align 8
  %321 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %321, i32 0, i32 6
  %323 = load i64, i64* %322, align 8
  %324 = load i64, i64* @MOD_MOK, align 8
  %325 = icmp eq i64 %323, %324
  %326 = zext i1 %325 to i64
  %327 = select i1 %325, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0)
  br label %328

328:                                              ; preds = %319, %318
  %329 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), %318 ], [ %327, %319 ]
  br label %330

330:                                              ; preds = %328, %310
  %331 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), %310 ], [ %329, %328 ]
  %332 = load %struct.airo_info*, %struct.airo_info** %9, align 8
  %333 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %333, i32 0, i32 7
  %335 = load i64, i64* %334, align 8
  %336 = load i64, i64* @PREAMBLE_AUTO, align 8
  %337 = icmp eq i64 %335, %336
  br i1 %337, label %338, label %339

338:                                              ; preds = %330
  br label %358

339:                                              ; preds = %330
  %340 = load %struct.airo_info*, %struct.airo_info** %9, align 8
  %341 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %341, i32 0, i32 7
  %343 = load i64, i64* %342, align 8
  %344 = load i64, i64* @PREAMBLE_LONG, align 8
  %345 = icmp eq i64 %343, %344
  br i1 %345, label %346, label %347

346:                                              ; preds = %339
  br label %356

347:                                              ; preds = %339
  %348 = load %struct.airo_info*, %struct.airo_info** %9, align 8
  %349 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %349, i32 0, i32 7
  %351 = load i64, i64* %350, align 8
  %352 = load i64, i64* @PREAMBLE_SHORT, align 8
  %353 = icmp eq i64 %351, %352
  %354 = zext i1 %353 to i64
  %355 = select i1 %353, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0)
  br label %356

356:                                              ; preds = %347, %346
  %357 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), %346 ], [ %355, %347 ]
  br label %358

358:                                              ; preds = %356, %338
  %359 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), %338 ], [ %357, %356 ]
  %360 = call i32 (i32*, i8*, ...) @sprintf(i32* %223, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @.str.10, i64 0, i64 0), i32 %228, i32 %233, i32 %238, i32 %243, i32 %248, i8* %264, i8* %280, i32 %285, i8* %303, i8* %331, i8* %359)
  %361 = load %struct.proc_data*, %struct.proc_data** %6, align 8
  %362 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %361, i32 0, i32 1
  %363 = load i32*, i32** %362, align 8
  %364 = call i32 @strlen(i32* %363)
  %365 = load %struct.proc_data*, %struct.proc_data** %6, align 8
  %366 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %365, i32 0, i32 2
  store i32 %364, i32* %366, align 8
  store i32 0, i32* %3, align 4
  br label %367

367:                                              ; preds = %358, %53, %39, %26
  %368 = load i32, i32* %3, align 4
  ret i32 %368
}

declare dso_local %struct.proc_dir_entry* @PDE(%struct.inode*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @readConfigRid(%struct.airo_info*, i32) #1

declare dso_local i32 @sprintf(i32*, i8*, ...) #1

declare dso_local i8* @get_rmode(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @strlen(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
