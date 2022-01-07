; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_isr.c_qla2x00_mbx_iocb_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_isr.c_qla2x00_mbx_iocb_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.req_que = type { i32 }
%struct.mbx_entry = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_14__, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i8*, i64, i32 (i32*, %struct.TYPE_15__*, i32)*, i32, %struct.TYPE_16__*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.srb_iocb }
%struct.srb_iocb = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32*, i32 }

@__const.qla2x00_mbx_iocb_entry.func = private unnamed_addr constant [9 x i8] c"MBX-IOCB\00", align 1
@MBS_COMMAND_ERROR = common dso_local global i32 0, align 4
@SRB_LOGIN_RETRIED = common dso_local global i32 0, align 4
@QLA_LOGIO_LOGIN_RETRIED = common dso_local global i32 0, align 4
@ql_dbg_async = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [108 x i8] c"Async-%s error entry - hdl=%x portid=%02x%02x%02x entry-status=%x status=%x state-flag=%x status-flags=%x.\0A\00", align 1
@ql_dbg_buffer = common dso_local global i64 0, align 8
@SRB_LOGIN_CMD = common dso_local global i64 0, align 8
@MBS_COMMAND_COMPLETE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"Async-%s complete - hdl=%x portid=%02x%02x%02x mbx1=%x.\0A\00", align 1
@FCT_TARGET = common dso_local global i32 0, align 4
@BIT_0 = common dso_local global i32 0, align 4
@FCT_INITIATOR = common dso_local global i32 0, align 4
@BIT_1 = common dso_local global i32 0, align 4
@FCF_FCP2_DEVICE = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [92 x i8] c"Async-%s failed - hdl=%x portid=%02x%02x%02x status=%x mb0=%x mb1=%x mb2=%x mb6=%x mb7=%x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.req_que*, %struct.mbx_entry*)* @qla2x00_mbx_iocb_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla2x00_mbx_iocb_entry(i32* %0, %struct.req_que* %1, %struct.mbx_entry* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.req_que*, align 8
  %6 = alloca %struct.mbx_entry*, align 8
  %7 = alloca [9 x i8], align 1
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.srb_iocb*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.req_que* %1, %struct.req_que** %5, align 8
  store %struct.mbx_entry* %2, %struct.mbx_entry** %6, align 8
  %14 = bitcast [9 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %14, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @__const.qla2x00_mbx_iocb_entry.func, i32 0, i32 0), i64 9, i1 false)
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %17 = load %struct.req_que*, %struct.req_que** %5, align 8
  %18 = load %struct.mbx_entry*, %struct.mbx_entry** %6, align 8
  %19 = call %struct.TYPE_15__* @qla2x00_get_sp_from_handle(i32* %15, i8* %16, %struct.req_que* %17, %struct.mbx_entry* %18)
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %10, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %21 = icmp ne %struct.TYPE_15__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  br label %276

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
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %12, align 8
  %38 = load i32, i32* @MBS_COMMAND_ERROR, align 4
  %39 = load i32*, i32** %12, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.srb_iocb*, %struct.srb_iocb** %11, align 8
  %42 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
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
  %56 = load %struct.mbx_entry*, %struct.mbx_entry** %6, align 8
  %57 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %56, i32 0, i32 8
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %105

60:                                               ; preds = %52
  %61 = load i64, i64* @ql_dbg_async, align 8
  %62 = load i32*, i32** %4, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.mbx_entry*, %struct.mbx_entry** %6, align 8
  %83 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %82, i32 0, i32 8
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.mbx_entry*, %struct.mbx_entry** %6, align 8
  %86 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @le16_to_cpu(i32 %87)
  %89 = load %struct.mbx_entry*, %struct.mbx_entry** %6, align 8
  %90 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %89, i32 0, i32 7
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @le16_to_cpu(i32 %91)
  %93 = load %struct.mbx_entry*, %struct.mbx_entry** %6, align 8
  %94 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @le16_to_cpu(i32 %95)
  %97 = call i32 (i64, i32*, i32, i8*, i8*, i32, i32, i32, i32, i32, ...) @ql_dbg(i64 %61, i32* %62, i32 20547, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str, i64 0, i64 0), i8* %63, i32 %66, i32 %71, i32 %76, i32 %81, i32 %84, i32 %88, i32 %92, i32 %96)
  %98 = load i64, i64* @ql_dbg_async, align 8
  %99 = load i64, i64* @ql_dbg_buffer, align 8
  %100 = add nsw i64 %98, %99
  %101 = load i32*, i32** %4, align 8
  %102 = load %struct.mbx_entry*, %struct.mbx_entry** %6, align 8
  %103 = bitcast %struct.mbx_entry* %102 to i32*
  %104 = call i32 @ql_dump_buffer(i64 %100, i32* %101, i32 20521, i32* %103, i32 36)
  br label %269

105:                                              ; preds = %52
  %106 = load %struct.mbx_entry*, %struct.mbx_entry** %6, align 8
  %107 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @le16_to_cpu(i32 %108)
  store i32 %109, i32* %13, align 4
  %110 = load i32, i32* %13, align 4
  %111 = icmp eq i32 %110, 48
  br i1 %111, label %112, label %126

112:                                              ; preds = %105
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @SRB_LOGIN_CMD, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %126

118:                                              ; preds = %112
  %119 = load %struct.mbx_entry*, %struct.mbx_entry** %6, align 8
  %120 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @le16_to_cpu(i32 %121)
  %123 = load i32, i32* @MBS_COMMAND_COMPLETE, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %118
  store i32 0, i32* %13, align 4
  br label %126

126:                                              ; preds = %125, %118, %112, %105
  %127 = load i32, i32* %13, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %203, label %129

129:                                              ; preds = %126
  %130 = load %struct.mbx_entry*, %struct.mbx_entry** %6, align 8
  %131 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @le16_to_cpu(i32 %132)
  %134 = load i32, i32* @MBS_COMMAND_COMPLETE, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %203

136:                                              ; preds = %129
  %137 = load i64, i64* @ql_dbg_async, align 8
  %138 = load i32*, i32** %4, align 8
  %139 = load i8*, i8** %8, align 8
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.mbx_entry*, %struct.mbx_entry** %6, align 8
  %159 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @le16_to_cpu(i32 %160)
  %162 = call i32 (i64, i32*, i32, i8*, i8*, i32, i32, i32, i32, i32, ...) @ql_dbg(i64 %137, i32* %138, i32 20549, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i8* %139, i32 %142, i32 %147, i32 %152, i32 %157, i32 %161)
  %163 = load i32, i32* @MBS_COMMAND_COMPLETE, align 4
  %164 = load i32*, i32** %12, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 0
  store i32 %163, i32* %165, align 4
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @SRB_LOGIN_CMD, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %202

171:                                              ; preds = %136
  %172 = load i32, i32* @FCT_TARGET, align 4
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 2
  store i32 %172, i32* %174, align 4
  %175 = load %struct.mbx_entry*, %struct.mbx_entry** %6, align 8
  %176 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @le16_to_cpu(i32 %177)
  %179 = load i32, i32* @BIT_0, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %171
  %183 = load i32, i32* @FCT_INITIATOR, align 4
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 2
  store i32 %183, i32* %185, align 4
  br label %201

186:                                              ; preds = %171
  %187 = load %struct.mbx_entry*, %struct.mbx_entry** %6, align 8
  %188 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @le16_to_cpu(i32 %189)
  %191 = load i32, i32* @BIT_1, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %186
  %195 = load i32, i32* @FCF_FCP2_DEVICE, align 4
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = or i32 %198, %195
  store i32 %199, i32* %197, align 4
  br label %200

200:                                              ; preds = %194, %186
  br label %201

201:                                              ; preds = %200, %182
  br label %202

202:                                              ; preds = %201, %136
  br label %269

203:                                              ; preds = %129, %126
  %204 = load %struct.mbx_entry*, %struct.mbx_entry** %6, align 8
  %205 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @le16_to_cpu(i32 %206)
  %208 = load i32*, i32** %12, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 0
  store i32 %207, i32* %209, align 4
  %210 = load i32*, i32** %12, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 0
  %212 = load i32, i32* %211, align 4
  switch i32 %212, label %221 [
    i32 128, label %213
    i32 129, label %220
  ]

213:                                              ; preds = %203
  %214 = load %struct.mbx_entry*, %struct.mbx_entry** %6, align 8
  %215 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @le16_to_cpu(i32 %216)
  %218 = load i32*, i32** %12, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 1
  store i32 %217, i32* %219, align 4
  br label %225

220:                                              ; preds = %203
  br label %225

221:                                              ; preds = %203
  %222 = load i32, i32* @MBS_COMMAND_ERROR, align 4
  %223 = load i32*, i32** %12, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 0
  store i32 %222, i32* %224, align 4
  br label %225

225:                                              ; preds = %221, %220, %213
  %226 = load i32, i32* @ql_log_warn, align 4
  %227 = load i32*, i32** %4, align 8
  %228 = load i8*, i8** %8, align 8
  %229 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %230 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* %13, align 4
  %248 = load %struct.mbx_entry*, %struct.mbx_entry** %6, align 8
  %249 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %248, i32 0, i32 4
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @le16_to_cpu(i32 %250)
  %252 = load %struct.mbx_entry*, %struct.mbx_entry** %6, align 8
  %253 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @le16_to_cpu(i32 %254)
  %256 = load %struct.mbx_entry*, %struct.mbx_entry** %6, align 8
  %257 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @le16_to_cpu(i32 %258)
  %260 = load %struct.mbx_entry*, %struct.mbx_entry** %6, align 8
  %261 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @le16_to_cpu(i32 %262)
  %264 = load %struct.mbx_entry*, %struct.mbx_entry** %6, align 8
  %265 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @le16_to_cpu(i32 %266)
  %268 = call i32 @ql_log(i32 %226, i32* %227, i32 20550, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.2, i64 0, i64 0), i8* %228, i32 %231, i32 %236, i32 %241, i32 %246, i32 %247, i32 %251, i32 %255, i32 %259, i32 %263, i32 %267)
  br label %269

269:                                              ; preds = %225, %202, %60
  %270 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %271 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %270, i32 0, i32 2
  %272 = load i32 (i32*, %struct.TYPE_15__*, i32)*, i32 (i32*, %struct.TYPE_15__*, i32)** %271, align 8
  %273 = load i32*, i32** %4, align 8
  %274 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %275 = call i32 %272(i32* %273, %struct.TYPE_15__* %274, i32 0)
  br label %276

276:                                              ; preds = %269, %22
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_15__* @qla2x00_get_sp_from_handle(i32*, i8*, %struct.req_que*, %struct.mbx_entry*) #2

declare dso_local i32 @ql_dbg(i64, i32*, i32, i8*, i8*, i32, i32, i32, i32, i32, ...) #2

declare dso_local i32 @le16_to_cpu(i32) #2

declare dso_local i32 @ql_dump_buffer(i64, i32*, i32, i32*, i32) #2

declare dso_local i32 @ql_log(i32, i32*, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
