; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ips.c_ips_hainit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ips.c_ips_hainit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32, i32, i64, i32*, i64*, %struct.TYPE_21__*, %struct.TYPE_19__*, %struct.TYPE_18__*, i32, i32, %struct.TYPE_17__ }
%struct.TYPE_21__ = type { i64, i32*, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32* }
%struct.TYPE_17__ = type { {}*, {}* }
%struct.timeval = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"ips_hainit\00", align 1
@IPS_INTR_IORL = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"unable to read config from controller.\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"unable to read controller status.\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"unable to read subsystem parameters.\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"unable to write driver info to controller.\0A\00", align 1
@IPS_MAX_TARGETS = common dso_local global i32 0, align 4
@IPS_ADTYPE_SERVERAID3L = common dso_local global i64 0, align 8
@IPS_ADTYPE_SERVERAID4L = common dso_local global i64 0, align 8
@IPS_ADTYPE_SERVERAID4LX = common dso_local global i64 0, align 8
@MaxLiteCmds = common dso_local global i64 0, align 8
@IPS_ADAPTER_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*)* @ips_hainit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ips_hainit(%struct.TYPE_22__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.timeval, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  %6 = call i32 @METHOD_TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 1)
  %7 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %8 = icmp ne %struct.TYPE_22__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %267

10:                                               ; preds = %1
  %11 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 15
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 1
  %14 = bitcast {}** %13 to i32 (%struct.TYPE_22__*)**
  %15 = load i32 (%struct.TYPE_22__*)*, i32 (%struct.TYPE_22__*)** %14, align 8
  %16 = icmp ne i32 (%struct.TYPE_22__*)* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %10
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 15
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 1
  %21 = bitcast {}** %20 to i32 (%struct.TYPE_22__*)**
  %22 = load i32 (%struct.TYPE_22__*)*, i32 (%struct.TYPE_22__*)** %21, align 8
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %24 = call i32 %22(%struct.TYPE_22__* %23)
  br label %25

25:                                               ; preds = %17, %10
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 15
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = bitcast {}** %28 to i32 (%struct.TYPE_22__*)**
  %30 = load i32 (%struct.TYPE_22__*)*, i32 (%struct.TYPE_22__*)** %29, align 8
  %31 = icmp ne i32 (%struct.TYPE_22__*)* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 15
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  %36 = bitcast {}** %35 to i32 (%struct.TYPE_22__*)**
  %37 = load i32 (%struct.TYPE_22__*)*, i32 (%struct.TYPE_22__*)** %36, align 8
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %39 = call i32 %37(%struct.TYPE_22__* %38)
  br label %40

40:                                               ; preds = %32, %25
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = call i32 @do_gettimeofday(%struct.timeval* %5)
  %44 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 14
  store i32 %45, i32* %47, align 4
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %49 = load i32, i32* @IPS_INTR_IORL, align 4
  %50 = call i32 @ips_ffdc_reset(%struct.TYPE_22__* %48, i32 %49)
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %52 = load i32, i32* @IPS_INTR_IORL, align 4
  %53 = call i32 @ips_read_config(%struct.TYPE_22__* %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %40
  %56 = load i32, i32* @KERN_WARNING, align 4
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 13
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @IPS_PRINTK(i32 %56, i32 %59, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %267

61:                                               ; preds = %40
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %63 = load i32, i32* @IPS_INTR_IORL, align 4
  %64 = call i32 @ips_read_adapter_status(%struct.TYPE_22__* %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* @KERN_WARNING, align 4
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 13
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @IPS_PRINTK(i32 %67, i32 %70, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %267

72:                                               ; preds = %61
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %74 = call i32 @ips_identify_controller(%struct.TYPE_22__* %73)
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %76 = load i32, i32* @IPS_INTR_IORL, align 4
  %77 = call i32 @ips_read_subsystem_parameters(%struct.TYPE_22__* %75, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %72
  %80 = load i32, i32* @KERN_WARNING, align 4
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 13
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @IPS_PRINTK(i32 %80, i32 %83, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %267

85:                                               ; preds = %72
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %87 = load i32, i32* @IPS_INTR_IORL, align 4
  %88 = call i32 @ips_write_driver_status(%struct.TYPE_22__* %86, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %85
  %91 = load i32, i32* @KERN_WARNING, align 4
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 13
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @IPS_PRINTK(i32 %91, i32 %94, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %267

96:                                               ; preds = %85
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 10
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp sgt i64 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %96
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %108, label %112

108:                                              ; preds = %103
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %110 = load i32, i32* @IPS_INTR_IORL, align 4
  %111 = call i32 @ips_clear_adapter(%struct.TYPE_22__* %109, i32 %110)
  br label %112

112:                                              ; preds = %108, %103, %96
  %113 = load i32, i32* @IPS_MAX_TARGETS, align 4
  %114 = add nsw i32 %113, 1
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 8
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 3
  store i32 1, i32* %118, align 4
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 11
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @IPS_MAX_TARGETS, align 4
  %125 = sdiv i32 %123, %124
  %126 = add nsw i32 %125, 1
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 4
  store i32 %126, i32* %128, align 8
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %129, i32 0, i32 10
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 2
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i64 0
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  switch i32 %136, label %147 [
    i32 4, label %137
    i32 5, label %140
    i32 6, label %143
    i32 7, label %146
  ]

137:                                              ; preds = %112
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 5
  store i32 65536, i32* %139, align 4
  br label %150

140:                                              ; preds = %112
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i32 0, i32 5
  store i32 131072, i32* %142, align 4
  br label %150

143:                                              ; preds = %112
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i32 0, i32 5
  store i32 262144, i32* %145, align 4
  br label %150

146:                                              ; preds = %112
  br label %147

147:                                              ; preds = %112, %146
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %148, i32 0, i32 5
  store i32 524288, i32* %149, align 4
  br label %150

150:                                              ; preds = %147, %143, %140, %137
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i32 0, i32 12
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 4
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @le32_to_cpu(i32 %157)
  %159 = and i32 %158, 1
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %150
  %162 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %162, i32 0, i32 11
  %164 = load %struct.TYPE_19__*, %struct.TYPE_19__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %167, i32 0, i32 6
  store i32 %166, i32* %168, align 8
  br label %192

169:                                              ; preds = %150
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %170, i32 0, i32 10
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i32 0, i32 2
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i64 0
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  switch i32 %177, label %188 [
    i32 4, label %178
    i32 5, label %181
    i32 6, label %184
    i32 7, label %187
  ]

178:                                              ; preds = %169
  %179 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %179, i32 0, i32 6
  store i32 32, i32* %180, align 8
  br label %191

181:                                              ; preds = %169
  %182 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %182, i32 0, i32 6
  store i32 16, i32* %183, align 8
  br label %191

184:                                              ; preds = %169
  %185 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %185, i32 0, i32 6
  store i32 8, i32* %186, align 8
  br label %191

187:                                              ; preds = %169
  br label %188

188:                                              ; preds = %169, %187
  %189 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %189, i32 0, i32 6
  store i32 4, i32* %190, align 8
  br label %191

191:                                              ; preds = %188, %184, %181, %178
  br label %192

192:                                              ; preds = %191, %161
  %193 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %193, i32 0, i32 7
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @IPS_ADTYPE_SERVERAID3L, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %210, label %198

198:                                              ; preds = %192
  %199 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %199, i32 0, i32 7
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @IPS_ADTYPE_SERVERAID4L, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %210, label %204

204:                                              ; preds = %198
  %205 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %205, i32 0, i32 7
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @IPS_ADTYPE_SERVERAID4LX, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %226

210:                                              ; preds = %204, %198, %192
  %211 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %211, i32 0, i32 6
  %213 = load i32, i32* %212, align 8
  %214 = sext i32 %213 to i64
  %215 = load i64, i64* @MaxLiteCmds, align 8
  %216 = icmp sgt i64 %214, %215
  br i1 %216, label %217, label %225

217:                                              ; preds = %210
  %218 = load i64, i64* @MaxLiteCmds, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %225

220:                                              ; preds = %217
  %221 = load i64, i64* @MaxLiteCmds, align 8
  %222 = trunc i64 %221 to i32
  %223 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %223, i32 0, i32 6
  store i32 %222, i32* %224, align 8
  br label %225

225:                                              ; preds = %220, %217, %210
  br label %226

226:                                              ; preds = %225, %204
  %227 = load i32, i32* @IPS_ADAPTER_ID, align 4
  %228 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %228, i32 0, i32 8
  %230 = load i32*, i32** %229, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 0
  store i32 %227, i32* %231, align 4
  store i32 1, i32* %4, align 4
  br label %232

232:                                              ; preds = %263, %226
  %233 = load i32, i32* %4, align 4
  %234 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %234, i32 0, i32 4
  %236 = load i32, i32* %235, align 8
  %237 = icmp slt i32 %233, %236
  br i1 %237, label %238, label %266

238:                                              ; preds = %232
  %239 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %239, i32 0, i32 10
  %241 = load %struct.TYPE_21__*, %struct.TYPE_21__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %241, i32 0, i32 1
  %243 = load i32*, i32** %242, align 8
  %244 = load i32, i32* %4, align 4
  %245 = sub nsw i32 %244, 1
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %243, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = and i32 %248, 31
  %250 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %250, i32 0, i32 8
  %252 = load i32*, i32** %251, align 8
  %253 = load i32, i32* %4, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  store i32 %249, i32* %255, align 4
  %256 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %256, i32 0, i32 9
  %258 = load i64*, i64** %257, align 8
  %259 = load i32, i32* %4, align 4
  %260 = sub nsw i32 %259, 1
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i64, i64* %258, i64 %261
  store i64 0, i64* %262, align 8
  br label %263

263:                                              ; preds = %238
  %264 = load i32, i32* %4, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %4, align 4
  br label %232

266:                                              ; preds = %232
  store i32 1, i32* %2, align 4
  br label %267

267:                                              ; preds = %266, %90, %79, %66, %55, %9
  %268 = load i32, i32* %2, align 4
  ret i32 %268
}

declare dso_local i32 @METHOD_TRACE(i8*, i32) #1

declare dso_local i32 @do_gettimeofday(%struct.timeval*) #1

declare dso_local i32 @ips_ffdc_reset(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @ips_read_config(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @IPS_PRINTK(i32, i32, i8*) #1

declare dso_local i32 @ips_read_adapter_status(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @ips_identify_controller(%struct.TYPE_22__*) #1

declare dso_local i32 @ips_read_subsystem_parameters(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @ips_write_driver_status(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @ips_clear_adapter(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
