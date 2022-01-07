; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_wd33c93.c_wd33c93_abort.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_wd33c93.c_wd33c93_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, %struct.TYPE_2__*, i32*, i32, {}* }
%struct.TYPE_2__ = type { i64, i32, %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32, i32, i64 }
%struct.WD33C93_hostdata = type { i64, i32*, i64, i32, %struct.scsi_cmnd*, i32 (%struct.Scsi_Host.0*, %struct.scsi_cmnd*, i32)*, %struct.scsi_cmnd*, i32 }
%struct.Scsi_Host.0 = type opaque

@DID_ABORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"scsi%d: Abort - removing command %ld from input_Q. \00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"scsi%d: Aborting connected command %ld - \00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"stopping DMA - \00", align 1
@D_DMA_RUNNING = common dso_local global i64 0, align 8
@D_DMA_OFF = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"sending wd33c93 ABORT command - \00", align 1
@WD_CONTROL = common dso_local global i32 0, align 4
@CTRL_IDI = common dso_local global i32 0, align 4
@CTRL_EDI = common dso_local global i32 0, align 4
@CTRL_POLLED = common dso_local global i32 0, align 4
@WD_CMD_ABORT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"flushing fifo - \00", align 1
@ASR_DBR = common dso_local global i32 0, align 4
@WD_DATA = common dso_local global i32 0, align 4
@ASR_INT = common dso_local global i32 0, align 4
@WD_SCSI_STATUS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [61 x i8] c"asr=%02x, sr=%02x, %ld bytes un-transferred (timeout=%ld) - \00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"sending wd33c93 DISCONNECT command - \00", align 1
@WD_CMD_DISCONNECT = common dso_local global i32 0, align 4
@ASR_CIP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"asr=%02x, sr=%02x.\00", align 1
@S_UNCONNECTED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [55 x i8] c"scsi%d: Abort - command %ld found on disconnected_Q - \00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"Abort SNOOZE. \00", align 1
@FAILED = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [89 x i8] c"scsi%d: warning : SCSI command probably completed successfully         before abortion. \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wd33c93_abort(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.WD33C93_hostdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.scsi_cmnd*, align 8
  %8 = alloca %struct.scsi_cmnd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %13 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %15, align 8
  %17 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @disable_irq(i32 %18)
  %20 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %21 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load %struct.Scsi_Host*, %struct.Scsi_Host** %23, align 8
  store %struct.Scsi_Host* %24, %struct.Scsi_Host** %4, align 8
  %25 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %26 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.WD33C93_hostdata*
  store %struct.WD33C93_hostdata* %28, %struct.WD33C93_hostdata** %5, align 8
  %29 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %5, align 8
  %30 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %6, align 4
  %32 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %5, align 8
  %33 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %32, i32 0, i32 6
  %34 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %33, align 8
  store %struct.scsi_cmnd* %34, %struct.scsi_cmnd** %7, align 8
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %8, align 8
  br label %35

35:                                               ; preds = %87, %1
  %36 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %37 = icmp ne %struct.scsi_cmnd* %36, null
  br i1 %37, label %38, label %93

38:                                               ; preds = %35
  %39 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %40 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %41 = icmp eq %struct.scsi_cmnd* %39, %40
  br i1 %41, label %42, label %87

42:                                               ; preds = %38
  %43 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %44 = icmp ne %struct.scsi_cmnd* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %47 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %50 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %49, i32 0, i32 2
  store i32* %48, i32** %50, align 8
  br label %58

51:                                               ; preds = %42
  %52 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %53 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = bitcast i32* %54 to %struct.scsi_cmnd*
  %56 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %5, align 8
  %57 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %56, i32 0, i32 6
  store %struct.scsi_cmnd* %55, %struct.scsi_cmnd** %57, align 8
  br label %58

58:                                               ; preds = %51, %45
  %59 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %60 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %59, i32 0, i32 2
  store i32* null, i32** %60, align 8
  %61 = load i32, i32* @DID_ABORT, align 4
  %62 = shl i32 %61, 16
  %63 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %64 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %66 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %69 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %70)
  %72 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %73 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  %76 = load %struct.Scsi_Host*, %struct.Scsi_Host** %75, align 8
  %77 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @enable_irq(i32 %78)
  %80 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %81 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %80, i32 0, i32 4
  %82 = bitcast {}** %81 to i32 (%struct.scsi_cmnd*)**
  %83 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %82, align 8
  %84 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %85 = call i32 %83(%struct.scsi_cmnd* %84)
  %86 = load i32, i32* @SUCCESS, align 4
  store i32 %86, i32* %2, align 4
  br label %293

87:                                               ; preds = %38
  %88 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  store %struct.scsi_cmnd* %88, %struct.scsi_cmnd** %8, align 8
  %89 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %90 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = bitcast i32* %91 to %struct.scsi_cmnd*
  store %struct.scsi_cmnd* %92, %struct.scsi_cmnd** %7, align 8
  br label %35

93:                                               ; preds = %35
  %94 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %5, align 8
  %95 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %94, i32 0, i32 4
  %96 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %95, align 8
  %97 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %98 = icmp eq %struct.scsi_cmnd* %96, %97
  br i1 %98, label %99, label %242

99:                                               ; preds = %93
  %100 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %101 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %104 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %102, i32 %105)
  %107 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %108 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %5, align 8
  %109 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @D_DMA_RUNNING, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %124

113:                                              ; preds = %99
  %114 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %5, align 8
  %115 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %114, i32 0, i32 5
  %116 = load i32 (%struct.Scsi_Host.0*, %struct.scsi_cmnd*, i32)*, i32 (%struct.Scsi_Host.0*, %struct.scsi_cmnd*, i32)** %115, align 8
  %117 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %118 = bitcast %struct.Scsi_Host* %117 to %struct.Scsi_Host.0*
  %119 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %120 = call i32 %116(%struct.Scsi_Host.0* %118, %struct.scsi_cmnd* %119, i32 0)
  %121 = load i64, i64* @D_DMA_OFF, align 8
  %122 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %5, align 8
  %123 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %122, i32 0, i32 0
  store i64 %121, i64* %123, align 8
  br label %124

124:                                              ; preds = %113, %99
  %125 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* @WD_CONTROL, align 4
  %128 = load i32, i32* @CTRL_IDI, align 4
  %129 = load i32, i32* @CTRL_EDI, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @CTRL_POLLED, align 4
  %132 = or i32 %130, %131
  %133 = call i32 @write_wd33c93(i32 %126, i32 %127, i32 %132)
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* @WD_CMD_ABORT, align 4
  %136 = call i32 @write_wd33c93_cmd(i32 %134, i32 %135)
  %137 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  store i64 1000000, i64* %11, align 8
  br label %138

138:                                              ; preds = %159, %124
  %139 = load i32, i32* %6, align 4
  %140 = call i32 @read_aux_stat(i32 %139)
  store i32 %140, i32* %10, align 4
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* @ASR_DBR, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %138
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* @WD_DATA, align 4
  %148 = call i32 @read_wd33c93(i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %145, %138
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %10, align 4
  %152 = load i32, i32* @ASR_INT, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %159, label %155

155:                                              ; preds = %150
  %156 = load i64, i64* %11, align 8
  %157 = add i64 %156, -1
  store i64 %157, i64* %11, align 8
  %158 = icmp ugt i64 %156, 0
  br label %159

159:                                              ; preds = %155, %150
  %160 = phi i1 [ false, %150 ], [ %158, %155 ]
  br i1 %160, label %138, label %161

161:                                              ; preds = %159
  %162 = load i32, i32* %6, align 4
  %163 = load i32, i32* @WD_SCSI_STATUS, align 4
  %164 = call i32 @read_wd33c93(i32 %162, i32 %163)
  store i32 %164, i32* %9, align 4
  %165 = load i32, i32* %10, align 4
  %166 = load i32, i32* %9, align 4
  %167 = load i32, i32* %6, align 4
  %168 = call i32 @read_wd33c93_count(i32 %167)
  %169 = load i64, i64* %11, align 8
  %170 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0), i32 %165, i32 %166, i32 %168, i64 %169)
  %171 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %172 = load i32, i32* %6, align 4
  %173 = load i32, i32* @WD_CMD_DISCONNECT, align 4
  %174 = call i32 @write_wd33c93_cmd(i32 %172, i32 %173)
  store i64 1000000, i64* %11, align 8
  %175 = load i32, i32* %6, align 4
  %176 = call i32 @read_aux_stat(i32 %175)
  store i32 %176, i32* %10, align 4
  br label %177

177:                                              ; preds = %188, %161
  %178 = load i32, i32* %10, align 4
  %179 = load i32, i32* @ASR_CIP, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %177
  %183 = load i64, i64* %11, align 8
  %184 = add i64 %183, -1
  store i64 %184, i64* %11, align 8
  %185 = icmp ugt i64 %183, 0
  br label %186

186:                                              ; preds = %182, %177
  %187 = phi i1 [ false, %177 ], [ %185, %182 ]
  br i1 %187, label %188, label %191

188:                                              ; preds = %186
  %189 = load i32, i32* %6, align 4
  %190 = call i32 @read_aux_stat(i32 %189)
  store i32 %190, i32* %10, align 4
  br label %177

191:                                              ; preds = %186
  %192 = load i32, i32* %6, align 4
  %193 = load i32, i32* @WD_SCSI_STATUS, align 4
  %194 = call i32 @read_wd33c93(i32 %192, i32 %193)
  store i32 %194, i32* %9, align 4
  %195 = load i32, i32* %10, align 4
  %196 = load i32, i32* %9, align 4
  %197 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %195, i32 %196)
  %198 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %199 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %198, i32 0, i32 1
  %200 = load %struct.TYPE_2__*, %struct.TYPE_2__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = shl i32 1, %202
  %204 = xor i32 %203, -1
  %205 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %5, align 8
  %206 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %205, i32 0, i32 1
  %207 = load i32*, i32** %206, align 8
  %208 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %209 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %208, i32 0, i32 1
  %210 = load %struct.TYPE_2__*, %struct.TYPE_2__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = getelementptr inbounds i32, i32* %207, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = and i32 %214, %204
  store i32 %215, i32* %213, align 4
  %216 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %5, align 8
  %217 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %216, i32 0, i32 4
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %217, align 8
  %218 = load i32, i32* @S_UNCONNECTED, align 4
  %219 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %5, align 8
  %220 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %219, i32 0, i32 3
  store i32 %218, i32* %220, align 8
  %221 = load i32, i32* @DID_ABORT, align 4
  %222 = shl i32 %221, 16
  %223 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %224 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %223, i32 0, i32 0
  store i32 %222, i32* %224, align 8
  %225 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %226 = call i32 @wd33c93_execute(%struct.Scsi_Host* %225)
  %227 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %228 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %227, i32 0, i32 1
  %229 = load %struct.TYPE_2__*, %struct.TYPE_2__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %229, i32 0, i32 2
  %231 = load %struct.Scsi_Host*, %struct.Scsi_Host** %230, align 8
  %232 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @enable_irq(i32 %233)
  %235 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %236 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %235, i32 0, i32 4
  %237 = bitcast {}** %236 to i32 (%struct.scsi_cmnd*)**
  %238 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %237, align 8
  %239 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %240 = call i32 %238(%struct.scsi_cmnd* %239)
  %241 = load i32, i32* @SUCCESS, align 4
  store i32 %241, i32* %2, align 4
  br label %293

242:                                              ; preds = %93
  %243 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %5, align 8
  %244 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %243, i32 0, i32 2
  %245 = load i64, i64* %244, align 8
  %246 = inttoptr i64 %245 to %struct.scsi_cmnd*
  store %struct.scsi_cmnd* %246, %struct.scsi_cmnd** %7, align 8
  br label %247

247:                                              ; preds = %272, %242
  %248 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %249 = icmp ne %struct.scsi_cmnd* %248, null
  br i1 %249, label %250, label %277

250:                                              ; preds = %247
  %251 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %252 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %253 = icmp eq %struct.scsi_cmnd* %251, %252
  br i1 %253, label %254, label %272

254:                                              ; preds = %250
  %255 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %256 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %259 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %258, i32 0, i32 3
  %260 = load i32, i32* %259, align 8
  %261 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.8, i64 0, i64 0), i32 %257, i32 %260)
  %262 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %263 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %264 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %263, i32 0, i32 1
  %265 = load %struct.TYPE_2__*, %struct.TYPE_2__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %265, i32 0, i32 2
  %267 = load %struct.Scsi_Host*, %struct.Scsi_Host** %266, align 8
  %268 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @enable_irq(i32 %269)
  %271 = load i32, i32* @FAILED, align 4
  store i32 %271, i32* %2, align 4
  br label %293

272:                                              ; preds = %250
  %273 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %274 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %273, i32 0, i32 2
  %275 = load i32*, i32** %274, align 8
  %276 = bitcast i32* %275 to %struct.scsi_cmnd*
  store %struct.scsi_cmnd* %276, %struct.scsi_cmnd** %7, align 8
  br label %247

277:                                              ; preds = %247
  %278 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %279 = call i32 @wd33c93_execute(%struct.Scsi_Host* %278)
  %280 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %281 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %280, i32 0, i32 1
  %282 = load %struct.TYPE_2__*, %struct.TYPE_2__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %282, i32 0, i32 2
  %284 = load %struct.Scsi_Host*, %struct.Scsi_Host** %283, align 8
  %285 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = call i32 @enable_irq(i32 %286)
  %288 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %289 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.10, i64 0, i64 0), i32 %290)
  %292 = load i32, i32* @FAILED, align 4
  store i32 %292, i32* %2, align 4
  br label %293

293:                                              ; preds = %277, %254, %191, %58
  %294 = load i32, i32* %2, align 4
  ret i32 %294
}

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @write_wd33c93(i32, i32, i32) #1

declare dso_local i32 @write_wd33c93_cmd(i32, i32) #1

declare dso_local i32 @read_aux_stat(i32) #1

declare dso_local i32 @read_wd33c93(i32, i32) #1

declare dso_local i32 @read_wd33c93_count(i32) #1

declare dso_local i32 @wd33c93_execute(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
