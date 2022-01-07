; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_need_reset_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_need_reset_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_12__, %struct.qla_hw_data* }
%struct.TYPE_12__ = type { i64 }
%struct.qla_hw_data = type { i32, i64, %struct.TYPE_14__, %struct.TYPE_13__*, %struct.req_que** }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*, i32)* }
%struct.req_que = type { i32 }

@QLA82XX_CRB_DRV_ACTIVE = common dso_local global i32 0, align 4
@ql_dbg_p3p = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"reset_acknowledged by 0x%x\0A\00", align 1
@QLA82XX_DRV_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"active_mask: 0x%08x\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@QLA82XX_CRB_DRV_STATE = common dso_local global i32 0, align 4
@QLA82XX_CRB_DEV_STATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [79 x i8] c"drv_state: 0x%08x, drv_active: 0x%08x, dev_state: 0x%08x, active_mask: 0x%08x\0A\00", align 1
@QLA8XXX_DEV_INITIALIZING = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"Reset timeout.\0A\00", align 1
@ql_log_info = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Device state is 0x%x = %s.\0A\00", align 1
@MAX_STATES = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@QLA8XXX_DEV_COLD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"HW State: COLD/RE-INIT.\0A\00", align 1
@ql2xmdenable = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [25 x i8] c"Minidump not collected.\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"Minidump disabled.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*)* @qla82xx_need_reset_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla82xx_need_reset_handler(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.qla_hw_data*, align 8
  %9 = alloca %struct.req_que*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  %12 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  store %struct.qla_hw_data* %12, %struct.qla_hw_data** %8, align 8
  %13 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %14 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %13, i32 0, i32 4
  %15 = load %struct.req_que**, %struct.req_que*** %14, align 8
  %16 = getelementptr inbounds %struct.req_que*, %struct.req_que** %15, i64 0
  %17 = load %struct.req_que*, %struct.req_que** %16, align 8
  store %struct.req_que* %17, %struct.req_que** %9, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %1
  %24 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %25 = call i32 @qla82xx_idc_unlock(%struct.qla_hw_data* %24)
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %27 = call i32 @qla2x00_abort_isp_cleanup(%struct.TYPE_15__* %26)
  %28 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %29 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %28, i32 0, i32 3
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 1
  %32 = load i32 (%struct.TYPE_15__*, i32)*, i32 (%struct.TYPE_15__*, i32)** %31, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %34 = load %struct.req_que*, %struct.req_que** %9, align 8
  %35 = getelementptr inbounds %struct.req_que, %struct.req_que* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 %32(%struct.TYPE_15__* %33, i32 %36)
  %38 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %39 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %38, i32 0, i32 3
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %41, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %44 = call i32 %42(%struct.TYPE_15__* %43)
  %45 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %46 = call i32 @qla82xx_idc_lock(%struct.qla_hw_data* %45)
  br label %47

47:                                               ; preds = %23, %1
  %48 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %49 = load i32, i32* @QLA82XX_CRB_DRV_ACTIVE, align 4
  %50 = call i32 @qla82xx_rd_32(%struct.qla_hw_data* %48, i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %52 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %47
  %57 = load i32, i32* @ql_dbg_p3p, align 4
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %59 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %60 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (i32, %struct.TYPE_15__*, i32, i8*, i32, ...) @ql_dbg(i32 %57, %struct.TYPE_15__* %58, i32 45096, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %64 = call i32 @qla82xx_set_rst_ready(%struct.qla_hw_data* %63)
  br label %80

65:                                               ; preds = %47
  %66 = load i32, i32* @QLA82XX_DRV_ACTIVE, align 4
  %67 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %68 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = mul nsw i32 %69, 4
  %71 = shl i32 %66, %70
  %72 = xor i32 %71, -1
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %5, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* @ql_dbg_p3p, align 4
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i32 (i32, %struct.TYPE_15__*, i32, i8*, i32, ...) @ql_dbg(i32 %76, %struct.TYPE_15__* %77, i32 45097, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %65, %56
  %81 = load i64, i64* @jiffies, align 8
  %82 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %83 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @HZ, align 8
  %86 = mul i64 %84, %85
  %87 = add i64 %81, %86
  store i64 %87, i64* %7, align 8
  %88 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %89 = load i32, i32* @QLA82XX_CRB_DRV_STATE, align 4
  %90 = call i32 @qla82xx_rd_32(%struct.qla_hw_data* %88, i32 %89)
  store i32 %90, i32* %4, align 4
  %91 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %92 = load i32, i32* @QLA82XX_CRB_DRV_ACTIVE, align 4
  %93 = call i32 @qla82xx_rd_32(%struct.qla_hw_data* %91, i32 %92)
  store i32 %93, i32* %5, align 4
  %94 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %95 = load i32, i32* @QLA82XX_CRB_DEV_STATE, align 4
  %96 = call i32 @qla82xx_rd_32(%struct.qla_hw_data* %94, i32 %95)
  store i32 %96, i32* %3, align 4
  %97 = load i32, i32* @ql_dbg_p3p, align 4
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* %3, align 4
  %102 = load i32, i32* %6, align 4
  %103 = call i32 (i32, %struct.TYPE_15__*, i32, i8*, i32, ...) @ql_dbg(i32 %97, %struct.TYPE_15__* %98, i32 45098, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0), i32 %99, i32 %100, i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %144, %80
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* %5, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = load i32, i32* %3, align 4
  %110 = load i32, i32* @QLA8XXX_DEV_INITIALIZING, align 4
  %111 = icmp ne i32 %109, %110
  br label %112

112:                                              ; preds = %108, %104
  %113 = phi i1 [ false, %104 ], [ %111, %108 ]
  br i1 %113, label %114, label %148

114:                                              ; preds = %112
  %115 = load i64, i64* @jiffies, align 8
  %116 = load i64, i64* %7, align 8
  %117 = call i64 @time_after_eq(i64 %115, i64 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load i32, i32* @ql_log_warn, align 4
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %122 = call i32 (i32, %struct.TYPE_15__*, i32, i8*, ...) @ql_log(i32 %120, %struct.TYPE_15__* %121, i32 181, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %148

123:                                              ; preds = %114
  %124 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %125 = call i32 @qla82xx_idc_unlock(%struct.qla_hw_data* %124)
  %126 = call i32 @msleep(i32 1000)
  %127 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %128 = call i32 @qla82xx_idc_lock(%struct.qla_hw_data* %127)
  %129 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %130 = load i32, i32* @QLA82XX_CRB_DRV_STATE, align 4
  %131 = call i32 @qla82xx_rd_32(%struct.qla_hw_data* %129, i32 %130)
  store i32 %131, i32* %4, align 4
  %132 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %133 = load i32, i32* @QLA82XX_CRB_DRV_ACTIVE, align 4
  %134 = call i32 @qla82xx_rd_32(%struct.qla_hw_data* %132, i32 %133)
  store i32 %134, i32* %5, align 4
  %135 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %136 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %123
  %141 = load i32, i32* %6, align 4
  %142 = load i32, i32* %5, align 4
  %143 = and i32 %142, %141
  store i32 %143, i32* %5, align 4
  br label %144

144:                                              ; preds = %140, %123
  %145 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %146 = load i32, i32* @QLA82XX_CRB_DEV_STATE, align 4
  %147 = call i32 @qla82xx_rd_32(%struct.qla_hw_data* %145, i32 %146)
  store i32 %147, i32* %3, align 4
  br label %104

148:                                              ; preds = %119, %112
  %149 = load i32, i32* @ql_dbg_p3p, align 4
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %151 = load i32, i32* %4, align 4
  %152 = load i32, i32* %5, align 4
  %153 = load i32, i32* %3, align 4
  %154 = load i32, i32* %6, align 4
  %155 = call i32 (i32, %struct.TYPE_15__*, i32, i8*, i32, ...) @ql_dbg(i32 %149, %struct.TYPE_15__* %150, i32 45099, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0), i32 %151, i32 %152, i32 %153, i32 %154)
  %156 = load i32, i32* @ql_log_info, align 4
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %158 = load i32, i32* %3, align 4
  %159 = load i32, i32* %3, align 4
  %160 = load i32, i32* @MAX_STATES, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %148
  %163 = load i32, i32* %3, align 4
  %164 = call i8* @qdev_state(i32 %163)
  br label %166

165:                                              ; preds = %148
  br label %166

166:                                              ; preds = %165, %162
  %167 = phi i8* [ %164, %162 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), %165 ]
  %168 = call i32 (i32, %struct.TYPE_15__*, i32, i8*, ...) @ql_log(i32 %156, %struct.TYPE_15__* %157, i32 182, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %158, i8* %167)
  %169 = load i32, i32* %3, align 4
  %170 = load i32, i32* @QLA8XXX_DEV_INITIALIZING, align 4
  %171 = icmp ne i32 %169, %170
  br i1 %171, label %172, label %202

172:                                              ; preds = %166
  %173 = load i32, i32* %3, align 4
  %174 = load i32, i32* @QLA8XXX_DEV_COLD, align 4
  %175 = icmp ne i32 %173, %174
  br i1 %175, label %176, label %202

176:                                              ; preds = %172
  %177 = load i32, i32* @ql_log_info, align 4
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %179 = call i32 (i32, %struct.TYPE_15__*, i32, i8*, ...) @ql_log(i32 %177, %struct.TYPE_15__* %178, i32 183, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %180 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %181 = load i32, i32* @QLA82XX_CRB_DEV_STATE, align 4
  %182 = load i32, i32* @QLA8XXX_DEV_COLD, align 4
  %183 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %180, i32 %181, i32 %182)
  %184 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %185 = call i32 @qla82xx_set_rst_ready(%struct.qla_hw_data* %184)
  %186 = load i64, i64* @ql2xmdenable, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %197

188:                                              ; preds = %176
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %190 = call i64 @qla82xx_md_collect(%struct.TYPE_15__* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %188
  %193 = load i32, i32* @ql_log_warn, align 4
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %195 = call i32 (i32, %struct.TYPE_15__*, i32, i8*, ...) @ql_log(i32 %193, %struct.TYPE_15__* %194, i32 45100, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  br label %196

196:                                              ; preds = %192, %188
  br label %201

197:                                              ; preds = %176
  %198 = load i32, i32* @ql_log_warn, align 4
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %200 = call i32 (i32, %struct.TYPE_15__*, i32, i8*, ...) @ql_log(i32 %198, %struct.TYPE_15__* %199, i32 45135, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  br label %201

201:                                              ; preds = %197, %196
  br label %202

202:                                              ; preds = %201, %172, %166
  ret void
}

declare dso_local i32 @qla82xx_idc_unlock(%struct.qla_hw_data*) #1

declare dso_local i32 @qla2x00_abort_isp_cleanup(%struct.TYPE_15__*) #1

declare dso_local i32 @qla82xx_idc_lock(%struct.qla_hw_data*) #1

declare dso_local i32 @qla82xx_rd_32(%struct.qla_hw_data*, i32) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_15__*, i32, i8*, i32, ...) #1

declare dso_local i32 @qla82xx_set_rst_ready(%struct.qla_hw_data*) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_15__*, i32, i8*, ...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i8* @qdev_state(i32) #1

declare dso_local i32 @qla82xx_wr_32(%struct.qla_hw_data*, i32, i32) #1

declare dso_local i64 @qla82xx_md_collect(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
