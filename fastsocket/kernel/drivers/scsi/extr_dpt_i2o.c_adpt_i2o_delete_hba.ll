; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_dpt_i2o.c_adpt_i2o_delete_hba.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_dpt_i2o.c_adpt_i2o_delete_hba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2o_device = type { i64, i64, i64, i32, i32, i32, i32, %struct.TYPE_8__*, %struct.i2o_device*, %struct.TYPE_7__*, %struct.i2o_device*, %struct.i2o_device*, i32, %struct.TYPE_9__*, i32, %struct.TYPE_9__*, i32, %struct.TYPE_9__*, i32, %struct.TYPE_9__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.i2o_device** }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.adpt_device = type { i64, i64, i64, i32, i32, i32, i32, %struct.TYPE_8__*, %struct.adpt_device*, %struct.TYPE_7__*, %struct.adpt_device*, %struct.adpt_device*, i32, %struct.TYPE_9__*, i32, %struct.TYPE_9__*, i32, %struct.TYPE_9__*, i32, %struct.TYPE_9__*, %struct.TYPE_6__* }

@adpt_configuration_lock = common dso_local global i32 0, align 4
@hba_chain = common dso_local global %struct.i2o_device* null, align 8
@hba_count = common dso_local global i64 0, align 8
@REPLY_FRAME_SIZE = common dso_local global i32 0, align 4
@MAX_ID = common dso_local global i32 0, align 4
@adpt_sysfs_class = common dso_local global i32* null, align 8
@DPTI_I2O_MAJOR = common dso_local global i32 0, align 4
@DPT_DRIVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2o_device*)* @adpt_i2o_delete_hba to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adpt_i2o_delete_hba(%struct.i2o_device* %0) #0 {
  %2 = alloca %struct.i2o_device*, align 8
  %3 = alloca %struct.i2o_device*, align 8
  %4 = alloca %struct.i2o_device*, align 8
  %5 = alloca %struct.i2o_device*, align 8
  %6 = alloca %struct.i2o_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.adpt_device*, align 8
  %10 = alloca %struct.adpt_device*, align 8
  store %struct.i2o_device* %0, %struct.i2o_device** %2, align 8
  %11 = call i32 @mutex_lock(i32* @adpt_configuration_lock)
  %12 = load %struct.i2o_device*, %struct.i2o_device** %2, align 8
  %13 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %12, i32 0, i32 20
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = icmp ne %struct.TYPE_6__* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load %struct.i2o_device*, %struct.i2o_device** %2, align 8
  %18 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %17, i32 0, i32 20
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.i2o_device*, %struct.i2o_device** %2, align 8
  %23 = call i32 @free_irq(i32 %21, %struct.i2o_device* %22)
  br label %24

24:                                               ; preds = %16, %1
  store %struct.i2o_device* null, %struct.i2o_device** %4, align 8
  %25 = load %struct.i2o_device*, %struct.i2o_device** @hba_chain, align 8
  store %struct.i2o_device* %25, %struct.i2o_device** %3, align 8
  br label %26

26:                                               ; preds = %48, %24
  %27 = load %struct.i2o_device*, %struct.i2o_device** %3, align 8
  %28 = icmp ne %struct.i2o_device* %27, null
  br i1 %28, label %29, label %53

29:                                               ; preds = %26
  %30 = load %struct.i2o_device*, %struct.i2o_device** %3, align 8
  %31 = load %struct.i2o_device*, %struct.i2o_device** %2, align 8
  %32 = icmp eq %struct.i2o_device* %30, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %29
  %34 = load %struct.i2o_device*, %struct.i2o_device** %4, align 8
  %35 = icmp ne %struct.i2o_device* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load %struct.i2o_device*, %struct.i2o_device** %3, align 8
  %38 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %37, i32 0, i32 10
  %39 = load %struct.i2o_device*, %struct.i2o_device** %38, align 8
  %40 = load %struct.i2o_device*, %struct.i2o_device** %4, align 8
  %41 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %40, i32 0, i32 10
  store %struct.i2o_device* %39, %struct.i2o_device** %41, align 8
  br label %46

42:                                               ; preds = %33
  %43 = load %struct.i2o_device*, %struct.i2o_device** %3, align 8
  %44 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %43, i32 0, i32 10
  %45 = load %struct.i2o_device*, %struct.i2o_device** %44, align 8
  store %struct.i2o_device* %45, %struct.i2o_device** @hba_chain, align 8
  br label %46

46:                                               ; preds = %42, %36
  br label %53

47:                                               ; preds = %29
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.i2o_device*, %struct.i2o_device** %3, align 8
  store %struct.i2o_device* %49, %struct.i2o_device** %4, align 8
  %50 = load %struct.i2o_device*, %struct.i2o_device** %3, align 8
  %51 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %50, i32 0, i32 10
  %52 = load %struct.i2o_device*, %struct.i2o_device** %51, align 8
  store %struct.i2o_device* %52, %struct.i2o_device** %3, align 8
  br label %26

53:                                               ; preds = %46, %26
  %54 = load i64, i64* @hba_count, align 8
  %55 = add nsw i64 %54, -1
  store i64 %55, i64* @hba_count, align 8
  %56 = call i32 @mutex_unlock(i32* @adpt_configuration_lock)
  %57 = load %struct.i2o_device*, %struct.i2o_device** %2, align 8
  %58 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @iounmap(i64 %59)
  %61 = load %struct.i2o_device*, %struct.i2o_device** %2, align 8
  %62 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %61, i32 0, i32 7
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = call i32 @pci_release_regions(%struct.TYPE_8__* %63)
  %65 = load %struct.i2o_device*, %struct.i2o_device** %2, align 8
  %66 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.i2o_device*, %struct.i2o_device** %2, align 8
  %69 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %67, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %53
  %73 = load %struct.i2o_device*, %struct.i2o_device** %2, align 8
  %74 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @iounmap(i64 %75)
  br label %77

77:                                               ; preds = %72, %53
  %78 = load %struct.i2o_device*, %struct.i2o_device** %2, align 8
  %79 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load %struct.i2o_device*, %struct.i2o_device** %2, align 8
  %84 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @iounmap(i64 %85)
  br label %87

87:                                               ; preds = %82, %77
  %88 = load %struct.i2o_device*, %struct.i2o_device** %2, align 8
  %89 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %88, i32 0, i32 19
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = icmp ne %struct.TYPE_9__* %90, null
  br i1 %91, label %92, label %116

92:                                               ; preds = %87
  %93 = load %struct.i2o_device*, %struct.i2o_device** %2, align 8
  %94 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %93, i32 0, i32 7
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load %struct.i2o_device*, %struct.i2o_device** %2, align 8
  %98 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %97, i32 0, i32 19
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.i2o_device*, %struct.i2o_device** %2, align 8
  %103 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %102, i32 0, i32 19
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = mul nsw i32 %101, %106
  %108 = shl i32 %107, 2
  %109 = load %struct.i2o_device*, %struct.i2o_device** %2, align 8
  %110 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %109, i32 0, i32 19
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %110, align 8
  %112 = load %struct.i2o_device*, %struct.i2o_device** %2, align 8
  %113 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %112, i32 0, i32 18
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @dma_free_coherent(i32* %96, i32 %108, %struct.TYPE_9__* %111, i32 %114)
  br label %116

116:                                              ; preds = %92, %87
  %117 = load %struct.i2o_device*, %struct.i2o_device** %2, align 8
  %118 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %117, i32 0, i32 17
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %118, align 8
  %120 = icmp ne %struct.TYPE_9__* %119, null
  br i1 %120, label %121, label %136

121:                                              ; preds = %116
  %122 = load %struct.i2o_device*, %struct.i2o_device** %2, align 8
  %123 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %122, i32 0, i32 7
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load %struct.i2o_device*, %struct.i2o_device** %2, align 8
  %127 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.i2o_device*, %struct.i2o_device** %2, align 8
  %130 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %129, i32 0, i32 17
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %130, align 8
  %132 = load %struct.i2o_device*, %struct.i2o_device** %2, align 8
  %133 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %132, i32 0, i32 16
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @dma_free_coherent(i32* %125, i32 %128, %struct.TYPE_9__* %131, i32 %134)
  br label %136

136:                                              ; preds = %121, %116
  %137 = load %struct.i2o_device*, %struct.i2o_device** %2, align 8
  %138 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %137, i32 0, i32 15
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %138, align 8
  %140 = icmp ne %struct.TYPE_9__* %139, null
  br i1 %140, label %141, label %153

141:                                              ; preds = %136
  %142 = load %struct.i2o_device*, %struct.i2o_device** %2, align 8
  %143 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %142, i32 0, i32 7
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = load %struct.i2o_device*, %struct.i2o_device** %2, align 8
  %147 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %146, i32 0, i32 15
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %147, align 8
  %149 = load %struct.i2o_device*, %struct.i2o_device** %2, align 8
  %150 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %149, i32 0, i32 14
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @dma_free_coherent(i32* %145, i32 4, %struct.TYPE_9__* %148, i32 %151)
  br label %153

153:                                              ; preds = %141, %136
  %154 = load %struct.i2o_device*, %struct.i2o_device** %2, align 8
  %155 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %154, i32 0, i32 13
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %155, align 8
  %157 = icmp ne %struct.TYPE_9__* %156, null
  br i1 %157, label %158, label %176

158:                                              ; preds = %153
  %159 = load %struct.i2o_device*, %struct.i2o_device** %2, align 8
  %160 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %159, i32 0, i32 7
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = load %struct.i2o_device*, %struct.i2o_device** %2, align 8
  %164 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @REPLY_FRAME_SIZE, align 4
  %167 = mul nsw i32 %165, %166
  %168 = mul nsw i32 %167, 4
  %169 = load %struct.i2o_device*, %struct.i2o_device** %2, align 8
  %170 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %169, i32 0, i32 13
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %170, align 8
  %172 = load %struct.i2o_device*, %struct.i2o_device** %2, align 8
  %173 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %172, i32 0, i32 12
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @dma_free_coherent(i32* %162, i32 %168, %struct.TYPE_9__* %171, i32 %174)
  br label %176

176:                                              ; preds = %158, %153
  %177 = load %struct.i2o_device*, %struct.i2o_device** %2, align 8
  %178 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %177, i32 0, i32 11
  %179 = load %struct.i2o_device*, %struct.i2o_device** %178, align 8
  store %struct.i2o_device* %179, %struct.i2o_device** %5, align 8
  br label %180

180:                                              ; preds = %189, %176
  %181 = load %struct.i2o_device*, %struct.i2o_device** %5, align 8
  %182 = icmp ne %struct.i2o_device* %181, null
  br i1 %182, label %183, label %191

183:                                              ; preds = %180
  %184 = load %struct.i2o_device*, %struct.i2o_device** %5, align 8
  %185 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %184, i32 0, i32 10
  %186 = load %struct.i2o_device*, %struct.i2o_device** %185, align 8
  store %struct.i2o_device* %186, %struct.i2o_device** %6, align 8
  %187 = load %struct.i2o_device*, %struct.i2o_device** %5, align 8
  %188 = call i32 @kfree(%struct.i2o_device* %187)
  br label %189

189:                                              ; preds = %183
  %190 = load %struct.i2o_device*, %struct.i2o_device** %6, align 8
  store %struct.i2o_device* %190, %struct.i2o_device** %5, align 8
  br label %180

191:                                              ; preds = %180
  store i32 0, i32* %7, align 4
  br label %192

192:                                              ; preds = %249, %191
  %193 = load i32, i32* %7, align 4
  %194 = load %struct.i2o_device*, %struct.i2o_device** %2, align 8
  %195 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %194, i32 0, i32 5
  %196 = load i32, i32* %195, align 8
  %197 = icmp slt i32 %193, %196
  br i1 %197, label %198, label %252

198:                                              ; preds = %192
  store i32 0, i32* %8, align 4
  br label %199

199:                                              ; preds = %245, %198
  %200 = load i32, i32* %8, align 4
  %201 = load i32, i32* @MAX_ID, align 4
  %202 = icmp slt i32 %200, %201
  br i1 %202, label %203, label %248

203:                                              ; preds = %199
  %204 = load %struct.i2o_device*, %struct.i2o_device** %2, align 8
  %205 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %204, i32 0, i32 9
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %205, align 8
  %207 = load i32, i32* %7, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 0
  %211 = load %struct.i2o_device**, %struct.i2o_device*** %210, align 8
  %212 = load i32, i32* %8, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.i2o_device*, %struct.i2o_device** %211, i64 %213
  %215 = load %struct.i2o_device*, %struct.i2o_device** %214, align 8
  %216 = icmp ne %struct.i2o_device* %215, null
  br i1 %216, label %217, label %244

217:                                              ; preds = %203
  %218 = load %struct.i2o_device*, %struct.i2o_device** %2, align 8
  %219 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %218, i32 0, i32 9
  %220 = load %struct.TYPE_7__*, %struct.TYPE_7__** %219, align 8
  %221 = load i32, i32* %7, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 0
  %225 = load %struct.i2o_device**, %struct.i2o_device*** %224, align 8
  %226 = load i32, i32* %8, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.i2o_device*, %struct.i2o_device** %225, i64 %227
  %229 = load %struct.i2o_device*, %struct.i2o_device** %228, align 8
  %230 = bitcast %struct.i2o_device* %229 to %struct.adpt_device*
  store %struct.adpt_device* %230, %struct.adpt_device** %9, align 8
  br label %231

231:                                              ; preds = %241, %217
  %232 = load %struct.adpt_device*, %struct.adpt_device** %9, align 8
  %233 = icmp ne %struct.adpt_device* %232, null
  br i1 %233, label %234, label %243

234:                                              ; preds = %231
  %235 = load %struct.adpt_device*, %struct.adpt_device** %9, align 8
  %236 = getelementptr inbounds %struct.adpt_device, %struct.adpt_device* %235, i32 0, i32 8
  %237 = load %struct.adpt_device*, %struct.adpt_device** %236, align 8
  store %struct.adpt_device* %237, %struct.adpt_device** %10, align 8
  %238 = load %struct.adpt_device*, %struct.adpt_device** %9, align 8
  %239 = bitcast %struct.adpt_device* %238 to %struct.i2o_device*
  %240 = call i32 @kfree(%struct.i2o_device* %239)
  br label %241

241:                                              ; preds = %234
  %242 = load %struct.adpt_device*, %struct.adpt_device** %10, align 8
  store %struct.adpt_device* %242, %struct.adpt_device** %9, align 8
  br label %231

243:                                              ; preds = %231
  br label %244

244:                                              ; preds = %243, %203
  br label %245

245:                                              ; preds = %244
  %246 = load i32, i32* %8, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %8, align 4
  br label %199

248:                                              ; preds = %199
  br label %249

249:                                              ; preds = %248
  %250 = load i32, i32* %7, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %7, align 4
  br label %192

252:                                              ; preds = %192
  %253 = load %struct.i2o_device*, %struct.i2o_device** %2, align 8
  %254 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %253, i32 0, i32 7
  %255 = load %struct.TYPE_8__*, %struct.TYPE_8__** %254, align 8
  %256 = call i32 @pci_dev_put(%struct.TYPE_8__* %255)
  %257 = load %struct.i2o_device*, %struct.i2o_device** %2, align 8
  %258 = call i32 @kfree(%struct.i2o_device* %257)
  %259 = load i32*, i32** @adpt_sysfs_class, align 8
  %260 = icmp ne i32* %259, null
  br i1 %260, label %261, label %269

261:                                              ; preds = %252
  %262 = load i32*, i32** @adpt_sysfs_class, align 8
  %263 = load i32, i32* @DPTI_I2O_MAJOR, align 4
  %264 = load %struct.i2o_device*, %struct.i2o_device** %2, align 8
  %265 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %264, i32 0, i32 6
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @MKDEV(i32 %263, i32 %266)
  %268 = call i32 @device_destroy(i32* %262, i32 %267)
  br label %269

269:                                              ; preds = %261, %252
  %270 = load i64, i64* @hba_count, align 8
  %271 = icmp sle i64 %270, 0
  br i1 %271, label %272, label %282

272:                                              ; preds = %269
  %273 = load i32, i32* @DPTI_I2O_MAJOR, align 4
  %274 = load i32, i32* @DPT_DRIVER, align 4
  %275 = call i32 @unregister_chrdev(i32 %273, i32 %274)
  %276 = load i32*, i32** @adpt_sysfs_class, align 8
  %277 = icmp ne i32* %276, null
  br i1 %277, label %278, label %281

278:                                              ; preds = %272
  %279 = load i32*, i32** @adpt_sysfs_class, align 8
  %280 = call i32 @class_destroy(i32* %279)
  store i32* null, i32** @adpt_sysfs_class, align 8
  br label %281

281:                                              ; preds = %278, %272
  br label %282

282:                                              ; preds = %281, %269
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.i2o_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @pci_release_regions(%struct.TYPE_8__*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @kfree(%struct.i2o_device*) #1

declare dso_local i32 @pci_dev_put(%struct.TYPE_8__*) #1

declare dso_local i32 @device_destroy(i32*, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @unregister_chrdev(i32, i32) #1

declare dso_local i32 @class_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
