; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_iocb.c_qla24xx_start_scsi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_iocb.c_qla24xx_start_scsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64, %struct.scsi_qla_host*, %struct.TYPE_22__ }
%struct.scsi_qla_host = type { i64, %struct.TYPE_18__, i32, %struct.req_que*, %struct.qla_hw_data* }
%struct.TYPE_18__ = type { i64 }
%struct.req_que = type { i64, i64, i64, i64, i64, i32, i64, i64, i32, %struct.TYPE_15__**, i32* }
%struct.qla_hw_data = type { i32, %struct.TYPE_17__*, %struct.TYPE_20__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, i32, i32 }
%struct.cmd_type_7 = type { i8**, i8*, i8*, i32, i32, i32, i32, i32*, i8*, i8*, i32 }
%struct.rsp_que = type { %struct.TYPE_19__*, i64 }
%struct.TYPE_19__ = type { i64 }
%struct.scsi_cmnd = type { i8*, i32, i32, %struct.TYPE_24__*, i32 }
%struct.TYPE_24__ = type { i32 }

@MK_SYNC_ALL = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i64 0, align 8
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@REQUEST_ENTRY_SIZE = common dso_local global i64 0, align 8
@TSK_HEAD_OF_QUEUE = common dso_local global i32 0, align 4
@TSK_ORDERED = common dso_local global i32 0, align 4
@SRB_DMA_VALID = common dso_local global i32 0, align 4
@RESPONSE_PROCESSED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla24xx_start_scsi(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.cmd_type_7*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.req_que*, align 8
  %15 = alloca %struct.rsp_que*, align 8
  %16 = alloca %struct.scsi_cmnd*, align 8
  %17 = alloca %struct.scsi_qla_host*, align 8
  %18 = alloca %struct.qla_hw_data*, align 8
  %19 = alloca [2 x i8], align 1
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store %struct.req_que* null, %struct.req_que** %14, align 8
  store %struct.rsp_que* null, %struct.rsp_que** %15, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %21 = call %struct.scsi_cmnd* @GET_CMD_SP(%struct.TYPE_15__* %20)
  store %struct.scsi_cmnd* %21, %struct.scsi_cmnd** %16, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 1
  %26 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %25, align 8
  store %struct.scsi_qla_host* %26, %struct.scsi_qla_host** %17, align 8
  %27 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %17, align 8
  %28 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %27, i32 0, i32 4
  %29 = load %struct.qla_hw_data*, %struct.qla_hw_data** %28, align 8
  store %struct.qla_hw_data* %29, %struct.qla_hw_data** %18, align 8
  store i32 0, i32* %4, align 4
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %31 = call i32 @qla25xx_set_que(%struct.TYPE_15__* %30, %struct.rsp_que** %15)
  %32 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %17, align 8
  %33 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %32, i32 0, i32 3
  %34 = load %struct.req_que*, %struct.req_que** %33, align 8
  store %struct.req_que* %34, %struct.req_que** %14, align 8
  store i64 0, i64* %13, align 8
  %35 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %17, align 8
  %36 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %1
  %40 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %17, align 8
  %41 = load %struct.req_que*, %struct.req_que** %14, align 8
  %42 = load %struct.rsp_que*, %struct.rsp_que** %15, align 8
  %43 = load i32, i32* @MK_SYNC_ALL, align 4
  %44 = call i64 @qla2x00_marker(%struct.scsi_qla_host* %40, %struct.req_que* %41, %struct.rsp_que* %42, i32 0, i32 0, i32 %43)
  %45 = load i64, i64* @QLA_SUCCESS, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %48, i32* %2, align 4
  br label %409

49:                                               ; preds = %39
  %50 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %17, align 8
  %51 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %49, %1
  %53 = load %struct.qla_hw_data*, %struct.qla_hw_data** %18, align 8
  %54 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %53, i32 0, i32 0
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @spin_lock_irqsave(i32* %54, i64 %55)
  %57 = load %struct.req_que*, %struct.req_que** %14, align 8
  %58 = getelementptr inbounds %struct.req_que, %struct.req_que* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %9, align 8
  store i64 1, i64* %8, align 8
  br label %60

60:                                               ; preds = %85, %52
  %61 = load i64, i64* %8, align 8
  %62 = load %struct.req_que*, %struct.req_que** %14, align 8
  %63 = getelementptr inbounds %struct.req_que, %struct.req_que* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ult i64 %61, %64
  br i1 %65, label %66, label %88

66:                                               ; preds = %60
  %67 = load i64, i64* %9, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %9, align 8
  %69 = load i64, i64* %9, align 8
  %70 = load %struct.req_que*, %struct.req_que** %14, align 8
  %71 = getelementptr inbounds %struct.req_que, %struct.req_que* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %69, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  store i64 1, i64* %9, align 8
  br label %75

75:                                               ; preds = %74, %66
  %76 = load %struct.req_que*, %struct.req_que** %14, align 8
  %77 = getelementptr inbounds %struct.req_que, %struct.req_que* %76, i32 0, i32 9
  %78 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %77, align 8
  %79 = load i64, i64* %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %78, i64 %79
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %80, align 8
  %82 = icmp ne %struct.TYPE_15__* %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %75
  br label %88

84:                                               ; preds = %75
  br label %85

85:                                               ; preds = %84
  %86 = load i64, i64* %8, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %8, align 8
  br label %60

88:                                               ; preds = %83, %60
  %89 = load i64, i64* %8, align 8
  %90 = load %struct.req_que*, %struct.req_que** %14, align 8
  %91 = getelementptr inbounds %struct.req_que, %struct.req_que* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %89, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %397

95:                                               ; preds = %88
  %96 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %16, align 8
  %97 = call i64 @scsi_sg_count(%struct.scsi_cmnd* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %120

99:                                               ; preds = %95
  %100 = load %struct.qla_hw_data*, %struct.qla_hw_data** %18, align 8
  %101 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %100, i32 0, i32 2
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 0
  %104 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %16, align 8
  %105 = call i32 @scsi_sglist(%struct.scsi_cmnd* %104)
  %106 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %16, align 8
  %107 = call i64 @scsi_sg_count(%struct.scsi_cmnd* %106)
  %108 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %16, align 8
  %109 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @dma_map_sg(i32* %103, i32 %105, i64 %107, i32 %110)
  store i32 %111, i32* %5, align 4
  %112 = load i32, i32* %5, align 4
  %113 = icmp ne i32 %112, 0
  %114 = xor i1 %113, true
  %115 = zext i1 %114 to i32
  %116 = call i64 @unlikely(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %99
  br label %397

119:                                              ; preds = %99
  br label %121

120:                                              ; preds = %95
  store i32 0, i32* %5, align 4
  br label %121

121:                                              ; preds = %120, %119
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  store i64 %123, i64* %13, align 8
  %124 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %17, align 8
  %125 = load i64, i64* %13, align 8
  %126 = call i64 @qla24xx_calc_iocbs(%struct.scsi_qla_host* %124, i64 %125)
  store i64 %126, i64* %12, align 8
  %127 = load %struct.req_que*, %struct.req_que** %14, align 8
  %128 = getelementptr inbounds %struct.req_que, %struct.req_que* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* %12, align 8
  %131 = add nsw i64 %130, 2
  %132 = icmp slt i64 %129, %131
  br i1 %132, label %133, label %172

133:                                              ; preds = %121
  %134 = load %struct.req_que*, %struct.req_que** %14, align 8
  %135 = getelementptr inbounds %struct.req_que, %struct.req_que* %134, i32 0, i32 10
  %136 = load i32*, i32** %135, align 8
  %137 = call i64 @RD_REG_DWORD_RELAXED(i32* %136)
  store i64 %137, i64* %11, align 8
  %138 = load %struct.req_que*, %struct.req_que** %14, align 8
  %139 = getelementptr inbounds %struct.req_que, %struct.req_que* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* %11, align 8
  %142 = icmp slt i64 %140, %141
  br i1 %142, label %143, label %151

143:                                              ; preds = %133
  %144 = load i64, i64* %11, align 8
  %145 = load %struct.req_que*, %struct.req_que** %14, align 8
  %146 = getelementptr inbounds %struct.req_que, %struct.req_que* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = sub nsw i64 %144, %147
  %149 = load %struct.req_que*, %struct.req_que** %14, align 8
  %150 = getelementptr inbounds %struct.req_que, %struct.req_que* %149, i32 0, i32 2
  store i64 %148, i64* %150, align 8
  br label %163

151:                                              ; preds = %133
  %152 = load %struct.req_que*, %struct.req_que** %14, align 8
  %153 = getelementptr inbounds %struct.req_que, %struct.req_que* %152, i32 0, i32 4
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.req_que*, %struct.req_que** %14, align 8
  %156 = getelementptr inbounds %struct.req_que, %struct.req_que* %155, i32 0, i32 3
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* %11, align 8
  %159 = sub nsw i64 %157, %158
  %160 = sub nsw i64 %154, %159
  %161 = load %struct.req_que*, %struct.req_que** %14, align 8
  %162 = getelementptr inbounds %struct.req_que, %struct.req_que* %161, i32 0, i32 2
  store i64 %160, i64* %162, align 8
  br label %163

163:                                              ; preds = %151, %143
  %164 = load %struct.req_que*, %struct.req_que** %14, align 8
  %165 = getelementptr inbounds %struct.req_que, %struct.req_que* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* %12, align 8
  %168 = add nsw i64 %167, 2
  %169 = icmp slt i64 %166, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %163
  br label %397

171:                                              ; preds = %163
  br label %172

172:                                              ; preds = %171, %121
  %173 = load i64, i64* %9, align 8
  %174 = load %struct.req_que*, %struct.req_que** %14, align 8
  %175 = getelementptr inbounds %struct.req_que, %struct.req_que* %174, i32 0, i32 0
  store i64 %173, i64* %175, align 8
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %177 = load %struct.req_que*, %struct.req_que** %14, align 8
  %178 = getelementptr inbounds %struct.req_que, %struct.req_que* %177, i32 0, i32 9
  %179 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %178, align 8
  %180 = load i64, i64* %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %179, i64 %180
  store %struct.TYPE_15__* %176, %struct.TYPE_15__** %181, align 8
  %182 = load i64, i64* %9, align 8
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 0
  store i64 %182, i64* %184, align 8
  %185 = load i64, i64* %9, align 8
  %186 = inttoptr i64 %185 to i8*
  %187 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %16, align 8
  %188 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %187, i32 0, i32 0
  store i8* %186, i8** %188, align 8
  %189 = load i64, i64* %12, align 8
  %190 = load %struct.req_que*, %struct.req_que** %14, align 8
  %191 = getelementptr inbounds %struct.req_que, %struct.req_que* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = sub nsw i64 %192, %189
  store i64 %193, i64* %191, align 8
  %194 = load %struct.req_que*, %struct.req_que** %14, align 8
  %195 = getelementptr inbounds %struct.req_que, %struct.req_que* %194, i32 0, i32 6
  %196 = load i64, i64* %195, align 8
  %197 = inttoptr i64 %196 to %struct.cmd_type_7*
  store %struct.cmd_type_7* %197, %struct.cmd_type_7** %10, align 8
  %198 = load %struct.req_que*, %struct.req_que** %14, align 8
  %199 = getelementptr inbounds %struct.req_que, %struct.req_que* %198, i32 0, i32 8
  %200 = load i32, i32* %199, align 8
  %201 = load i64, i64* %9, align 8
  %202 = call i32 @MAKE_HANDLE(i32 %200, i64 %201)
  %203 = load %struct.cmd_type_7*, %struct.cmd_type_7** %10, align 8
  %204 = getelementptr inbounds %struct.cmd_type_7, %struct.cmd_type_7* %203, i32 0, i32 10
  store i32 %202, i32* %204, align 8
  %205 = load %struct.cmd_type_7*, %struct.cmd_type_7** %10, align 8
  %206 = bitcast %struct.cmd_type_7* %205 to i64*
  %207 = getelementptr inbounds i64, i64* %206, i64 2
  store i64* %207, i64** %7, align 8
  %208 = load i64*, i64** %7, align 8
  %209 = load i64, i64* @REQUEST_ENTRY_SIZE, align 8
  %210 = sub nsw i64 %209, 8
  %211 = call i32 @memset(i64* %208, i32 0, i64 %210)
  %212 = load i64, i64* %13, align 8
  %213 = call i8* @cpu_to_le16(i64 %212)
  %214 = load %struct.cmd_type_7*, %struct.cmd_type_7** %10, align 8
  %215 = getelementptr inbounds %struct.cmd_type_7, %struct.cmd_type_7* %214, i32 0, i32 9
  store i8* %213, i8** %215, align 8
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i32 0, i32 2
  %218 = load %struct.TYPE_23__*, %struct.TYPE_23__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = call i8* @cpu_to_le16(i64 %220)
  %222 = load %struct.cmd_type_7*, %struct.cmd_type_7** %10, align 8
  %223 = getelementptr inbounds %struct.cmd_type_7, %struct.cmd_type_7* %222, i32 0, i32 8
  store i8* %221, i8** %223, align 8
  %224 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %224, i32 0, i32 2
  %226 = load %struct.TYPE_23__*, %struct.TYPE_23__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %226, i32 0, i32 2
  %228 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.cmd_type_7*, %struct.cmd_type_7** %10, align 8
  %232 = getelementptr inbounds %struct.cmd_type_7, %struct.cmd_type_7* %231, i32 0, i32 7
  %233 = load i32*, i32** %232, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 0
  store i32 %230, i32* %234, align 4
  %235 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %235, i32 0, i32 2
  %237 = load %struct.TYPE_23__*, %struct.TYPE_23__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.cmd_type_7*, %struct.cmd_type_7** %10, align 8
  %243 = getelementptr inbounds %struct.cmd_type_7, %struct.cmd_type_7* %242, i32 0, i32 7
  %244 = load i32*, i32** %243, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 1
  store i32 %241, i32* %245, align 4
  %246 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %246, i32 0, i32 2
  %248 = load %struct.TYPE_23__*, %struct.TYPE_23__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %248, i32 0, i32 2
  %250 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.cmd_type_7*, %struct.cmd_type_7** %10, align 8
  %254 = getelementptr inbounds %struct.cmd_type_7, %struct.cmd_type_7* %253, i32 0, i32 7
  %255 = load i32*, i32** %254, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 2
  store i32 %252, i32* %256, align 4
  %257 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %258 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %257, i32 0, i32 2
  %259 = load %struct.TYPE_23__*, %struct.TYPE_23__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %259, i32 0, i32 1
  %261 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %260, align 8
  %262 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = load %struct.cmd_type_7*, %struct.cmd_type_7** %10, align 8
  %265 = getelementptr inbounds %struct.cmd_type_7, %struct.cmd_type_7* %264, i32 0, i32 6
  store i32 %263, i32* %265, align 4
  %266 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %16, align 8
  %267 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %266, i32 0, i32 3
  %268 = load %struct.TYPE_24__*, %struct.TYPE_24__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.cmd_type_7*, %struct.cmd_type_7** %10, align 8
  %272 = getelementptr inbounds %struct.cmd_type_7, %struct.cmd_type_7* %271, i32 0, i32 5
  %273 = call i32 @int_to_scsilun(i32 %270, i32* %272)
  %274 = load %struct.cmd_type_7*, %struct.cmd_type_7** %10, align 8
  %275 = getelementptr inbounds %struct.cmd_type_7, %struct.cmd_type_7* %274, i32 0, i32 5
  %276 = bitcast i32* %275 to i8**
  %277 = call i32 @host_to_fcp_swap(i8** %276, i32 4)
  %278 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %16, align 8
  %279 = getelementptr inbounds [2 x i8], [2 x i8]* %19, i64 0, i64 0
  %280 = call i64 @scsi_populate_tag_msg(%struct.scsi_cmnd* %278, i8* %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %295

282:                                              ; preds = %172
  %283 = getelementptr inbounds [2 x i8], [2 x i8]* %19, i64 0, i64 0
  %284 = load i8, i8* %283, align 1
  %285 = sext i8 %284 to i32
  switch i32 %285, label %294 [
    i32 129, label %286
    i32 128, label %290
  ]

286:                                              ; preds = %282
  %287 = load i32, i32* @TSK_HEAD_OF_QUEUE, align 4
  %288 = load %struct.cmd_type_7*, %struct.cmd_type_7** %10, align 8
  %289 = getelementptr inbounds %struct.cmd_type_7, %struct.cmd_type_7* %288, i32 0, i32 4
  store i32 %287, i32* %289, align 4
  br label %294

290:                                              ; preds = %282
  %291 = load i32, i32* @TSK_ORDERED, align 4
  %292 = load %struct.cmd_type_7*, %struct.cmd_type_7** %10, align 8
  %293 = getelementptr inbounds %struct.cmd_type_7, %struct.cmd_type_7* %292, i32 0, i32 4
  store i32 %291, i32* %293, align 4
  br label %294

294:                                              ; preds = %282, %290, %286
  br label %295

295:                                              ; preds = %294, %172
  %296 = load %struct.cmd_type_7*, %struct.cmd_type_7** %10, align 8
  %297 = getelementptr inbounds %struct.cmd_type_7, %struct.cmd_type_7* %296, i32 0, i32 0
  %298 = load i8**, i8*** %297, align 8
  %299 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %16, align 8
  %300 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %16, align 8
  %303 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 8
  %305 = call i32 @memcpy(i8** %298, i32 %301, i32 %304)
  %306 = load %struct.cmd_type_7*, %struct.cmd_type_7** %10, align 8
  %307 = getelementptr inbounds %struct.cmd_type_7, %struct.cmd_type_7* %306, i32 0, i32 0
  %308 = load i8**, i8*** %307, align 8
  %309 = call i32 @host_to_fcp_swap(i8** %308, i32 8)
  %310 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %16, align 8
  %311 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %310)
  %312 = call i32 @cpu_to_le32(i64 %311)
  %313 = load %struct.cmd_type_7*, %struct.cmd_type_7** %10, align 8
  %314 = getelementptr inbounds %struct.cmd_type_7, %struct.cmd_type_7* %313, i32 0, i32 3
  store i32 %312, i32* %314, align 8
  %315 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %316 = load %struct.cmd_type_7*, %struct.cmd_type_7** %10, align 8
  %317 = load i64, i64* %13, align 8
  %318 = call i32 @qla24xx_build_scsi_iocbs(%struct.TYPE_15__* %315, %struct.cmd_type_7* %316, i64 %317)
  %319 = load i64, i64* %12, align 8
  %320 = inttoptr i64 %319 to i8*
  %321 = load %struct.cmd_type_7*, %struct.cmd_type_7** %10, align 8
  %322 = getelementptr inbounds %struct.cmd_type_7, %struct.cmd_type_7* %321, i32 0, i32 2
  store i8* %320, i8** %322, align 8
  %323 = load %struct.rsp_que*, %struct.rsp_que** %15, align 8
  %324 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %323, i32 0, i32 1
  %325 = load i64, i64* %324, align 8
  %326 = inttoptr i64 %325 to i8*
  %327 = load %struct.cmd_type_7*, %struct.cmd_type_7** %10, align 8
  %328 = getelementptr inbounds %struct.cmd_type_7, %struct.cmd_type_7* %327, i32 0, i32 1
  store i8* %326, i8** %328, align 8
  %329 = call i32 (...) @wmb()
  %330 = load %struct.req_que*, %struct.req_que** %14, align 8
  %331 = getelementptr inbounds %struct.req_que, %struct.req_que* %330, i32 0, i32 3
  %332 = load i64, i64* %331, align 8
  %333 = add nsw i64 %332, 1
  store i64 %333, i64* %331, align 8
  %334 = load %struct.req_que*, %struct.req_que** %14, align 8
  %335 = getelementptr inbounds %struct.req_que, %struct.req_que* %334, i32 0, i32 3
  %336 = load i64, i64* %335, align 8
  %337 = load %struct.req_que*, %struct.req_que** %14, align 8
  %338 = getelementptr inbounds %struct.req_que, %struct.req_que* %337, i32 0, i32 4
  %339 = load i64, i64* %338, align 8
  %340 = icmp eq i64 %336, %339
  br i1 %340, label %341, label %349

341:                                              ; preds = %295
  %342 = load %struct.req_que*, %struct.req_que** %14, align 8
  %343 = getelementptr inbounds %struct.req_que, %struct.req_que* %342, i32 0, i32 3
  store i64 0, i64* %343, align 8
  %344 = load %struct.req_que*, %struct.req_que** %14, align 8
  %345 = getelementptr inbounds %struct.req_que, %struct.req_que* %344, i32 0, i32 7
  %346 = load i64, i64* %345, align 8
  %347 = load %struct.req_que*, %struct.req_que** %14, align 8
  %348 = getelementptr inbounds %struct.req_que, %struct.req_que* %347, i32 0, i32 6
  store i64 %346, i64* %348, align 8
  br label %354

349:                                              ; preds = %295
  %350 = load %struct.req_que*, %struct.req_que** %14, align 8
  %351 = getelementptr inbounds %struct.req_que, %struct.req_que* %350, i32 0, i32 6
  %352 = load i64, i64* %351, align 8
  %353 = add nsw i64 %352, 1
  store i64 %353, i64* %351, align 8
  br label %354

354:                                              ; preds = %349, %341
  %355 = load i32, i32* @SRB_DMA_VALID, align 4
  %356 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %357 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 8
  %359 = or i32 %358, %355
  store i32 %359, i32* %357, align 8
  %360 = load %struct.req_que*, %struct.req_que** %14, align 8
  %361 = getelementptr inbounds %struct.req_que, %struct.req_que* %360, i32 0, i32 5
  %362 = load i32, i32* %361, align 8
  %363 = load %struct.req_que*, %struct.req_que** %14, align 8
  %364 = getelementptr inbounds %struct.req_que, %struct.req_que* %363, i32 0, i32 3
  %365 = load i64, i64* %364, align 8
  %366 = call i32 @WRT_REG_DWORD(i32 %362, i64 %365)
  %367 = load %struct.qla_hw_data*, %struct.qla_hw_data** %18, align 8
  %368 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %367, i32 0, i32 1
  %369 = load %struct.TYPE_17__*, %struct.TYPE_17__** %368, align 8
  %370 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %369, i32 0, i32 0
  %371 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %370, i32 0, i32 0
  %372 = call i64 @RD_REG_DWORD_RELAXED(i32* %371)
  %373 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %17, align 8
  %374 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %373, i32 0, i32 1
  %375 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %374, i32 0, i32 0
  %376 = load i64, i64* %375, align 8
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %390

378:                                              ; preds = %354
  %379 = load %struct.rsp_que*, %struct.rsp_que** %15, align 8
  %380 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %379, i32 0, i32 0
  %381 = load %struct.TYPE_19__*, %struct.TYPE_19__** %380, align 8
  %382 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %381, i32 0, i32 0
  %383 = load i64, i64* %382, align 8
  %384 = load i64, i64* @RESPONSE_PROCESSED, align 8
  %385 = icmp ne i64 %383, %384
  br i1 %385, label %386, label %390

386:                                              ; preds = %378
  %387 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %17, align 8
  %388 = load %struct.rsp_que*, %struct.rsp_que** %15, align 8
  %389 = call i32 @qla24xx_process_response_queue(%struct.scsi_qla_host* %387, %struct.rsp_que* %388)
  br label %390

390:                                              ; preds = %386, %378, %354
  %391 = load %struct.qla_hw_data*, %struct.qla_hw_data** %18, align 8
  %392 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %391, i32 0, i32 0
  %393 = load i64, i64* %6, align 8
  %394 = call i32 @spin_unlock_irqrestore(i32* %392, i64 %393)
  %395 = load i64, i64* @QLA_SUCCESS, align 8
  %396 = trunc i64 %395 to i32
  store i32 %396, i32* %2, align 4
  br label %409

397:                                              ; preds = %170, %118, %94
  %398 = load i64, i64* %13, align 8
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %400, label %403

400:                                              ; preds = %397
  %401 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %16, align 8
  %402 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %401)
  br label %403

403:                                              ; preds = %400, %397
  %404 = load %struct.qla_hw_data*, %struct.qla_hw_data** %18, align 8
  %405 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %404, i32 0, i32 0
  %406 = load i64, i64* %6, align 8
  %407 = call i32 @spin_unlock_irqrestore(i32* %405, i64 %406)
  %408 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %408, i32* %2, align 4
  br label %409

409:                                              ; preds = %403, %390, %47
  %410 = load i32, i32* %2, align 4
  ret i32 %410
}

declare dso_local %struct.scsi_cmnd* @GET_CMD_SP(%struct.TYPE_15__*) #1

declare dso_local i32 @qla25xx_set_que(%struct.TYPE_15__*, %struct.rsp_que**) #1

declare dso_local i64 @qla2x00_marker(%struct.scsi_qla_host*, %struct.req_que*, %struct.rsp_que*, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @scsi_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @dma_map_sg(i32*, i32, i64, i32) #1

declare dso_local i32 @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @qla24xx_calc_iocbs(%struct.scsi_qla_host*, i64) #1

declare dso_local i64 @RD_REG_DWORD_RELAXED(i32*) #1

declare dso_local i32 @MAKE_HANDLE(i32, i64) #1

declare dso_local i32 @memset(i64*, i32, i64) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @int_to_scsilun(i32, i32*) #1

declare dso_local i32 @host_to_fcp_swap(i8**, i32) #1

declare dso_local i64 @scsi_populate_tag_msg(%struct.scsi_cmnd*, i8*) #1

declare dso_local i32 @memcpy(i8**, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i64 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @qla24xx_build_scsi_iocbs(%struct.TYPE_15__*, %struct.cmd_type_7*, i64) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @WRT_REG_DWORD(i32, i64) #1

declare dso_local i32 @qla24xx_process_response_queue(%struct.scsi_qla_host*, %struct.rsp_que*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @scsi_dma_unmap(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
