; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_qla1280.c_qla1280_slave_configure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_qla1280.c_qla1280_slave_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32, i64, i64, i64 }
%struct.scsi_device = type { i32, i32, i64, i64, i64, i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.scsi_qla_host = type { %struct.TYPE_17__*, %struct.TYPE_11__*, %struct.nvram }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.nvram = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }

@BIT_0 = common dso_local global i32 0, align 4
@MSG_ORDERED_TAG = common dso_local global i32 0, align 4
@driver_setup = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @qla1280_slave_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla1280_slave_configure(%struct.scsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.scsi_qla_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvram*, align 8
  %10 = alloca i64, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  store i32 3, i32* %5, align 4
  %11 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %12 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  %14 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %15 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %17 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %18 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %17, i32 0, i32 6
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.scsi_qla_host*
  store %struct.scsi_qla_host* %22, %struct.scsi_qla_host** %4, align 8
  %23 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %24 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %23, i32 0, i32 2
  store %struct.nvram* %24, %struct.nvram** %9, align 8
  %25 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @qla1280_check_for_dead_scsi_bus(%struct.scsi_qla_host* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %241

30:                                               ; preds = %1
  %31 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %32 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %61

35:                                               ; preds = %30
  %36 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %37 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %36, i32 0, i32 1
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @BIT_0, align 4
  %45 = load i32, i32* %7, align 4
  %46 = shl i32 %44, %45
  %47 = and i32 %43, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %35
  %50 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %51 = load i32, i32* @MSG_ORDERED_TAG, align 4
  %52 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %53 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %52, i32 0, i32 1
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @scsi_adjust_queue_depth(%struct.scsi_device* %50, i32 %51, i32 %59)
  br label %65

61:                                               ; preds = %35, %30
  %62 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @scsi_adjust_queue_depth(%struct.scsi_device* %62, i32 0, i32 %63)
  br label %65

65:                                               ; preds = %61, %49
  %66 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %67 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.nvram*, %struct.nvram** %9, align 8
  %70 = getelementptr inbounds %struct.nvram, %struct.nvram* %69, i32 0, i32 0
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  store i64 %68, i64* %81, align 8
  %82 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %83 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.nvram*, %struct.nvram** %9, align 8
  %86 = getelementptr inbounds %struct.nvram, %struct.nvram* %85, i32 0, i32 0
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  store i64 %84, i64* %97, align 8
  %98 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %99 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.nvram*, %struct.nvram** %9, align 8
  %102 = getelementptr inbounds %struct.nvram, %struct.nvram* %101, i32 0, i32 0
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  store i64 %100, i64* %114, align 8
  %115 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @driver_setup, i32 0, i32 5), align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %127, label %117

117:                                              ; preds = %65
  %118 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @driver_setup, i32 0, i32 0), align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %141

120:                                              ; preds = %117
  %121 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @driver_setup, i32 0, i32 0), align 8
  %122 = xor i32 %121, -1
  %123 = load i32, i32* %7, align 4
  %124 = shl i32 1, %123
  %125 = and i32 %122, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %141

127:                                              ; preds = %120, %65
  %128 = load %struct.nvram*, %struct.nvram** %9, align 8
  %129 = getelementptr inbounds %struct.nvram, %struct.nvram* %128, i32 0, i32 0
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %129, align 8
  %131 = load i32, i32* %6, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %134, align 8
  %136 = load i32, i32* %7, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 0
  store i64 0, i64* %140, align 8
  br label %141

141:                                              ; preds = %127, %120, %117
  %142 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @driver_setup, i32 0, i32 4), align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %154, label %144

144:                                              ; preds = %141
  %145 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @driver_setup, i32 0, i32 1), align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %168

147:                                              ; preds = %144
  %148 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @driver_setup, i32 0, i32 1), align 4
  %149 = xor i32 %148, -1
  %150 = load i32, i32* %7, align 4
  %151 = shl i32 1, %150
  %152 = and i32 %149, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %168

154:                                              ; preds = %147, %141
  %155 = load %struct.nvram*, %struct.nvram** %9, align 8
  %156 = getelementptr inbounds %struct.nvram, %struct.nvram* %155, i32 0, i32 0
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %156, align 8
  %158 = load i32, i32* %6, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %161, align 8
  %163 = load i32, i32* %7, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 1
  store i64 0, i64* %167, align 8
  br label %168

168:                                              ; preds = %154, %147, %144
  %169 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %170 = call i64 @IS_ISP1x160(%struct.scsi_qla_host* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %201

172:                                              ; preds = %168
  %173 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @driver_setup, i32 0, i32 3), align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %185, label %175

175:                                              ; preds = %172
  %176 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @driver_setup, i32 0, i32 2), align 8
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %200

178:                                              ; preds = %175
  %179 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @driver_setup, i32 0, i32 2), align 8
  %180 = xor i32 %179, -1
  %181 = load i32, i32* %7, align 4
  %182 = shl i32 1, %181
  %183 = and i32 %180, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %200

185:                                              ; preds = %178, %172
  %186 = load %struct.nvram*, %struct.nvram** %9, align 8
  %187 = getelementptr inbounds %struct.nvram, %struct.nvram* %186, i32 0, i32 0
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %187, align 8
  %189 = load i32, i32* %6, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 0
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %192, align 8
  %194 = load i32, i32* %7, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 0
  store i64 0, i64* %199, align 8
  br label %200

200:                                              ; preds = %185, %178, %175
  br label %201

201:                                              ; preds = %200, %168
  %202 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %203 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %202, i32 0, i32 0
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load i64, i64* %10, align 8
  %208 = call i32 @spin_lock_irqsave(i32 %206, i64 %207)
  %209 = load %struct.nvram*, %struct.nvram** %9, align 8
  %210 = getelementptr inbounds %struct.nvram, %struct.nvram* %209, i32 0, i32 0
  %211 = load %struct.TYPE_16__*, %struct.TYPE_16__** %210, align 8
  %212 = load i32, i32* %6, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %214, i32 0, i32 0
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %215, align 8
  %217 = load i32, i32* %7, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %229

224:                                              ; preds = %201
  %225 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %226 = load i32, i32* %6, align 4
  %227 = load i32, i32* %7, align 4
  %228 = call i32 @qla1280_set_target_parameters(%struct.scsi_qla_host* %225, i32 %226, i32 %227)
  store i32 %228, i32* %8, align 4
  br label %229

229:                                              ; preds = %224, %201
  %230 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %231 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %232 = call i32 @qla1280_get_target_parameters(%struct.scsi_qla_host* %230, %struct.scsi_device* %231)
  %233 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %234 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %233, i32 0, i32 0
  %235 = load %struct.TYPE_17__*, %struct.TYPE_17__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load i64, i64* %10, align 8
  %239 = call i32 @spin_unlock_irqrestore(i32 %237, i64 %238)
  %240 = load i32, i32* %8, align 4
  store i32 %240, i32* %2, align 4
  br label %241

241:                                              ; preds = %229, %29
  %242 = load i32, i32* %2, align 4
  ret i32 %242
}

declare dso_local i64 @qla1280_check_for_dead_scsi_bus(%struct.scsi_qla_host*, i32) #1

declare dso_local i32 @scsi_adjust_queue_depth(%struct.scsi_device*, i32, i32) #1

declare dso_local i64 @IS_ISP1x160(%struct.scsi_qla_host*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @qla1280_set_target_parameters(%struct.scsi_qla_host*, i32, i32) #1

declare dso_local i32 @qla1280_get_target_parameters(%struct.scsi_qla_host*, %struct.scsi_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
