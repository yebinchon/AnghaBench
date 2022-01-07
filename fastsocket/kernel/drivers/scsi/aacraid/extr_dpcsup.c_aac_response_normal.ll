; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_dpcsup.c_aac_response_normal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_dpcsup.c_aac_response_normal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }
%struct.aac_queue = type { i32*, %struct.aac_dev* }
%struct.aac_dev = type { i32, i32, %struct.TYPE_6__*, %struct.fib* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.fib = type { i32, i32, i32, i32, i32, i32 (i32, %struct.fib*)*, %struct.hw_fib* }
%struct.hw_fib = type { %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.aac_entry = type { i32 }

@HostNormRespQueue = common dso_local global i32 0, align 4
@AdapNormCmdQueue = common dso_local global i64 0, align 8
@FIB_CONTEXT_FLAG_TIMED_OUT = common dso_local global i32 0, align 4
@ST_OK = common dso_local global i32 0, align 4
@AdapterProcessed = common dso_local global i32 0, align 4
@FIB_CONTEXT_FLAG_FASTRESP = common dso_local global i32 0, align 4
@aac_config = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@NuFileSystem = common dso_local global i32 0, align 4
@NoResponseExpected = common dso_local global i32 0, align 4
@Async = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aac_response_normal(%struct.aac_queue* %0) #0 {
  %2 = alloca %struct.aac_queue*, align 8
  %3 = alloca %struct.aac_dev*, align 8
  %4 = alloca %struct.aac_entry*, align 8
  %5 = alloca %struct.hw_fib*, align 8
  %6 = alloca %struct.fib*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store %struct.aac_queue* %0, %struct.aac_queue** %2, align 8
  %14 = load %struct.aac_queue*, %struct.aac_queue** %2, align 8
  %15 = getelementptr inbounds %struct.aac_queue, %struct.aac_queue* %14, i32 0, i32 1
  %16 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  store %struct.aac_dev* %16, %struct.aac_dev** %3, align 8
  store i32 0, i32* %7, align 4
  %17 = load %struct.aac_queue*, %struct.aac_queue** %2, align 8
  %18 = getelementptr inbounds %struct.aac_queue, %struct.aac_queue* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  br label %22

22:                                               ; preds = %226, %65, %1
  %23 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %24 = load %struct.aac_queue*, %struct.aac_queue** %2, align 8
  %25 = call i64 @aac_consumer_get(%struct.aac_dev* %23, %struct.aac_queue* %24, %struct.aac_entry** %4)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %234

27:                                               ; preds = %22
  %28 = load %struct.aac_entry*, %struct.aac_entry** %4, align 8
  %29 = getelementptr inbounds %struct.aac_entry, %struct.aac_entry* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le32_to_cpu(i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = and i32 %32, 1
  store i32 %33, i32* %10, align 4
  %34 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %35 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %34, i32 0, i32 3
  %36 = load %struct.fib*, %struct.fib** %35, align 8
  %37 = load i32, i32* %11, align 4
  %38 = ashr i32 %37, 2
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.fib, %struct.fib* %36, i64 %39
  store %struct.fib* %40, %struct.fib** %6, align 8
  %41 = load %struct.fib*, %struct.fib** %6, align 8
  %42 = getelementptr inbounds %struct.fib, %struct.fib* %41, i32 0, i32 6
  %43 = load %struct.hw_fib*, %struct.hw_fib** %42, align 8
  store %struct.hw_fib* %43, %struct.hw_fib** %5, align 8
  %44 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %45 = load %struct.aac_queue*, %struct.aac_queue** %2, align 8
  %46 = load i32, i32* @HostNormRespQueue, align 4
  %47 = call i32 @aac_consumer_free(%struct.aac_dev* %44, %struct.aac_queue* %45, i32 %46)
  %48 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %49 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %48, i32 0, i32 2
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = load i64, i64* @AdapNormCmdQueue, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %55, align 4
  %58 = load %struct.fib*, %struct.fib** %6, align 8
  %59 = getelementptr inbounds %struct.fib, %struct.fib* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @FIB_CONTEXT_FLAG_TIMED_OUT, align 4
  %62 = and i32 %60, %61
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %27
  %66 = load %struct.aac_queue*, %struct.aac_queue** %2, align 8
  %67 = getelementptr inbounds %struct.aac_queue, %struct.aac_queue* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* %8, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  %71 = load %struct.fib*, %struct.fib** %6, align 8
  %72 = call i32 @aac_fib_complete(%struct.fib* %71)
  %73 = load %struct.fib*, %struct.fib** %6, align 8
  %74 = call i32 @aac_fib_free(%struct.fib* %73)
  %75 = load %struct.aac_queue*, %struct.aac_queue** %2, align 8
  %76 = getelementptr inbounds %struct.aac_queue, %struct.aac_queue* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* %8, align 8
  %79 = call i32 @spin_lock_irqsave(i32* %77, i64 %78)
  br label %22

80:                                               ; preds = %27
  %81 = load %struct.aac_queue*, %struct.aac_queue** %2, align 8
  %82 = getelementptr inbounds %struct.aac_queue, %struct.aac_queue* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* %8, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32* %83, i64 %84)
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %107

88:                                               ; preds = %80
  %89 = load i32, i32* @ST_OK, align 4
  %90 = call i32 @cpu_to_le32(i32 %89)
  %91 = load %struct.hw_fib*, %struct.hw_fib** %5, align 8
  %92 = getelementptr inbounds %struct.hw_fib, %struct.hw_fib* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = inttoptr i64 %93 to i32*
  store i32 %90, i32* %94, align 4
  %95 = load i32, i32* @AdapterProcessed, align 4
  %96 = call i32 @cpu_to_le32(i32 %95)
  %97 = load %struct.hw_fib*, %struct.hw_fib** %5, align 8
  %98 = getelementptr inbounds %struct.hw_fib, %struct.hw_fib* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %96
  store i32 %101, i32* %99, align 8
  %102 = load i32, i32* @FIB_CONTEXT_FLAG_FASTRESP, align 4
  %103 = load %struct.fib*, %struct.fib** %6, align 8
  %104 = getelementptr inbounds %struct.fib, %struct.fib* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 8
  br label %107

107:                                              ; preds = %88, %80
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aac_config, i32 0, i32 5), align 4
  %109 = call i32 @FIB_COUNTER_INCREMENT(i32 %108)
  %110 = load %struct.hw_fib*, %struct.hw_fib** %5, align 8
  %111 = getelementptr inbounds %struct.hw_fib, %struct.hw_fib* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* @NuFileSystem, align 4
  %115 = call i64 @cpu_to_le16(i32 %114)
  %116 = icmp eq i64 %113, %115
  br i1 %116, label %117, label %132

117:                                              ; preds = %107
  %118 = load %struct.hw_fib*, %struct.hw_fib** %5, align 8
  %119 = getelementptr inbounds %struct.hw_fib, %struct.hw_fib* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = inttoptr i64 %120 to i32*
  store i32* %121, i32** %12, align 8
  %122 = load i32*, i32** %12, align 8
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @cpu_to_le32(i32 -65536)
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %117
  %128 = load i32, i32* @ST_OK, align 4
  %129 = call i32 @cpu_to_le32(i32 %128)
  %130 = load i32*, i32** %12, align 8
  store i32 %129, i32* %130, align 4
  br label %131

131:                                              ; preds = %127, %117
  br label %132

132:                                              ; preds = %131, %107
  %133 = load %struct.hw_fib*, %struct.hw_fib** %5, align 8
  %134 = getelementptr inbounds %struct.hw_fib, %struct.hw_fib* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @NoResponseExpected, align 4
  %138 = load i32, i32* @Async, align 4
  %139 = or i32 %137, %138
  %140 = call i32 @cpu_to_le32(i32 %139)
  %141 = and i32 %136, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %172

143:                                              ; preds = %132
  %144 = load %struct.hw_fib*, %struct.hw_fib** %5, align 8
  %145 = getelementptr inbounds %struct.hw_fib, %struct.hw_fib* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @NoResponseExpected, align 4
  %149 = call i32 @cpu_to_le32(i32 %148)
  %150 = and i32 %147, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %143
  %153 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aac_config, i32 0, i32 4), align 4
  %154 = call i32 @FIB_COUNTER_INCREMENT(i32 %153)
  br label %158

155:                                              ; preds = %143
  %156 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aac_config, i32 0, i32 3), align 4
  %157 = call i32 @FIB_COUNTER_INCREMENT(i32 %156)
  br label %158

158:                                              ; preds = %155, %152
  %159 = load i32, i32* @FIB_CONTEXT_FLAG_FASTRESP, align 4
  %160 = load %struct.fib*, %struct.fib** %6, align 8
  %161 = getelementptr inbounds %struct.fib, %struct.fib* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = and i32 %162, %159
  store i32 %163, i32* %161, align 8
  %164 = load %struct.fib*, %struct.fib** %6, align 8
  %165 = getelementptr inbounds %struct.fib, %struct.fib* %164, i32 0, i32 5
  %166 = load i32 (i32, %struct.fib*)*, i32 (i32, %struct.fib*)** %165, align 8
  %167 = load %struct.fib*, %struct.fib** %6, align 8
  %168 = getelementptr inbounds %struct.fib, %struct.fib* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.fib*, %struct.fib** %6, align 8
  %171 = call i32 %166(i32 %169, %struct.fib* %170)
  br label %226

172:                                              ; preds = %132
  %173 = load %struct.fib*, %struct.fib** %6, align 8
  %174 = getelementptr inbounds %struct.fib, %struct.fib* %173, i32 0, i32 2
  %175 = load i64, i64* %13, align 8
  %176 = call i32 @spin_lock_irqsave(i32* %174, i64 %175)
  %177 = load %struct.fib*, %struct.fib** %6, align 8
  %178 = getelementptr inbounds %struct.fib, %struct.fib* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %187, label %181

181:                                              ; preds = %172
  %182 = load %struct.fib*, %struct.fib** %6, align 8
  %183 = getelementptr inbounds %struct.fib, %struct.fib* %182, i32 0, i32 1
  store i32 1, i32* %183, align 4
  %184 = load %struct.fib*, %struct.fib** %6, align 8
  %185 = getelementptr inbounds %struct.fib, %struct.fib* %184, i32 0, i32 3
  %186 = call i32 @up(i32* %185)
  br label %187

187:                                              ; preds = %181, %172
  %188 = load %struct.fib*, %struct.fib** %6, align 8
  %189 = getelementptr inbounds %struct.fib, %struct.fib* %188, i32 0, i32 2
  %190 = load i64, i64* %13, align 8
  %191 = call i32 @spin_unlock_irqrestore(i32* %189, i64 %190)
  %192 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %193 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %192, i32 0, i32 0
  %194 = load i64, i64* %9, align 8
  %195 = call i32 @spin_lock_irqsave(i32* %193, i64 %194)
  %196 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %197 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = add nsw i32 %198, -1
  store i32 %199, i32* %197, align 4
  %200 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %201 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %200, i32 0, i32 0
  %202 = load i64, i64* %9, align 8
  %203 = call i32 @spin_unlock_irqrestore(i32* %201, i64 %202)
  %204 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aac_config, i32 0, i32 2), align 4
  %205 = call i32 @FIB_COUNTER_INCREMENT(i32 %204)
  %206 = load %struct.fib*, %struct.fib** %6, align 8
  %207 = getelementptr inbounds %struct.fib, %struct.fib* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = icmp eq i32 %208, 2
  br i1 %209, label %210, label %225

210:                                              ; preds = %187
  %211 = load %struct.fib*, %struct.fib** %6, align 8
  %212 = getelementptr inbounds %struct.fib, %struct.fib* %211, i32 0, i32 2
  %213 = load i64, i64* %13, align 8
  %214 = call i32 @spin_lock_irqsave(i32* %212, i64 %213)
  %215 = load %struct.fib*, %struct.fib** %6, align 8
  %216 = getelementptr inbounds %struct.fib, %struct.fib* %215, i32 0, i32 1
  store i32 0, i32* %216, align 4
  %217 = load %struct.fib*, %struct.fib** %6, align 8
  %218 = getelementptr inbounds %struct.fib, %struct.fib* %217, i32 0, i32 2
  %219 = load i64, i64* %13, align 8
  %220 = call i32 @spin_unlock_irqrestore(i32* %218, i64 %219)
  %221 = load %struct.fib*, %struct.fib** %6, align 8
  %222 = call i32 @aac_fib_complete(%struct.fib* %221)
  %223 = load %struct.fib*, %struct.fib** %6, align 8
  %224 = call i32 @aac_fib_free(%struct.fib* %223)
  br label %225

225:                                              ; preds = %210, %187
  br label %226

226:                                              ; preds = %225, %158
  %227 = load i32, i32* %7, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %7, align 4
  %229 = load %struct.aac_queue*, %struct.aac_queue** %2, align 8
  %230 = getelementptr inbounds %struct.aac_queue, %struct.aac_queue* %229, i32 0, i32 0
  %231 = load i32*, i32** %230, align 8
  %232 = load i64, i64* %8, align 8
  %233 = call i32 @spin_lock_irqsave(i32* %231, i64 %232)
  br label %22

234:                                              ; preds = %22
  %235 = load i32, i32* %7, align 4
  %236 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aac_config, i32 0, i32 0), align 4
  %237 = icmp sgt i32 %235, %236
  br i1 %237, label %238, label %240

238:                                              ; preds = %234
  %239 = load i32, i32* %7, align 4
  store i32 %239, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aac_config, i32 0, i32 0), align 4
  br label %240

240:                                              ; preds = %238, %234
  %241 = load i32, i32* %7, align 4
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %240
  %244 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aac_config, i32 0, i32 1), align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aac_config, i32 0, i32 1), align 4
  br label %246

246:                                              ; preds = %243, %240
  %247 = load %struct.aac_queue*, %struct.aac_queue** %2, align 8
  %248 = getelementptr inbounds %struct.aac_queue, %struct.aac_queue* %247, i32 0, i32 0
  %249 = load i32*, i32** %248, align 8
  %250 = load i64, i64* %8, align 8
  %251 = call i32 @spin_unlock_irqrestore(i32* %249, i64 %250)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @aac_consumer_get(%struct.aac_dev*, %struct.aac_queue*, %struct.aac_entry**) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @aac_consumer_free(%struct.aac_dev*, %struct.aac_queue*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @aac_fib_complete(%struct.fib*) #1

declare dso_local i32 @aac_fib_free(%struct.fib*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @FIB_COUNTER_INCREMENT(i32) #1

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
