; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_isr.c_qla24xx_logio_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_isr.c_qla24xx_logio_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.req_que = type { i32 }
%struct.logio_entry_24xx = type { i64*, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_14__, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i8*, i64, i32 (i32*, %struct.TYPE_15__*, i32)*, i32, %struct.TYPE_16__*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.srb_iocb }
%struct.srb_iocb = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32* }

@__const.qla24xx_logio_entry.func = private unnamed_addr constant [11 x i8] c"LOGIO-IOCB\00", align 1
@MBS_COMMAND_ERROR = common dso_local global i32 0, align 4
@SRB_LOGIN_RETRIED = common dso_local global i32 0, align 4
@QLA_LOGIO_LOGIN_RETRIED = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"Async-%s error entry - hdl=%xportid=%02x%02x%02x entry-status=%x.\0A\00", align 1
@ql_dbg_async = common dso_local global i64 0, align 8
@ql_dbg_buffer = common dso_local global i64 0, align 8
@CS_COMPLETE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [57 x i8] c"Async-%s complete - hdl=%x portid=%02x%02x%02x iop0=%x.\0A\00", align 1
@MBS_COMMAND_COMPLETE = common dso_local global i32 0, align 4
@SRB_LOGIN_CMD = common dso_local global i64 0, align 8
@BIT_4 = common dso_local global i32 0, align 4
@FCT_TARGET = common dso_local global i32 0, align 4
@BIT_8 = common dso_local global i32 0, align 4
@FCF_FCP2_DEVICE = common dso_local global i32 0, align 4
@BIT_5 = common dso_local global i32 0, align 4
@FCT_INITIATOR = common dso_local global i32 0, align 4
@FC_COS_CLASS2 = common dso_local global i32 0, align 4
@FC_COS_CLASS3 = common dso_local global i32 0, align 4
@MBS_PORT_ID_USED = common dso_local global i32 0, align 4
@MBS_LOOP_ID_USED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [71 x i8] c"Async-%s failed - hdl=%x portid=%02x%02x%02x comp=%x iop0=%x iop1=%x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.req_que*, %struct.logio_entry_24xx*)* @qla24xx_logio_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla24xx_logio_entry(i32* %0, %struct.req_que* %1, %struct.logio_entry_24xx* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.req_que*, align 8
  %6 = alloca %struct.logio_entry_24xx*, align 8
  %7 = alloca [11 x i8], align 1
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.srb_iocb*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca [2 x i32], align 4
  store i32* %0, i32** %4, align 8
  store %struct.req_que* %1, %struct.req_que** %5, align 8
  store %struct.logio_entry_24xx* %2, %struct.logio_entry_24xx** %6, align 8
  %14 = bitcast [11 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %14, i8* align 1 getelementptr inbounds ([11 x i8], [11 x i8]* @__const.qla24xx_logio_entry.func, i32 0, i32 0), i64 11, i1 false)
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds [11 x i8], [11 x i8]* %7, i64 0, i64 0
  %17 = load %struct.req_que*, %struct.req_que** %5, align 8
  %18 = load %struct.logio_entry_24xx*, %struct.logio_entry_24xx** %6, align 8
  %19 = call %struct.TYPE_15__* @qla2x00_get_sp_from_handle(i32* %15, i8* %16, %struct.req_que* %17, %struct.logio_entry_24xx* %18)
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %10, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %21 = icmp ne %struct.TYPE_15__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  br label %306

23:                                               ; preds = %3
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  store %struct.srb_iocb* %26, %struct.srb_iocb** %11, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %8, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 4
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %31, align 8
  store %struct.TYPE_16__* %32, %struct.TYPE_16__** %9, align 8
  %33 = load %struct.srb_iocb*, %struct.srb_iocb** %11, align 8
  %34 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %12, align 8
  %38 = load i32, i32* @MBS_COMMAND_ERROR, align 4
  %39 = load i32*, i32** %12, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.srb_iocb*, %struct.srb_iocb** %11, align 8
  %42 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @SRB_LOGIN_RETRIED, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %23
  %50 = load i32, i32* @QLA_LOGIO_LOGIN_RETRIED, align 4
  br label %52

51:                                               ; preds = %23
  br label %52

52:                                               ; preds = %51, %49
  %53 = phi i32 [ %50, %49 ], [ 0, %51 ]
  %54 = load i32*, i32** %12, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.logio_entry_24xx*, %struct.logio_entry_24xx** %6, align 8
  %57 = getelementptr inbounds %struct.logio_entry_24xx, %struct.logio_entry_24xx* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %95

60:                                               ; preds = %52
  %61 = load i32, i32* @ql_log_warn, align 4
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i8*, i8** %8, align 8
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.logio_entry_24xx*, %struct.logio_entry_24xx** %6, align 8
  %85 = getelementptr inbounds %struct.logio_entry_24xx, %struct.logio_entry_24xx* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @ql_log(i32 %61, i32 %64, i32 20532, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i8* %65, i32 %68, i32 %73, i32 %78, i32 %83, i32 %86)
  %88 = load i64, i64* @ql_dbg_async, align 8
  %89 = load i64, i64* @ql_dbg_buffer, align 8
  %90 = add nsw i64 %88, %89
  %91 = load i32*, i32** %4, align 8
  %92 = load %struct.logio_entry_24xx*, %struct.logio_entry_24xx** %6, align 8
  %93 = bitcast %struct.logio_entry_24xx* %92 to i32*
  %94 = call i32 @ql_dump_buffer(i64 %90, i32* %91, i32 20557, i32* %93, i32 16)
  br label %299

95:                                               ; preds = %52
  %96 = load %struct.logio_entry_24xx*, %struct.logio_entry_24xx** %6, align 8
  %97 = getelementptr inbounds %struct.logio_entry_24xx, %struct.logio_entry_24xx* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i64 @le16_to_cpu(i32 %98)
  %100 = load i64, i64* @CS_COMPLETE, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %224

102:                                              ; preds = %95
  %103 = load i64, i64* @ql_dbg_async, align 8
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i8*, i8** %8, align 8
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.logio_entry_24xx*, %struct.logio_entry_24xx** %6, align 8
  %127 = getelementptr inbounds %struct.logio_entry_24xx, %struct.logio_entry_24xx* %126, i32 0, i32 0
  %128 = load i64*, i64** %127, align 8
  %129 = getelementptr inbounds i64, i64* %128, i64 0
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @le32_to_cpu(i64 %130)
  %132 = sext i32 %131 to i64
  %133 = call i32 (i64, i32, i32, i8*, i8*, i32, i32, i32, i32, i64, ...) @ql_dbg(i64 %103, i32 %106, i32 20534, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i8* %107, i32 %110, i32 %115, i32 %120, i32 %125, i64 %132)
  %134 = load i32, i32* @MBS_COMMAND_COMPLETE, align 4
  %135 = load i32*, i32** %12, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  store i32 %134, i32* %136, align 4
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @SRB_LOGIN_CMD, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %102
  br label %299

143:                                              ; preds = %102
  %144 = load %struct.logio_entry_24xx*, %struct.logio_entry_24xx** %6, align 8
  %145 = getelementptr inbounds %struct.logio_entry_24xx, %struct.logio_entry_24xx* %144, i32 0, i32 0
  %146 = load i64*, i64** %145, align 8
  %147 = getelementptr inbounds i64, i64* %146, i64 0
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @le32_to_cpu(i64 %148)
  %150 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  store i32 %149, i32* %150, align 4
  %151 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @BIT_4, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %172

156:                                              ; preds = %143
  %157 = load i32, i32* @FCT_TARGET, align 4
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 3
  store i32 %157, i32* %159, align 4
  %160 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @BIT_8, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %156
  %166 = load i32, i32* @FCF_FCP2_DEVICE, align 4
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 4
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 4
  br label %171

171:                                              ; preds = %165, %156
  br label %183

172:                                              ; preds = %143
  %173 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @BIT_5, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %172
  %179 = load i32, i32* @FCT_INITIATOR, align 4
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 3
  store i32 %179, i32* %181, align 4
  br label %182

182:                                              ; preds = %178, %172
  br label %183

183:                                              ; preds = %182, %171
  %184 = load %struct.logio_entry_24xx*, %struct.logio_entry_24xx** %6, align 8
  %185 = getelementptr inbounds %struct.logio_entry_24xx, %struct.logio_entry_24xx* %184, i32 0, i32 0
  %186 = load i64*, i64** %185, align 8
  %187 = getelementptr inbounds i64, i64* %186, i64 7
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %197, label %190

190:                                              ; preds = %183
  %191 = load %struct.logio_entry_24xx*, %struct.logio_entry_24xx** %6, align 8
  %192 = getelementptr inbounds %struct.logio_entry_24xx, %struct.logio_entry_24xx* %191, i32 0, i32 0
  %193 = load i64*, i64** %192, align 8
  %194 = getelementptr inbounds i64, i64* %193, i64 8
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %203

197:                                              ; preds = %190, %183
  %198 = load i32, i32* @FC_COS_CLASS2, align 4
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = or i32 %201, %198
  store i32 %202, i32* %200, align 4
  br label %203

203:                                              ; preds = %197, %190
  %204 = load %struct.logio_entry_24xx*, %struct.logio_entry_24xx** %6, align 8
  %205 = getelementptr inbounds %struct.logio_entry_24xx, %struct.logio_entry_24xx* %204, i32 0, i32 0
  %206 = load i64*, i64** %205, align 8
  %207 = getelementptr inbounds i64, i64* %206, i64 9
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %217, label %210

210:                                              ; preds = %203
  %211 = load %struct.logio_entry_24xx*, %struct.logio_entry_24xx** %6, align 8
  %212 = getelementptr inbounds %struct.logio_entry_24xx, %struct.logio_entry_24xx* %211, i32 0, i32 0
  %213 = load i64*, i64** %212, align 8
  %214 = getelementptr inbounds i64, i64* %213, i64 10
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %223

217:                                              ; preds = %210, %203
  %218 = load i32, i32* @FC_COS_CLASS3, align 4
  %219 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = or i32 %221, %218
  store i32 %222, i32* %220, align 4
  br label %223

223:                                              ; preds = %217, %210
  br label %299

224:                                              ; preds = %95
  %225 = load %struct.logio_entry_24xx*, %struct.logio_entry_24xx** %6, align 8
  %226 = getelementptr inbounds %struct.logio_entry_24xx, %struct.logio_entry_24xx* %225, i32 0, i32 0
  %227 = load i64*, i64** %226, align 8
  %228 = getelementptr inbounds i64, i64* %227, i64 0
  %229 = load i64, i64* %228, align 8
  %230 = call i32 @le32_to_cpu(i64 %229)
  %231 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  store i32 %230, i32* %231, align 4
  %232 = load %struct.logio_entry_24xx*, %struct.logio_entry_24xx** %6, align 8
  %233 = getelementptr inbounds %struct.logio_entry_24xx, %struct.logio_entry_24xx* %232, i32 0, i32 0
  %234 = load i64*, i64** %233, align 8
  %235 = getelementptr inbounds i64, i64* %234, i64 1
  %236 = load i64, i64* %235, align 8
  %237 = call i32 @le32_to_cpu(i64 %236)
  %238 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  store i32 %237, i32* %238, align 4
  %239 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %240 = load i32, i32* %239, align 4
  switch i32 %240, label %254 [
    i32 128, label %241
    i32 129, label %250
  ]

241:                                              ; preds = %224
  %242 = load i32, i32* @MBS_PORT_ID_USED, align 4
  %243 = load i32*, i32** %12, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 0
  store i32 %242, i32* %244, align 4
  %245 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @LSW(i32 %246)
  %248 = load i32*, i32** %12, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 1
  store i32 %247, i32* %249, align 4
  br label %258

250:                                              ; preds = %224
  %251 = load i32, i32* @MBS_LOOP_ID_USED, align 4
  %252 = load i32*, i32** %12, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 0
  store i32 %251, i32* %253, align 4
  br label %258

254:                                              ; preds = %224
  %255 = load i32, i32* @MBS_COMMAND_ERROR, align 4
  %256 = load i32*, i32** %12, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 0
  store i32 %255, i32* %257, align 4
  br label %258

258:                                              ; preds = %254, %250, %241
  %259 = load i64, i64* @ql_dbg_async, align 8
  %260 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %261 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = load i8*, i8** %8, align 8
  %264 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %265 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 8
  %267 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %268 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %273 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %278 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.logio_entry_24xx*, %struct.logio_entry_24xx** %6, align 8
  %283 = getelementptr inbounds %struct.logio_entry_24xx, %struct.logio_entry_24xx* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 8
  %285 = call i64 @le16_to_cpu(i32 %284)
  %286 = load %struct.logio_entry_24xx*, %struct.logio_entry_24xx** %6, align 8
  %287 = getelementptr inbounds %struct.logio_entry_24xx, %struct.logio_entry_24xx* %286, i32 0, i32 0
  %288 = load i64*, i64** %287, align 8
  %289 = getelementptr inbounds i64, i64* %288, i64 0
  %290 = load i64, i64* %289, align 8
  %291 = call i32 @le32_to_cpu(i64 %290)
  %292 = load %struct.logio_entry_24xx*, %struct.logio_entry_24xx** %6, align 8
  %293 = getelementptr inbounds %struct.logio_entry_24xx, %struct.logio_entry_24xx* %292, i32 0, i32 0
  %294 = load i64*, i64** %293, align 8
  %295 = getelementptr inbounds i64, i64* %294, i64 1
  %296 = load i64, i64* %295, align 8
  %297 = call i32 @le32_to_cpu(i64 %296)
  %298 = call i32 (i64, i32, i32, i8*, i8*, i32, i32, i32, i32, i64, ...) @ql_dbg(i64 %259, i32 %262, i32 20535, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i8* %263, i32 %266, i32 %271, i32 %276, i32 %281, i64 %285, i32 %291, i32 %297)
  br label %299

299:                                              ; preds = %258, %223, %142, %60
  %300 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %301 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %300, i32 0, i32 2
  %302 = load i32 (i32*, %struct.TYPE_15__*, i32)*, i32 (i32*, %struct.TYPE_15__*, i32)** %301, align 8
  %303 = load i32*, i32** %4, align 8
  %304 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %305 = call i32 %302(i32* %303, %struct.TYPE_15__* %304, i32 0)
  br label %306

306:                                              ; preds = %299, %22
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_15__* @qla2x00_get_sp_from_handle(i32*, i8*, %struct.req_que*, %struct.logio_entry_24xx*) #2

declare dso_local i32 @ql_log(i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ql_dump_buffer(i64, i32*, i32, i32*, i32) #2

declare dso_local i64 @le16_to_cpu(i32) #2

declare dso_local i32 @ql_dbg(i64, i32, i32, i8*, i8*, i32, i32, i32, i32, i64, ...) #2

declare dso_local i32 @le32_to_cpu(i64) #2

declare dso_local i32 @LSW(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
