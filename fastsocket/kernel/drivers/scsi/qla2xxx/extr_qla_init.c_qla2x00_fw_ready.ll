; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_init.c_qla2x00_fw_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_init.c_qla2x00_fw_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_11__, %struct.qla_hw_data* }
%struct.TYPE_11__ = type { i32 }
%struct.qla_hw_data = type { i32, i32, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i64 }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@ql_log_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Waiting for LIP to complete.\0A\00", align 1
@FSTATE_LOSS_OF_SYNC = common dso_local global i64 0, align 8
@DFLG_NO_CABLE = common dso_local global i32 0, align 4
@FSTATE_READY = common dso_local global i64 0, align 8
@ql_dbg_taskm = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"fw_state=%x 84xx=%x.\0A\00", align 1
@FSTATE_LOGGED_IN = common dso_local global i64 0, align 8
@FSTATE_WAITING_FOR_VERIFY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"Sending verify iocb.\0A\00", align 1
@ql_log_warn = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"Init chip failed.\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Increasing wait time by %ld. New time %ld.\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"F/W Ready - OK.\0A\00", align 1
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"Cable is unplugged...\0A\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"fw_state=%x (%x, %x, %x, %x) curr time=%lx.\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"Firmware ready **** FAILED ****.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @qla2x00_fw_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2x00_fw_ready(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [5 x i64], align 16
  %11 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 3
  %14 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  store %struct.qla_hw_data* %14, %struct.qla_hw_data** %11, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 3
  %17 = load %struct.qla_hw_data*, %struct.qla_hw_data** %16, align 8
  %18 = call i64 @IS_QLAFX00(%struct.qla_hw_data* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %22 = call i32 @qlafx00_fw_ready(%struct.TYPE_13__* %21)
  store i32 %22, i32* %2, align 4
  br label %236

23:                                               ; preds = %1
  %24 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %24, i32* %4, align 4
  store i64 60, i64* %8, align 8
  %25 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %26 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %29 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %27, %30
  %32 = add nsw i32 %31, 5
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* %8, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %23
  %37 = load i64, i64* %8, align 8
  store i64 %37, i64* %9, align 8
  br label %38

38:                                               ; preds = %36, %23
  %39 = load i64, i64* @jiffies, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* @HZ, align 8
  %42 = mul i64 %40, %41
  %43 = add i64 %39, %42
  store i64 %43, i64* %6, align 8
  %44 = load i64, i64* @jiffies, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* @HZ, align 8
  %47 = mul i64 %45, %46
  %48 = add i64 %44, %47
  store i64 %48, i64* %5, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %38
  %55 = load i32, i32* @ql_log_info, align 4
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %57 = call i32 @ql_log(i32 %55, %struct.TYPE_13__* %56, i32 32798, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %54, %38
  br label %59

59:                                               ; preds = %205, %58
  %60 = getelementptr inbounds [5 x i64], [5 x i64]* %10, i64 0, i64 0
  %61 = call i32 @memset(i64* %60, i32 -1, i32 40)
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %63 = getelementptr inbounds [5 x i64], [5 x i64]* %10, i64 0, i64 0
  %64 = call i32 @qla2x00_get_firmware_state(%struct.TYPE_13__* %62, i64* %63)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @QLA_SUCCESS, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %184

68:                                               ; preds = %59
  %69 = getelementptr inbounds [5 x i64], [5 x i64]* %10, i64 0, i64 0
  %70 = load i64, i64* %69, align 16
  %71 = load i64, i64* @FSTATE_LOSS_OF_SYNC, align 8
  %72 = icmp ult i64 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = load i32, i32* @DFLG_NO_CABLE, align 4
  %75 = xor i32 %74, -1
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = and i32 %78, %75
  store i32 %79, i32* %77, align 8
  br label %80

80:                                               ; preds = %73, %68
  %81 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %82 = call i64 @IS_QLA84XX(%struct.qla_hw_data* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %138

84:                                               ; preds = %80
  %85 = getelementptr inbounds [5 x i64], [5 x i64]* %10, i64 0, i64 0
  %86 = load i64, i64* %85, align 16
  %87 = load i64, i64* @FSTATE_READY, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %138

89:                                               ; preds = %84
  %90 = load i32, i32* @ql_dbg_taskm, align 4
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %92 = getelementptr inbounds [5 x i64], [5 x i64]* %10, i64 0, i64 0
  %93 = load i64, i64* %92, align 16
  %94 = getelementptr inbounds [5 x i64], [5 x i64]* %10, i64 0, i64 2
  %95 = load i64, i64* %94, align 16
  %96 = call i32 (i32, %struct.TYPE_13__*, i32, i8*, ...) @ql_dbg(i32 %90, %struct.TYPE_13__* %91, i32 32799, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %93, i64 %95)
  %97 = getelementptr inbounds [5 x i64], [5 x i64]* %10, i64 0, i64 2
  %98 = load i64, i64* %97, align 16
  %99 = load i64, i64* @FSTATE_LOGGED_IN, align 8
  %100 = and i64 %98, %99
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %137

102:                                              ; preds = %89
  %103 = getelementptr inbounds [5 x i64], [5 x i64]* %10, i64 0, i64 2
  %104 = load i64, i64* %103, align 16
  %105 = load i64, i64* @FSTATE_WAITING_FOR_VERIFY, align 8
  %106 = and i64 %104, %105
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %137

108:                                              ; preds = %102
  %109 = load i32, i32* @ql_dbg_taskm, align 4
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %111 = call i32 (i32, %struct.TYPE_13__*, i32, i8*, ...) @ql_dbg(i32 %109, %struct.TYPE_13__* %110, i32 32808, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %112 = load i64, i64* @jiffies, align 8
  store i64 %112, i64* %7, align 8
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %114 = call i32 @qla84xx_init_chip(%struct.TYPE_13__* %113)
  store i32 %114, i32* %4, align 4
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* @QLA_SUCCESS, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %108
  %119 = load i32, i32* @ql_log_warn, align 4
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %121 = call i32 @ql_log(i32 %119, %struct.TYPE_13__* %120, i32 32775, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %206

122:                                              ; preds = %108
  %123 = load i64, i64* @jiffies, align 8
  %124 = load i64, i64* %7, align 8
  %125 = sub i64 %123, %124
  store i64 %125, i64* %7, align 8
  %126 = load i64, i64* %7, align 8
  %127 = load i64, i64* %5, align 8
  %128 = add i64 %127, %126
  store i64 %128, i64* %5, align 8
  %129 = load i64, i64* %7, align 8
  %130 = load i64, i64* %6, align 8
  %131 = add i64 %130, %129
  store i64 %131, i64* %6, align 8
  %132 = load i32, i32* @ql_dbg_taskm, align 4
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %134 = load i64, i64* %7, align 8
  %135 = load i64, i64* %5, align 8
  %136 = call i32 (i32, %struct.TYPE_13__*, i32, i8*, ...) @ql_dbg(i32 %132, %struct.TYPE_13__* %133, i32 32776, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i64 %134, i64 %135)
  br label %137

137:                                              ; preds = %122, %102, %89
  br label %157

138:                                              ; preds = %84, %80
  %139 = getelementptr inbounds [5 x i64], [5 x i64]* %10, i64 0, i64 0
  %140 = load i64, i64* %139, align 16
  %141 = load i64, i64* @FSTATE_READY, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %156

143:                                              ; preds = %138
  %144 = load i32, i32* @ql_dbg_taskm, align 4
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %146 = call i32 (i32, %struct.TYPE_13__*, i32, i8*, ...) @ql_dbg(i32 %144, %struct.TYPE_13__* %145, i32 32823, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %148 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %149 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %148, i32 0, i32 0
  %150 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %151 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %150, i32 0, i32 1
  %152 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %153 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %152, i32 0, i32 3
  %154 = call i32 @qla2x00_get_retry_cnt(%struct.TYPE_13__* %147, i32* %149, i32* %151, i32* %153)
  %155 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %155, i32* %4, align 4
  br label %206

156:                                              ; preds = %138
  br label %157

157:                                              ; preds = %156, %137
  %158 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %158, i32* %4, align 4
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 1
  %161 = call i64 @atomic_read(i32* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %183

163:                                              ; preds = %157
  %164 = getelementptr inbounds [5 x i64], [5 x i64]* %10, i64 0, i64 0
  %165 = load i64, i64* %164, align 16
  %166 = load i64, i64* @FSTATE_READY, align 8
  %167 = icmp ne i64 %165, %166
  br i1 %167, label %168, label %183

168:                                              ; preds = %163
  %169 = load i64, i64* @jiffies, align 8
  %170 = load i64, i64* %6, align 8
  %171 = call i64 @time_after_eq(i64 %169, i64 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %182

173:                                              ; preds = %168
  %174 = load i32, i32* @ql_log_info, align 4
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %176 = call i32 @ql_log(i32 %174, %struct.TYPE_13__* %175, i32 32824, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %177 = load i32, i32* @DFLG_NO_CABLE, align 4
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = or i32 %180, %177
  store i32 %181, i32* %179, align 8
  br label %206

182:                                              ; preds = %168
  br label %183

183:                                              ; preds = %182, %163, %157
  br label %197

184:                                              ; preds = %59
  %185 = load i64, i64* @jiffies, align 8
  %186 = load i64, i64* %6, align 8
  %187 = call i64 @time_after_eq(i64 %185, i64 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %195, label %189

189:                                              ; preds = %184
  %190 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %191 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %189, %184
  br label %206

196:                                              ; preds = %189
  br label %197

197:                                              ; preds = %196, %183
  %198 = load i64, i64* @jiffies, align 8
  %199 = load i64, i64* %5, align 8
  %200 = call i64 @time_after_eq(i64 %198, i64 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %197
  br label %206

203:                                              ; preds = %197
  %204 = call i32 @msleep(i32 500)
  br label %205

205:                                              ; preds = %203
  br i1 true, label %59, label %206

206:                                              ; preds = %205, %202, %195, %173, %143, %118
  %207 = load i32, i32* @ql_dbg_taskm, align 4
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %209 = getelementptr inbounds [5 x i64], [5 x i64]* %10, i64 0, i64 0
  %210 = load i64, i64* %209, align 16
  %211 = getelementptr inbounds [5 x i64], [5 x i64]* %10, i64 0, i64 1
  %212 = load i64, i64* %211, align 8
  %213 = getelementptr inbounds [5 x i64], [5 x i64]* %10, i64 0, i64 2
  %214 = load i64, i64* %213, align 16
  %215 = getelementptr inbounds [5 x i64], [5 x i64]* %10, i64 0, i64 3
  %216 = load i64, i64* %215, align 8
  %217 = getelementptr inbounds [5 x i64], [5 x i64]* %10, i64 0, i64 4
  %218 = load i64, i64* %217, align 16
  %219 = load i64, i64* @jiffies, align 8
  %220 = call i32 (i32, %struct.TYPE_13__*, i32, i8*, ...) @ql_dbg(i32 %207, %struct.TYPE_13__* %208, i32 32826, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i64 %210, i64 %212, i64 %214, i64 %216, i64 %218, i64 %219)
  %221 = load i32, i32* %4, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %234

223:                                              ; preds = %206
  %224 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @DFLG_NO_CABLE, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %234, label %230

230:                                              ; preds = %223
  %231 = load i32, i32* @ql_log_warn, align 4
  %232 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %233 = call i32 @ql_log(i32 %231, %struct.TYPE_13__* %232, i32 32827, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  br label %234

234:                                              ; preds = %230, %223, %206
  %235 = load i32, i32* %4, align 4
  store i32 %235, i32* %2, align 4
  br label %236

236:                                              ; preds = %234, %20
  %237 = load i32, i32* %2, align 4
  ret i32 %237
}

declare dso_local i64 @IS_QLAFX00(%struct.qla_hw_data*) #1

declare dso_local i32 @qlafx00_fw_ready(%struct.TYPE_13__*) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_13__*, i32, i8*) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @qla2x00_get_firmware_state(%struct.TYPE_13__*, i64*) #1

declare dso_local i64 @IS_QLA84XX(%struct.qla_hw_data*) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_13__*, i32, i8*, ...) #1

declare dso_local i32 @qla84xx_init_chip(%struct.TYPE_13__*) #1

declare dso_local i32 @qla2x00_get_retry_cnt(%struct.TYPE_13__*, i32*, i32*, i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
