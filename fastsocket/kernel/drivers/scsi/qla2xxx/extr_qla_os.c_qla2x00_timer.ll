; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_14__, %struct.qla_hw_data* }
%struct.TYPE_14__ = type { i64 }
%struct.qla_hw_data = type { i32, i32, %struct.req_que**, i32, %struct.TYPE_13__ }
%struct.req_que = type { i32, %struct.TYPE_15__** }
%struct.TYPE_15__ = type { i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_13__ = type { i64 }

@ql_dbg_timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"EEH = %d, restarting timer.\0A\00", align 1
@WATCH_INTERVAL = common dso_local global i32 0, align 4
@PCI_VENDOR_ID = common dso_local global i32 0, align 4
@ISP_QUIESCE_NEEDED = common dso_local global i32 0, align 4
@ABORT_ISP_ACTIVE = common dso_local global i32 0, align 4
@FCOE_CTX_RESET_NEEDED = common dso_local global i32 0, align 4
@ql_log_info = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Loop down - aborting the queues before time expires.\0A\00", align 1
@LOOP_DEAD = common dso_local global i32 0, align 4
@SRB_SCSI_CMD = common dso_local global i64 0, align 8
@FCF_FCP2_DEVICE = common dso_local global i32 0, align 4
@ISP_ABORT_NEEDED = common dso_local global i32 0, align 4
@DFLG_NO_CABLE = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Loop down - aborting ISP.\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Loop down - seconds remaining %d.\0A\00", align 1
@BEACON_BLINK_NEEDED = common dso_local global i32 0, align 4
@LOOP_RESYNC_NEEDED = common dso_local global i32 0, align 4
@FCPORT_UPDATE_NEEDED = common dso_local global i32 0, align 4
@RESET_MARKER_NEEDED = common dso_local global i32 0, align 4
@ISP_UNRECOVERABLE = common dso_local global i32 0, align 4
@VP_DPC_NEEDED = common dso_local global i32 0, align 4
@RELOGIN_NEEDED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [102 x i8] c"isp_abort_needed=%d loop_resync_needed=%d fcport_update_needed=%d start_dpc=%d reset_marker_needed=%d\00", align 1
@.str.5 = private unnamed_addr constant [106 x i8] c"beacon_blink_needed=%d isp_unrecoverable=%d fcoe_ctx_reset_needed=%d vp_dpc_needed=%d relogin_needed=%d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla2x00_timer(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qla_hw_data*, align 8
  %9 = alloca %struct.req_que*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  store i64 0, i64* %3, align 8
  store i32 0, i32* %4, align 4
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 9
  %13 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  store %struct.qla_hw_data* %13, %struct.qla_hw_data** %8, align 8
  %14 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %15 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %1
  %20 = load i32, i32* @ql_dbg_timer, align 4
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %22 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %23 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 (i32, %struct.TYPE_16__*, i32, i8*, i32, ...) @ql_dbg(i32 %20, %struct.TYPE_16__* %21, i32 24576, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %29 = load i32, i32* @WATCH_INTERVAL, align 4
  %30 = call i32 @qla2x00_restart_timer(%struct.TYPE_16__* %28, i32 %29)
  br label %376

31:                                               ; preds = %1
  %32 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %33 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @pci_channel_offline(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %39 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @PCI_VENDOR_ID, align 4
  %42 = call i32 @pci_read_config_word(i32 %40, i32 %41, i32* %7)
  br label %43

43:                                               ; preds = %37, %31
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %64, label %48

48:                                               ; preds = %43
  %49 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %50 = call i64 @IS_QLA82XX(%struct.qla_hw_data* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %48
  %53 = load i32, i32* @ISP_QUIESCE_NEEDED, align 4
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 2
  %56 = call i32 @test_bit(i32 %53, i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %58, %52
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %63 = call i32 @qla82xx_watchdog(%struct.TYPE_16__* %62)
  br label %64

64:                                               ; preds = %61, %48, %43
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %64
  %70 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %71 = call i64 @IS_QLAFX00(%struct.qla_hw_data* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %75 = call i32 @qlafx00_timer_routine(%struct.TYPE_16__* %74)
  br label %76

76:                                               ; preds = %73, %69, %64
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 5
  %79 = call i64 @atomic_read(i32* %78)
  %80 = icmp sgt i64 %79, 0
  br i1 %80, label %81, label %239

81:                                               ; preds = %76
  %82 = load i32, i32* @ABORT_ISP_ACTIVE, align 4
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 2
  %85 = call i32 @test_bit(i32 %82, i32* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %239, label %87

87:                                               ; preds = %81
  %88 = load i32, i32* @FCOE_CTX_RESET_NEEDED, align 4
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 2
  %91 = call i32 @test_bit(i32 %88, i32* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %239, label %93

93:                                               ; preds = %87
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %239

99:                                               ; preds = %93
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 5
  %102 = call i64 @atomic_read(i32* %101)
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %102, %105
  br i1 %106, label %107, label %200

107:                                              ; preds = %99
  %108 = load i32, i32* @ql_log_info, align 4
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %110 = call i32 @ql_log(i32 %108, %struct.TYPE_16__* %109, i32 24584, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %111 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %112 = call i32 @IS_QLA2100(%struct.qla_hw_data* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %124, label %114

114:                                              ; preds = %107
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 7
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %114
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 6
  %122 = load i32, i32* @LOOP_DEAD, align 4
  %123 = call i32 @atomic_set(i32* %121, i32 %122)
  br label %124

124:                                              ; preds = %119, %114, %107
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %197, label %129

129:                                              ; preds = %124
  %130 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %131 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %130, i32 0, i32 1
  %132 = load i64, i64* %3, align 8
  %133 = call i32 @spin_lock_irqsave(i32* %131, i64 %132)
  %134 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %135 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %134, i32 0, i32 2
  %136 = load %struct.req_que**, %struct.req_que*** %135, align 8
  %137 = getelementptr inbounds %struct.req_que*, %struct.req_que** %136, i64 0
  %138 = load %struct.req_que*, %struct.req_que** %137, align 8
  store %struct.req_que* %138, %struct.req_que** %9, align 8
  store i32 1, i32* %5, align 4
  br label %139

139:                                              ; preds = %189, %129
  %140 = load i32, i32* %5, align 4
  %141 = load %struct.req_que*, %struct.req_que** %9, align 8
  %142 = getelementptr inbounds %struct.req_que, %struct.req_que* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp slt i32 %140, %143
  br i1 %144, label %145, label %192

145:                                              ; preds = %139
  %146 = load %struct.req_que*, %struct.req_que** %9, align 8
  %147 = getelementptr inbounds %struct.req_que, %struct.req_que* %146, i32 0, i32 1
  %148 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %147, align 8
  %149 = load i32, i32* %5, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %148, i64 %150
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %151, align 8
  store %struct.TYPE_15__* %152, %struct.TYPE_15__** %6, align 8
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %154 = icmp ne %struct.TYPE_15__* %153, null
  br i1 %154, label %156, label %155

155:                                              ; preds = %145
  br label %189

156:                                              ; preds = %145
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @SRB_SCSI_CMD, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %156
  br label %189

163:                                              ; preds = %156
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 1
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %165, align 8
  store %struct.TYPE_17__* %166, %struct.TYPE_17__** %10, align 8
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @FCF_FCP2_DEVICE, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %163
  br label %189

174:                                              ; preds = %163
  %175 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %176 = call i64 @IS_QLA82XX(%struct.qla_hw_data* %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %174
  %179 = load i32, i32* @FCOE_CTX_RESET_NEEDED, align 4
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 2
  %182 = call i32 @set_bit(i32 %179, i32* %181)
  br label %188

183:                                              ; preds = %174
  %184 = load i32, i32* @ISP_ABORT_NEEDED, align 4
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 2
  %187 = call i32 @set_bit(i32 %184, i32* %186)
  br label %188

188:                                              ; preds = %183, %178
  br label %192

189:                                              ; preds = %173, %162, %155
  %190 = load i32, i32* %5, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %5, align 4
  br label %139

192:                                              ; preds = %188, %139
  %193 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %194 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %193, i32 0, i32 1
  %195 = load i64, i64* %3, align 8
  %196 = call i32 @spin_unlock_irqrestore(i32* %194, i64 %195)
  br label %197

197:                                              ; preds = %192, %124
  %198 = load i32, i32* %4, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %4, align 4
  br label %200

200:                                              ; preds = %197, %99
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 5
  %203 = call i64 @atomic_dec_and_test(i32* %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %231

205:                                              ; preds = %200
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @DFLG_NO_CABLE, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %230, label %212

212:                                              ; preds = %205
  %213 = load i32, i32* @ql_log_warn, align 4
  %214 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %215 = call i32 @ql_log(i32 %213, %struct.TYPE_16__* %214, i32 24585, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %216 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %217 = call i64 @IS_QLA82XX(%struct.qla_hw_data* %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %224

219:                                              ; preds = %212
  %220 = load i32, i32* @FCOE_CTX_RESET_NEEDED, align 4
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 2
  %223 = call i32 @set_bit(i32 %220, i32* %222)
  br label %229

224:                                              ; preds = %212
  %225 = load i32, i32* @ISP_ABORT_NEEDED, align 4
  %226 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %226, i32 0, i32 2
  %228 = call i32 @set_bit(i32 %225, i32* %227)
  br label %229

229:                                              ; preds = %224, %219
  br label %230

230:                                              ; preds = %229, %205
  br label %231

231:                                              ; preds = %230, %200
  %232 = load i32, i32* @ql_dbg_timer, align 4
  %233 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %234 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i32 0, i32 5
  %236 = call i64 @atomic_read(i32* %235)
  %237 = trunc i64 %236 to i32
  %238 = call i32 (i32, %struct.TYPE_16__*, i32, i8*, i32, ...) @ql_dbg(i32 %232, %struct.TYPE_16__* %233, i32 24586, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %237)
  br label %239

239:                                              ; preds = %231, %93, %87, %81, %76
  %240 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %240, i32 0, i32 4
  %242 = load i32, i32* %241, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %261, label %244

244:                                              ; preds = %239
  %245 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %246 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = icmp eq i32 %247, 1
  br i1 %248, label %249, label %261

249:                                              ; preds = %244
  %250 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %251 = call i64 @IS_QLA82XX(%struct.qla_hw_data* %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %260, label %253

253:                                              ; preds = %249
  %254 = load i32, i32* @BEACON_BLINK_NEEDED, align 4
  %255 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %256 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %255, i32 0, i32 2
  %257 = call i32 @set_bit(i32 %254, i32* %256)
  %258 = load i32, i32* %4, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %4, align 4
  br label %260

260:                                              ; preds = %253, %249
  br label %261

261:                                              ; preds = %260, %244, %239
  %262 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %263 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %262, i32 0, i32 3
  %264 = call i32 @list_empty(i32* %263)
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %269, label %266

266:                                              ; preds = %261
  %267 = load i32, i32* %4, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %4, align 4
  br label %269

269:                                              ; preds = %266, %261
  %270 = load i32, i32* @ISP_ABORT_NEEDED, align 4
  %271 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %272 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %271, i32 0, i32 2
  %273 = call i32 @test_bit(i32 %270, i32* %272)
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %326, label %275

275:                                              ; preds = %269
  %276 = load i32, i32* @LOOP_RESYNC_NEEDED, align 4
  %277 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %278 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %277, i32 0, i32 2
  %279 = call i32 @test_bit(i32 %276, i32* %278)
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %326, label %281

281:                                              ; preds = %275
  %282 = load i32, i32* @FCPORT_UPDATE_NEEDED, align 4
  %283 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %284 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %283, i32 0, i32 2
  %285 = call i32 @test_bit(i32 %282, i32* %284)
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %326, label %287

287:                                              ; preds = %281
  %288 = load i32, i32* %4, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %326, label %290

290:                                              ; preds = %287
  %291 = load i32, i32* @RESET_MARKER_NEEDED, align 4
  %292 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %293 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %292, i32 0, i32 2
  %294 = call i32 @test_bit(i32 %291, i32* %293)
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %326, label %296

296:                                              ; preds = %290
  %297 = load i32, i32* @BEACON_BLINK_NEEDED, align 4
  %298 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %299 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %298, i32 0, i32 2
  %300 = call i32 @test_bit(i32 %297, i32* %299)
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %326, label %302

302:                                              ; preds = %296
  %303 = load i32, i32* @ISP_UNRECOVERABLE, align 4
  %304 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %305 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %304, i32 0, i32 2
  %306 = call i32 @test_bit(i32 %303, i32* %305)
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %326, label %308

308:                                              ; preds = %302
  %309 = load i32, i32* @FCOE_CTX_RESET_NEEDED, align 4
  %310 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %311 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %310, i32 0, i32 2
  %312 = call i32 @test_bit(i32 %309, i32* %311)
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %326, label %314

314:                                              ; preds = %308
  %315 = load i32, i32* @VP_DPC_NEEDED, align 4
  %316 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %317 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %316, i32 0, i32 2
  %318 = call i32 @test_bit(i32 %315, i32* %317)
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %326, label %320

320:                                              ; preds = %314
  %321 = load i32, i32* @RELOGIN_NEEDED, align 4
  %322 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %323 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %322, i32 0, i32 2
  %324 = call i32 @test_bit(i32 %321, i32* %323)
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %372

326:                                              ; preds = %320, %314, %308, %302, %296, %290, %287, %281, %275, %269
  %327 = load i32, i32* @ql_dbg_timer, align 4
  %328 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %329 = load i32, i32* @ISP_ABORT_NEEDED, align 4
  %330 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %331 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %330, i32 0, i32 2
  %332 = call i32 @test_bit(i32 %329, i32* %331)
  %333 = load i32, i32* @LOOP_RESYNC_NEEDED, align 4
  %334 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %335 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %334, i32 0, i32 2
  %336 = call i32 @test_bit(i32 %333, i32* %335)
  %337 = load i32, i32* @FCPORT_UPDATE_NEEDED, align 4
  %338 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %339 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %338, i32 0, i32 2
  %340 = call i32 @test_bit(i32 %337, i32* %339)
  %341 = load i32, i32* %4, align 4
  %342 = load i32, i32* @RESET_MARKER_NEEDED, align 4
  %343 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %344 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %343, i32 0, i32 2
  %345 = call i32 @test_bit(i32 %342, i32* %344)
  %346 = call i32 (i32, %struct.TYPE_16__*, i32, i8*, i32, ...) @ql_dbg(i32 %327, %struct.TYPE_16__* %328, i32 24587, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.4, i64 0, i64 0), i32 %332, i32 %336, i32 %340, i32 %341, i32 %345)
  %347 = load i32, i32* @ql_dbg_timer, align 4
  %348 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %349 = load i32, i32* @BEACON_BLINK_NEEDED, align 4
  %350 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %351 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %350, i32 0, i32 2
  %352 = call i32 @test_bit(i32 %349, i32* %351)
  %353 = load i32, i32* @ISP_UNRECOVERABLE, align 4
  %354 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %355 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %354, i32 0, i32 2
  %356 = call i32 @test_bit(i32 %353, i32* %355)
  %357 = load i32, i32* @FCOE_CTX_RESET_NEEDED, align 4
  %358 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %359 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %358, i32 0, i32 2
  %360 = call i32 @test_bit(i32 %357, i32* %359)
  %361 = load i32, i32* @VP_DPC_NEEDED, align 4
  %362 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %363 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %362, i32 0, i32 2
  %364 = call i32 @test_bit(i32 %361, i32* %363)
  %365 = load i32, i32* @RELOGIN_NEEDED, align 4
  %366 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %367 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %366, i32 0, i32 2
  %368 = call i32 @test_bit(i32 %365, i32* %367)
  %369 = call i32 (i32, %struct.TYPE_16__*, i32, i8*, i32, ...) @ql_dbg(i32 %347, %struct.TYPE_16__* %348, i32 24588, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.5, i64 0, i64 0), i32 %352, i32 %356, i32 %360, i32 %364, i32 %368)
  %370 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %371 = call i32 @qla2xxx_wake_dpc(%struct.TYPE_16__* %370)
  br label %372

372:                                              ; preds = %326, %320
  %373 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %374 = load i32, i32* @WATCH_INTERVAL, align 4
  %375 = call i32 @qla2x00_restart_timer(%struct.TYPE_16__* %373, i32 %374)
  br label %376

376:                                              ; preds = %372, %19
  ret void
}

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_16__*, i32, i8*, i32, ...) #1

declare dso_local i32 @qla2x00_restart_timer(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @pci_channel_offline(i32) #1

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i64 @IS_QLA82XX(%struct.qla_hw_data*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @qla82xx_watchdog(%struct.TYPE_16__*) #1

declare dso_local i64 @IS_QLAFX00(%struct.qla_hw_data*) #1

declare dso_local i32 @qlafx00_timer_routine(%struct.TYPE_16__*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_16__*, i32, i8*) #1

declare dso_local i32 @IS_QLA2100(%struct.qla_hw_data*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @qla2xxx_wake_dpc(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
