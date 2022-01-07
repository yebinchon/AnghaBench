; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_dpt_i2o.c_adpt_proc_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_dpt_i2o.c_adpt_proc_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i8*, %struct.TYPE_7__*, i64, %struct.Scsi_Host*, %struct.TYPE_10__* }
%struct.TYPE_7__ = type { %struct.adpt_device** }
%struct.adpt_device = type { %struct.adpt_device*, %struct.TYPE_11__*, i64, i64, i64, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i8*, i8* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.Scsi_Host = type { i32, i32, i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@adpt_configuration_lock = common dso_local global i32 0, align 4
@hba_chain = common dso_local global %struct.TYPE_10__* null, align 8
@.str = private unnamed_addr constant [38 x i8] c"Adaptec I2O RAID Driver Version: %s\0A\0A\00", align 1
@DPT_I2O_VERSION = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"SCSI Host=scsi%d  Control Node=/dev/%s  irq=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"\09post fifo size  = %d\0A\09reply fifo size = %d\0A\09sg table size   = %d\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Devices:\0A\00", align 1
@MAX_CHANNEL = common dso_local global i32 0, align 4
@MAX_ID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"\09%-24.24s\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c" Rev: %-8.8s\0A\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"\09TID=%d, (Channel=%d, Target=%d, Lun=%d)  (%s)\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"online\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"offline\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, i8*, i8**, i32, i32, i32)* @adpt_proc_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adpt_proc_info(%struct.Scsi_Host* %0, i8* %1, i8** %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.adpt_device*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_10__*, align 8
  %21 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %22 = load i8*, i8** %9, align 8
  %23 = load i8**, i8*** %10, align 8
  store i8* %22, i8** %23, align 8
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* @TRUE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %6
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %286

30:                                               ; preds = %6
  %31 = call i32 @mutex_lock(i32* @adpt_configuration_lock)
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** @hba_chain, align 8
  store %struct.TYPE_10__* %32, %struct.TYPE_10__** %20, align 8
  br label %33

33:                                               ; preds = %44, %30
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %35 = icmp ne %struct.TYPE_10__* %34, null
  br i1 %35, label %36, label %48

36:                                               ; preds = %33
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 4
  %39 = load %struct.Scsi_Host*, %struct.Scsi_Host** %38, align 8
  %40 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %41 = icmp eq %struct.Scsi_Host* %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %48

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 5
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  store %struct.TYPE_10__* %47, %struct.TYPE_10__** %20, align 8
  br label %33

48:                                               ; preds = %42, %33
  %49 = call i32 @mutex_unlock(i32* @adpt_configuration_lock)
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %51 = icmp eq %struct.TYPE_10__* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 0, i32* %7, align 4
  br label %286

53:                                               ; preds = %48
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 4
  %56 = load %struct.Scsi_Host*, %struct.Scsi_Host** %55, align 8
  store %struct.Scsi_Host* %56, %struct.Scsi_Host** %8, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = load i8*, i8** @DPT_I2O_VERSION, align 8
  %59 = call i32 (i8*, i8*, ...) @sprintf(i8* %57, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %58)
  store i32 %59, i32* %17, align 4
  %60 = load i8*, i8** %9, align 8
  %61 = load i32, i32* %17, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 (i8*, i8*, ...) @sprintf(i8* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %66)
  %68 = load i32, i32* %17, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %17, align 4
  %70 = load i8*, i8** %9, align 8
  %71 = load i32, i32* %17, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 4
  %76 = load %struct.Scsi_Host*, %struct.Scsi_Host** %75, align 8
  %77 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %83 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i8*, i8*, ...) @sprintf(i8* %73, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %78, i8* %81, i32 %84)
  %86 = load i32, i32* %17, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %17, align 4
  %88 = load i8*, i8** %9, align 8
  %89 = load i32, i32* %17, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %93 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = trunc i64 %97 to i32
  %99 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %100 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (i8*, i8*, ...) @sprintf(i8* %91, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0), i32 %94, i32 %98, i32 %101)
  %103 = load i32, i32* %17, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* %17, align 4
  %105 = load i32, i32* %18, align 4
  %106 = load i32, i32* %17, align 4
  %107 = add nsw i32 %105, %106
  store i32 %107, i32* %19, align 4
  %108 = load i32, i32* %19, align 4
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* %12, align 4
  %111 = add nsw i32 %109, %110
  %112 = icmp sgt i32 %108, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %53
  br label %255

114:                                              ; preds = %53
  %115 = load i32, i32* %19, align 4
  %116 = load i32, i32* %11, align 4
  %117 = icmp sle i32 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  store i32 0, i32* %17, align 4
  %119 = load i32, i32* %19, align 4
  store i32 %119, i32* %18, align 4
  br label %120

120:                                              ; preds = %118, %114
  %121 = load i8*, i8** %9, align 8
  %122 = load i32, i32* %17, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  %125 = call i32 (i8*, i8*, ...) @sprintf(i8* %124, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %126 = load i32, i32* %17, align 4
  %127 = add nsw i32 %126, %125
  store i32 %127, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %128

128:                                              ; preds = %251, %120
  %129 = load i32, i32* %16, align 4
  %130 = load i32, i32* @MAX_CHANNEL, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %254

132:                                              ; preds = %128
  store i32 0, i32* %15, align 4
  br label %133

133:                                              ; preds = %247, %132
  %134 = load i32, i32* %15, align 4
  %135 = load i32, i32* @MAX_ID, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %250

137:                                              ; preds = %133
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 2
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %139, align 8
  %141 = load i32, i32* %16, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = load %struct.adpt_device**, %struct.adpt_device*** %144, align 8
  %146 = load i32, i32* %15, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.adpt_device*, %struct.adpt_device** %145, i64 %147
  %149 = load %struct.adpt_device*, %struct.adpt_device** %148, align 8
  store %struct.adpt_device* %149, %struct.adpt_device** %14, align 8
  br label %150

150:                                              ; preds = %242, %137
  %151 = load %struct.adpt_device*, %struct.adpt_device** %14, align 8
  %152 = icmp ne %struct.adpt_device* %151, null
  br i1 %152, label %153, label %246

153:                                              ; preds = %150
  %154 = load i8*, i8** %9, align 8
  %155 = load i32, i32* %17, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %154, i64 %156
  %158 = load %struct.adpt_device*, %struct.adpt_device** %14, align 8
  %159 = getelementptr inbounds %struct.adpt_device, %struct.adpt_device* %158, i32 0, i32 1
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 (i8*, i8*, ...) @sprintf(i8* %157, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %162)
  %164 = load i32, i32* %17, align 4
  %165 = add nsw i32 %164, %163
  store i32 %165, i32* %17, align 4
  %166 = load i8*, i8** %9, align 8
  %167 = load i32, i32* %17, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %166, i64 %168
  %170 = load %struct.adpt_device*, %struct.adpt_device** %14, align 8
  %171 = getelementptr inbounds %struct.adpt_device, %struct.adpt_device* %170, i32 0, i32 1
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 1
  %174 = load i8*, i8** %173, align 8
  %175 = call i32 (i8*, i8*, ...) @sprintf(i8* %169, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* %174)
  %176 = load i32, i32* %17, align 4
  %177 = add nsw i32 %176, %175
  store i32 %177, i32* %17, align 4
  %178 = load i32, i32* %18, align 4
  %179 = load i32, i32* %17, align 4
  %180 = add nsw i32 %178, %179
  store i32 %180, i32* %19, align 4
  %181 = load i32, i32* %19, align 4
  %182 = load i32, i32* %11, align 4
  %183 = load i32, i32* %12, align 4
  %184 = add nsw i32 %182, %183
  %185 = icmp sgt i32 %181, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %153
  br label %255

187:                                              ; preds = %153
  %188 = load i32, i32* %19, align 4
  %189 = load i32, i32* %11, align 4
  %190 = icmp sle i32 %188, %189
  br i1 %190, label %191, label %193

191:                                              ; preds = %187
  store i32 0, i32* %17, align 4
  %192 = load i32, i32* %19, align 4
  store i32 %192, i32* %18, align 4
  br label %193

193:                                              ; preds = %191, %187
  %194 = load %struct.adpt_device*, %struct.adpt_device** %14, align 8
  %195 = getelementptr inbounds %struct.adpt_device, %struct.adpt_device* %194, i32 0, i32 5
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  store i32 %199, i32* %21, align 4
  %200 = load i8*, i8** %9, align 8
  %201 = load i32, i32* %17, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i8, i8* %200, i64 %202
  %204 = load i32, i32* %21, align 4
  %205 = load %struct.adpt_device*, %struct.adpt_device** %14, align 8
  %206 = getelementptr inbounds %struct.adpt_device, %struct.adpt_device* %205, i32 0, i32 4
  %207 = load i64, i64* %206, align 8
  %208 = trunc i64 %207 to i32
  %209 = load %struct.adpt_device*, %struct.adpt_device** %14, align 8
  %210 = getelementptr inbounds %struct.adpt_device, %struct.adpt_device* %209, i32 0, i32 3
  %211 = load i64, i64* %210, align 8
  %212 = trunc i64 %211 to i32
  %213 = load %struct.adpt_device*, %struct.adpt_device** %14, align 8
  %214 = getelementptr inbounds %struct.adpt_device, %struct.adpt_device* %213, i32 0, i32 2
  %215 = load i64, i64* %214, align 8
  %216 = trunc i64 %215 to i32
  %217 = load %struct.adpt_device*, %struct.adpt_device** %14, align 8
  %218 = getelementptr inbounds %struct.adpt_device, %struct.adpt_device* %217, i32 0, i32 1
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %218, align 8
  %220 = call i64 @scsi_device_online(%struct.TYPE_11__* %219)
  %221 = icmp ne i64 %220, 0
  %222 = zext i1 %221 to i64
  %223 = select i1 %221, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)
  %224 = call i32 (i8*, i8*, ...) @sprintf(i8* %203, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i32 %204, i32 %208, i32 %212, i32 %216, i8* %223)
  %225 = load i32, i32* %17, align 4
  %226 = add nsw i32 %225, %224
  store i32 %226, i32* %17, align 4
  %227 = load i32, i32* %18, align 4
  %228 = load i32, i32* %17, align 4
  %229 = add nsw i32 %227, %228
  store i32 %229, i32* %19, align 4
  %230 = load i32, i32* %19, align 4
  %231 = load i32, i32* %11, align 4
  %232 = load i32, i32* %12, align 4
  %233 = add nsw i32 %231, %232
  %234 = icmp sgt i32 %230, %233
  br i1 %234, label %235, label %236

235:                                              ; preds = %193
  br label %255

236:                                              ; preds = %193
  %237 = load i32, i32* %19, align 4
  %238 = load i32, i32* %11, align 4
  %239 = icmp sle i32 %237, %238
  br i1 %239, label %240, label %242

240:                                              ; preds = %236
  store i32 0, i32* %17, align 4
  %241 = load i32, i32* %19, align 4
  store i32 %241, i32* %18, align 4
  br label %242

242:                                              ; preds = %240, %236
  %243 = load %struct.adpt_device*, %struct.adpt_device** %14, align 8
  %244 = getelementptr inbounds %struct.adpt_device, %struct.adpt_device* %243, i32 0, i32 0
  %245 = load %struct.adpt_device*, %struct.adpt_device** %244, align 8
  store %struct.adpt_device* %245, %struct.adpt_device** %14, align 8
  br label %150

246:                                              ; preds = %150
  br label %247

247:                                              ; preds = %246
  %248 = load i32, i32* %15, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %15, align 4
  br label %133

250:                                              ; preds = %133
  br label %251

251:                                              ; preds = %250
  %252 = load i32, i32* %16, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %16, align 4
  br label %128

254:                                              ; preds = %128
  br label %255

255:                                              ; preds = %254, %235, %186, %113
  %256 = load i8*, i8** %9, align 8
  %257 = load i32, i32* %17, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i8, i8* %256, i64 %258
  store i8 0, i8* %259, align 1
  %260 = load i8*, i8** %9, align 8
  %261 = load i32, i32* %11, align 4
  %262 = load i32, i32* %18, align 4
  %263 = sub nsw i32 %261, %262
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i8, i8* %260, i64 %264
  %266 = load i8**, i8*** %10, align 8
  store i8* %265, i8** %266, align 8
  %267 = load i32, i32* %11, align 4
  %268 = load i32, i32* %18, align 4
  %269 = sub nsw i32 %267, %268
  %270 = load i32, i32* %17, align 4
  %271 = sub nsw i32 %270, %269
  store i32 %271, i32* %17, align 4
  %272 = load i32, i32* %17, align 4
  %273 = load i32, i32* %12, align 4
  %274 = icmp sgt i32 %272, %273
  br i1 %274, label %275, label %277

275:                                              ; preds = %255
  %276 = load i32, i32* %12, align 4
  store i32 %276, i32* %17, align 4
  br label %284

277:                                              ; preds = %255
  %278 = load i32, i32* %17, align 4
  %279 = icmp slt i32 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %277
  store i32 0, i32* %17, align 4
  %281 = load i8**, i8*** %10, align 8
  %282 = load i8*, i8** %281, align 8
  store i8 0, i8* %282, align 1
  br label %283

283:                                              ; preds = %280, %277
  br label %284

284:                                              ; preds = %283, %275
  %285 = load i32, i32* %17, align 4
  store i32 %285, i32* %7, align 4
  br label %286

286:                                              ; preds = %284, %52, %27
  %287 = load i32, i32* %7, align 4
  ret i32 %287
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i64 @scsi_device_online(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
