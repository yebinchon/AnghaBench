; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_enic_main.c_enic_request_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_enic_main.c_enic_request_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enic = type { i8*, i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.enic*, %struct.TYPE_4__*, i32, %struct.enic* }
%struct.TYPE_6__ = type { i8*, i32, %struct.net_device*, i32 }
%struct.net_device = type { i8*, i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.net_device*, %struct.TYPE_4__*, i32, %struct.net_device* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@enic_isr_legacy = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@enic_isr_msi = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%.11s-rx-%d\00", align 1
@enic_isr_msix_rq = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"%.11s-tx-%d\00", align 1
@enic_isr_msix_wq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"%.11s-err\00", align 1
@enic_isr_msix_err = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"%.11s-notify\00", align 1
@enic_isr_msix_notify = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.enic*)* @enic_request_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enic_request_intr(%struct.enic* %0) #0 {
  %2 = alloca %struct.enic*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.enic* %0, %struct.enic** %2, align 8
  %7 = load %struct.enic*, %struct.enic** %2, align 8
  %8 = getelementptr inbounds %struct.enic, %struct.enic* %7, i32 0, i32 9
  %9 = load %struct.enic*, %struct.enic** %8, align 8
  %10 = bitcast %struct.enic* %9 to %struct.net_device*
  store %struct.net_device* %10, %struct.net_device** %3, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.enic*, %struct.enic** %2, align 8
  %12 = getelementptr inbounds %struct.enic, %struct.enic* %11, i32 0, i32 8
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @vnic_dev_get_intr_mode(i32 %13)
  switch i32 %14, label %278 [
    i32 130, label %15
    i32 129, label %28
    i32 128, label %41
  ]

15:                                               ; preds = %1
  %16 = load %struct.enic*, %struct.enic** %2, align 8
  %17 = getelementptr inbounds %struct.enic, %struct.enic* %16, i32 0, i32 7
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @enic_isr_legacy, align 4
  %22 = load i32, i32* @IRQF_SHARED, align 4
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = call i32 @request_irq(i32 %20, i32 %21, i32 %22, i8* %25, %struct.net_device* %26)
  store i32 %27, i32* %6, align 4
  br label %279

28:                                               ; preds = %1
  %29 = load %struct.enic*, %struct.enic** %2, align 8
  %30 = getelementptr inbounds %struct.enic, %struct.enic* %29, i32 0, i32 7
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @enic_isr_msi, align 4
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.enic*, %struct.enic** %2, align 8
  %39 = bitcast %struct.enic* %38 to %struct.net_device*
  %40 = call i32 @request_irq(i32 %33, i32 %34, i32 0, i8* %37, %struct.net_device* %39)
  store i32 %40, i32* %6, align 4
  br label %279

41:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %88, %41
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.enic*, %struct.enic** %2, align 8
  %45 = getelementptr inbounds %struct.enic, %struct.enic* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp ult i32 %43, %46
  br i1 %47, label %48, label %91

48:                                               ; preds = %42
  %49 = load %struct.enic*, %struct.enic** %2, align 8
  %50 = bitcast %struct.enic* %49 to %struct.net_device*
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @enic_msix_rq_intr(%struct.net_device* %50, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load %struct.enic*, %struct.enic** %2, align 8
  %54 = getelementptr inbounds %struct.enic, %struct.enic* %53, i32 0, i32 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.net_device*, %struct.net_device** %3, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %60, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %63, i32 %64)
  %66 = load i32, i32* @enic_isr_msix_rq, align 4
  %67 = load %struct.enic*, %struct.enic** %2, align 8
  %68 = getelementptr inbounds %struct.enic, %struct.enic* %67, i32 0, i32 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 3
  store i32 %66, i32* %73, align 8
  %74 = load %struct.enic*, %struct.enic** %2, align 8
  %75 = getelementptr inbounds %struct.enic, %struct.enic* %74, i32 0, i32 6
  %76 = load %struct.enic*, %struct.enic** %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.enic, %struct.enic* %76, i64 %78
  %80 = bitcast %struct.enic* %79 to %struct.net_device*
  %81 = load %struct.enic*, %struct.enic** %2, align 8
  %82 = getelementptr inbounds %struct.enic, %struct.enic* %81, i32 0, i32 4
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 2
  store %struct.net_device* %80, %struct.net_device** %87, align 8
  br label %88

88:                                               ; preds = %48
  %89 = load i32, i32* %4, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %4, align 4
  br label %42

91:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %133, %91
  %93 = load i32, i32* %4, align 4
  %94 = load %struct.enic*, %struct.enic** %2, align 8
  %95 = getelementptr inbounds %struct.enic, %struct.enic* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = icmp ult i32 %93, %96
  br i1 %97, label %98, label %136

98:                                               ; preds = %92
  %99 = load %struct.enic*, %struct.enic** %2, align 8
  %100 = bitcast %struct.enic* %99 to %struct.net_device*
  %101 = load i32, i32* %4, align 4
  %102 = call i32 @enic_msix_wq_intr(%struct.net_device* %100, i32 %101)
  store i32 %102, i32* %5, align 4
  %103 = load %struct.enic*, %struct.enic** %2, align 8
  %104 = getelementptr inbounds %struct.enic, %struct.enic* %103, i32 0, i32 4
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = load i32, i32* %5, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = load %struct.net_device*, %struct.net_device** %3, align 8
  %112 = getelementptr inbounds %struct.net_device, %struct.net_device* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = load i32, i32* %4, align 4
  %115 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %110, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %113, i32 %114)
  %116 = load i32, i32* @enic_isr_msix_wq, align 4
  %117 = load %struct.enic*, %struct.enic** %2, align 8
  %118 = getelementptr inbounds %struct.enic, %struct.enic* %117, i32 0, i32 4
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = load i32, i32* %5, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 3
  store i32 %116, i32* %123, align 8
  %124 = load %struct.enic*, %struct.enic** %2, align 8
  %125 = bitcast %struct.enic* %124 to %struct.net_device*
  %126 = load %struct.enic*, %struct.enic** %2, align 8
  %127 = getelementptr inbounds %struct.enic, %struct.enic* %126, i32 0, i32 4
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  %129 = load i32, i32* %5, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 2
  store %struct.net_device* %125, %struct.net_device** %132, align 8
  br label %133

133:                                              ; preds = %98
  %134 = load i32, i32* %4, align 4
  %135 = add i32 %134, 1
  store i32 %135, i32* %4, align 4
  br label %92

136:                                              ; preds = %92
  %137 = load %struct.enic*, %struct.enic** %2, align 8
  %138 = bitcast %struct.enic* %137 to %struct.net_device*
  %139 = call i32 @enic_msix_err_intr(%struct.net_device* %138)
  store i32 %139, i32* %5, align 4
  %140 = load %struct.enic*, %struct.enic** %2, align 8
  %141 = getelementptr inbounds %struct.enic, %struct.enic* %140, i32 0, i32 4
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %141, align 8
  %143 = load i32, i32* %5, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = load %struct.net_device*, %struct.net_device** %3, align 8
  %149 = getelementptr inbounds %struct.net_device, %struct.net_device* %148, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %147, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %150)
  %152 = load i32, i32* @enic_isr_msix_err, align 4
  %153 = load %struct.enic*, %struct.enic** %2, align 8
  %154 = getelementptr inbounds %struct.enic, %struct.enic* %153, i32 0, i32 4
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %154, align 8
  %156 = load i32, i32* %5, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 3
  store i32 %152, i32* %159, align 8
  %160 = load %struct.enic*, %struct.enic** %2, align 8
  %161 = bitcast %struct.enic* %160 to %struct.net_device*
  %162 = load %struct.enic*, %struct.enic** %2, align 8
  %163 = getelementptr inbounds %struct.enic, %struct.enic* %162, i32 0, i32 4
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %163, align 8
  %165 = load i32, i32* %5, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 2
  store %struct.net_device* %161, %struct.net_device** %168, align 8
  %169 = load %struct.enic*, %struct.enic** %2, align 8
  %170 = bitcast %struct.enic* %169 to %struct.net_device*
  %171 = call i32 @enic_msix_notify_intr(%struct.net_device* %170)
  store i32 %171, i32* %5, align 4
  %172 = load %struct.enic*, %struct.enic** %2, align 8
  %173 = getelementptr inbounds %struct.enic, %struct.enic* %172, i32 0, i32 4
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %173, align 8
  %175 = load i32, i32* %5, align 4
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  %179 = load i8*, i8** %178, align 8
  %180 = load %struct.net_device*, %struct.net_device** %3, align 8
  %181 = getelementptr inbounds %struct.net_device, %struct.net_device* %180, i32 0, i32 0
  %182 = load i8*, i8** %181, align 8
  %183 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %179, i32 8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %182)
  %184 = load i32, i32* @enic_isr_msix_notify, align 4
  %185 = load %struct.enic*, %struct.enic** %2, align 8
  %186 = getelementptr inbounds %struct.enic, %struct.enic* %185, i32 0, i32 4
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %186, align 8
  %188 = load i32, i32* %5, align 4
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 3
  store i32 %184, i32* %191, align 8
  %192 = load %struct.enic*, %struct.enic** %2, align 8
  %193 = bitcast %struct.enic* %192 to %struct.net_device*
  %194 = load %struct.enic*, %struct.enic** %2, align 8
  %195 = getelementptr inbounds %struct.enic, %struct.enic* %194, i32 0, i32 4
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %195, align 8
  %197 = load i32, i32* %5, align 4
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 2
  store %struct.net_device* %193, %struct.net_device** %200, align 8
  store i32 0, i32* %4, align 4
  br label %201

201:                                              ; preds = %216, %136
  %202 = load i32, i32* %4, align 4
  %203 = load %struct.enic*, %struct.enic** %2, align 8
  %204 = getelementptr inbounds %struct.enic, %struct.enic* %203, i32 0, i32 4
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %204, align 8
  %206 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %205)
  %207 = icmp ult i32 %202, %206
  br i1 %207, label %208, label %219

208:                                              ; preds = %201
  %209 = load %struct.enic*, %struct.enic** %2, align 8
  %210 = getelementptr inbounds %struct.enic, %struct.enic* %209, i32 0, i32 4
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %210, align 8
  %212 = load i32, i32* %4, align 4
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 1
  store i32 0, i32* %215, align 8
  br label %216

216:                                              ; preds = %208
  %217 = load i32, i32* %4, align 4
  %218 = add i32 %217, 1
  store i32 %218, i32* %4, align 4
  br label %201

219:                                              ; preds = %201
  store i32 0, i32* %4, align 4
  br label %220

220:                                              ; preds = %274, %219
  %221 = load i32, i32* %4, align 4
  %222 = load %struct.enic*, %struct.enic** %2, align 8
  %223 = getelementptr inbounds %struct.enic, %struct.enic* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 8
  %225 = icmp ult i32 %221, %224
  br i1 %225, label %226, label %277

226:                                              ; preds = %220
  %227 = load %struct.enic*, %struct.enic** %2, align 8
  %228 = getelementptr inbounds %struct.enic, %struct.enic* %227, i32 0, i32 5
  %229 = load %struct.TYPE_5__*, %struct.TYPE_5__** %228, align 8
  %230 = load i32, i32* %4, align 4
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.enic*, %struct.enic** %2, align 8
  %236 = getelementptr inbounds %struct.enic, %struct.enic* %235, i32 0, i32 4
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %236, align 8
  %238 = load i32, i32* %4, align 4
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 8
  %243 = load %struct.enic*, %struct.enic** %2, align 8
  %244 = getelementptr inbounds %struct.enic, %struct.enic* %243, i32 0, i32 4
  %245 = load %struct.TYPE_6__*, %struct.TYPE_6__** %244, align 8
  %246 = load i32, i32* %4, align 4
  %247 = zext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 0
  %250 = load i8*, i8** %249, align 8
  %251 = load %struct.enic*, %struct.enic** %2, align 8
  %252 = getelementptr inbounds %struct.enic, %struct.enic* %251, i32 0, i32 4
  %253 = load %struct.TYPE_6__*, %struct.TYPE_6__** %252, align 8
  %254 = load i32, i32* %4, align 4
  %255 = zext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 2
  %258 = load %struct.net_device*, %struct.net_device** %257, align 8
  %259 = call i32 @request_irq(i32 %234, i32 %242, i32 0, i8* %250, %struct.net_device* %258)
  store i32 %259, i32* %6, align 4
  %260 = load i32, i32* %6, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %266

262:                                              ; preds = %226
  %263 = load %struct.enic*, %struct.enic** %2, align 8
  %264 = bitcast %struct.enic* %263 to %struct.net_device*
  %265 = call i32 @enic_free_intr(%struct.net_device* %264)
  br label %277

266:                                              ; preds = %226
  %267 = load %struct.enic*, %struct.enic** %2, align 8
  %268 = getelementptr inbounds %struct.enic, %struct.enic* %267, i32 0, i32 4
  %269 = load %struct.TYPE_6__*, %struct.TYPE_6__** %268, align 8
  %270 = load i32, i32* %4, align 4
  %271 = zext i32 %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i32 0, i32 1
  store i32 1, i32* %273, align 8
  br label %274

274:                                              ; preds = %266
  %275 = load i32, i32* %4, align 4
  %276 = add i32 %275, 1
  store i32 %276, i32* %4, align 4
  br label %220

277:                                              ; preds = %262, %220
  br label %279

278:                                              ; preds = %1
  br label %279

279:                                              ; preds = %278, %277, %28, %15
  %280 = load i32, i32* %6, align 4
  ret i32 %280
}

declare dso_local i32 @vnic_dev_get_intr_mode(i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.net_device*) #1

declare dso_local i32 @enic_msix_rq_intr(%struct.net_device*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i32 @enic_msix_wq_intr(%struct.net_device*, i32) #1

declare dso_local i32 @enic_msix_err_intr(%struct.net_device*) #1

declare dso_local i32 @enic_msix_notify_intr(%struct.net_device*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_6__*) #1

declare dso_local i32 @enic_free_intr(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
