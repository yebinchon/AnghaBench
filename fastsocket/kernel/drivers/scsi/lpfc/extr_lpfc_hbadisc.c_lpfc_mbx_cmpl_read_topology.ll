; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_mbx_cmpl_read_topology.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_mbx_cmpl_read_topology.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i64, i64, i32, i32, %struct.TYPE_16__, i32, i32, %struct.TYPE_15__*, %struct.TYPE_14__, i32*, i32, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_13__, i64, %struct.lpfc_vport* }
%struct.TYPE_13__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_12__, i64 }
%struct.TYPE_12__ = type { i32 }
%struct.lpfc_vport = type { i32, i32 }
%struct.Scsi_Host = type { i32* }
%struct.lpfc_mbx_read_top = type { i64 }
%struct.lpfc_dmabuf = type { i32, i32 }

@LPFC_STOP_IOCB_EVENT = common dso_local global i32 0, align 4
@LPFC_ELS_RING = common dso_local global i64 0, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_LINK_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"1307 READ_LA mbox error x%x state x%x\0A\00", align 1
@LPFC_HBA_ERROR = common dso_local global i64 0, align 8
@lpfc_mbx_read_top_pb = common dso_local global i32 0, align 4
@FC_BYPASSED_MODE = common dso_local global i32 0, align 4
@lpfc_mbx_read_top_att_type = common dso_local global i32 0, align 4
@LPFC_ATT_LINK_UP = common dso_local global i64 0, align 8
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@lpfc_mbx_read_top_mm = common dso_local global i32 0, align 4
@LPFC_MENLO_MAINT = common dso_local global i32 0, align 4
@LS_LOOPBACK_MODE = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [73 x i8] c"1306 Link Up Event in loop back mode x%x received Data: x%x x%x x%x x%x\0A\00", align 1
@lpfc_mbx_read_top_alpa_granted = common dso_local global i32 0, align 4
@lpfc_mbx_read_top_link_spd = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [66 x i8] c"1303 Link Up Event x%x received Data: x%x x%x x%x x%x x%x x%x %d\0A\00", align 1
@lpfc_mbx_read_top_fa = common dso_local global i32 0, align 4
@LPFC_ATT_LINK_DOWN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [71 x i8] c"1308 Link Down Event in loop back mode x%x received Data: x%x x%x x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"1305 Link Down Event x%x received Data: x%x x%x x%x x%x x%x\0A\00", align 1
@LPFC_LINK_DOWN = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [53 x i8] c"1312 Link Down Event x%x received Data: x%x x%x x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [64 x i8] c"1310 Menlo Maint Mode Link up Event x%x rcvd Data: x%x x%x x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"1311 fa %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_mbx_cmpl_read_topology(%struct.lpfc_hba* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.lpfc_mbx_read_top*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.lpfc_dmabuf*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %4, align 8
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 2
  %12 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  store %struct.lpfc_vport* %12, %struct.lpfc_vport** %5, align 8
  %13 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %14 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %13)
  store %struct.Scsi_Host* %14, %struct.Scsi_Host** %6, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  store %struct.TYPE_17__* %17, %struct.TYPE_17__** %8, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %21, %struct.lpfc_dmabuf** %9, align 8
  %22 = load i32, i32* @LPFC_STOP_IOCB_EVENT, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %25 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %28 = load i64, i64* @LPFC_ELS_RING, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, %23
  store i32 %32, i32* %30, align 4
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %2
  %38 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %39 = load i32, i32* @KERN_INFO, align 4
  %40 = load i32, i32* @LOG_LINK_EVENT, align 4
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %45 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i64, ...) @lpfc_printf_log(%struct.lpfc_hba* %38, i32 %39, i32 %40, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %43, i32 %46)
  %48 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %49 = call i32 @lpfc_mbx_issue_link_down(%struct.lpfc_hba* %48)
  %50 = load i64, i64* @LPFC_HBA_ERROR, align 8
  %51 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %52 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  br label %424

53:                                               ; preds = %2
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = bitcast i32* %58 to %struct.lpfc_mbx_read_top*
  store %struct.lpfc_mbx_read_top* %59, %struct.lpfc_mbx_read_top** %7, align 8
  %60 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %61 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %60, i32 0, i32 10
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %65 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @memcpy(i32* %63, i32 %66, i32 128)
  %68 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %69 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @spin_lock_irq(i32* %70)
  %72 = load i32, i32* @lpfc_mbx_read_top_pb, align 4
  %73 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %7, align 8
  %74 = call i64 @bf_get(i32 %72, %struct.lpfc_mbx_read_top* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %53
  %77 = load i32, i32* @FC_BYPASSED_MODE, align 4
  %78 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %79 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  br label %89

82:                                               ; preds = %53
  %83 = load i32, i32* @FC_BYPASSED_MODE, align 4
  %84 = xor i32 %83, -1
  %85 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %86 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, %84
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %82, %76
  %90 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %91 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @spin_unlock_irq(i32* %92)
  %94 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %95 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %7, align 8
  %98 = getelementptr inbounds %struct.lpfc_mbx_read_top, %struct.lpfc_mbx_read_top* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp sle i64 %96, %99
  br i1 %100, label %101, label %122

101:                                              ; preds = %89
  %102 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %103 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %102, i32 0, i32 9
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 8
  %107 = load i32, i32* @lpfc_mbx_read_top_att_type, align 4
  %108 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %7, align 8
  %109 = call i64 @bf_get(i32 %107, %struct.lpfc_mbx_read_top* %108)
  %110 = load i64, i64* @LPFC_ATT_LINK_UP, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %121

112:                                              ; preds = %101
  %113 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %114 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %112
  %118 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %119 = call i32 @lpfc_linkdown(%struct.lpfc_hba* %118)
  br label %120

120:                                              ; preds = %117, %112
  br label %121

121:                                              ; preds = %120, %101
  br label %122

122:                                              ; preds = %121, %89
  %123 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %7, align 8
  %124 = getelementptr inbounds %struct.lpfc_mbx_read_top, %struct.lpfc_mbx_read_top* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %127 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %126, i32 0, i32 1
  store i64 %125, i64* %127, align 8
  %128 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %129 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @LPFC_SLI_REV4, align 8
  %132 = icmp slt i64 %130, %131
  br i1 %132, label %133, label %160

133:                                              ; preds = %122
  %134 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %135 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %134, i32 0, i32 12
  %136 = call i32 @spin_lock_irq(i32* %135)
  %137 = load i32, i32* @lpfc_mbx_read_top_mm, align 4
  %138 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %7, align 8
  %139 = call i64 @bf_get(i32 %137, %struct.lpfc_mbx_read_top* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %133
  %142 = load i32, i32* @LPFC_MENLO_MAINT, align 4
  %143 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %144 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %143, i32 0, i32 5
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = or i32 %146, %142
  store i32 %147, i32* %145, align 8
  br label %156

148:                                              ; preds = %133
  %149 = load i32, i32* @LPFC_MENLO_MAINT, align 4
  %150 = xor i32 %149, -1
  %151 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %152 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %151, i32 0, i32 5
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = and i32 %154, %150
  store i32 %155, i32* %153, align 8
  br label %156

156:                                              ; preds = %148, %141
  %157 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %158 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %157, i32 0, i32 12
  %159 = call i32 @spin_unlock_irq(i32* %158)
  br label %160

160:                                              ; preds = %156, %122
  %161 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %162 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %161, i32 0, i32 11
  %163 = load i32, i32* %162, align 8
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %162, align 8
  %165 = load i32, i32* @lpfc_mbx_read_top_att_type, align 4
  %166 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %7, align 8
  %167 = call i64 @bf_get(i32 %165, %struct.lpfc_mbx_read_top* %166)
  %168 = load i64, i64* @LPFC_ATT_LINK_UP, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %247

170:                                              ; preds = %160
  %171 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %172 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %171, i32 0, i32 5
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @LPFC_MENLO_MAINT, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %247, label %178

178:                                              ; preds = %170
  %179 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %180 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %179, i32 0, i32 9
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %181, align 4
  %184 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %185 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @LS_LOOPBACK_MODE, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %212

190:                                              ; preds = %178
  %191 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %192 = load i32, i32* @KERN_ERR, align 4
  %193 = load i32, i32* @LOG_LINK_EVENT, align 4
  %194 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %7, align 8
  %195 = getelementptr inbounds %struct.lpfc_mbx_read_top, %struct.lpfc_mbx_read_top* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %198 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = load i32, i32* @lpfc_mbx_read_top_alpa_granted, align 4
  %201 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %7, align 8
  %202 = call i64 @bf_get(i32 %200, %struct.lpfc_mbx_read_top* %201)
  %203 = load i32, i32* @lpfc_mbx_read_top_link_spd, align 4
  %204 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %7, align 8
  %205 = call i64 @bf_get(i32 %203, %struct.lpfc_mbx_read_top* %204)
  %206 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %207 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %206, i32 0, i32 10
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 0
  %210 = load i32, i32* %209, align 4
  %211 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i64, ...) @lpfc_printf_log(%struct.lpfc_hba* %191, i32 %192, i32 %193, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i64 %196, i64 %199, i64 %202, i64 %205, i32 %210)
  br label %243

212:                                              ; preds = %178
  %213 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %214 = load i32, i32* @KERN_ERR, align 4
  %215 = load i32, i32* @LOG_LINK_EVENT, align 4
  %216 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %7, align 8
  %217 = getelementptr inbounds %struct.lpfc_mbx_read_top, %struct.lpfc_mbx_read_top* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %220 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = load i32, i32* @lpfc_mbx_read_top_alpa_granted, align 4
  %223 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %7, align 8
  %224 = call i64 @bf_get(i32 %222, %struct.lpfc_mbx_read_top* %223)
  %225 = load i32, i32* @lpfc_mbx_read_top_link_spd, align 4
  %226 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %7, align 8
  %227 = call i64 @bf_get(i32 %225, %struct.lpfc_mbx_read_top* %226)
  %228 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %229 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %228, i32 0, i32 10
  %230 = load i32*, i32** %229, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 0
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* @lpfc_mbx_read_top_mm, align 4
  %234 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %7, align 8
  %235 = call i64 @bf_get(i32 %233, %struct.lpfc_mbx_read_top* %234)
  %236 = load i32, i32* @lpfc_mbx_read_top_fa, align 4
  %237 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %7, align 8
  %238 = call i64 @bf_get(i32 %236, %struct.lpfc_mbx_read_top* %237)
  %239 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %240 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %239, i32 0, i32 7
  %241 = load i32, i32* %240, align 4
  %242 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i64, ...) @lpfc_printf_log(%struct.lpfc_hba* %213, i32 %214, i32 %215, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i64 %218, i64 %221, i64 %224, i64 %227, i32 %232, i64 %235, i64 %238, i32 %241)
  br label %243

243:                                              ; preds = %212, %190
  %244 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %245 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %7, align 8
  %246 = call i32 @lpfc_mbx_process_link_up(%struct.lpfc_hba* %244, %struct.lpfc_mbx_read_top* %245)
  br label %313

247:                                              ; preds = %170, %160
  %248 = load i32, i32* @lpfc_mbx_read_top_att_type, align 4
  %249 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %7, align 8
  %250 = call i64 @bf_get(i32 %248, %struct.lpfc_mbx_read_top* %249)
  %251 = load i64, i64* @LPFC_ATT_LINK_DOWN, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %253, label %312

253:                                              ; preds = %247
  %254 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %255 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %254, i32 0, i32 9
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %256, align 8
  %259 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %260 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* @LS_LOOPBACK_MODE, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %284

265:                                              ; preds = %253
  %266 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %267 = load i32, i32* @KERN_ERR, align 4
  %268 = load i32, i32* @LOG_LINK_EVENT, align 4
  %269 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %7, align 8
  %270 = getelementptr inbounds %struct.lpfc_mbx_read_top, %struct.lpfc_mbx_read_top* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %273 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %272, i32 0, i32 1
  %274 = load i64, i64* %273, align 8
  %275 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %276 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %275, i32 0, i32 8
  %277 = load %struct.TYPE_15__*, %struct.TYPE_15__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %281 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i64, ...) @lpfc_printf_log(%struct.lpfc_hba* %266, i32 %267, i32 %268, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0), i64 %271, i64 %274, i32 %279, i32 %282)
  br label %309

284:                                              ; preds = %253
  %285 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %286 = load i32, i32* @KERN_ERR, align 4
  %287 = load i32, i32* @LOG_LINK_EVENT, align 4
  %288 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %7, align 8
  %289 = getelementptr inbounds %struct.lpfc_mbx_read_top, %struct.lpfc_mbx_read_top* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %292 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %291, i32 0, i32 1
  %293 = load i64, i64* %292, align 8
  %294 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %295 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %294, i32 0, i32 8
  %296 = load %struct.TYPE_15__*, %struct.TYPE_15__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %300 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = load i32, i32* @lpfc_mbx_read_top_mm, align 4
  %303 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %7, align 8
  %304 = call i64 @bf_get(i32 %302, %struct.lpfc_mbx_read_top* %303)
  %305 = load i32, i32* @lpfc_mbx_read_top_fa, align 4
  %306 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %7, align 8
  %307 = call i64 @bf_get(i32 %305, %struct.lpfc_mbx_read_top* %306)
  %308 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i64, ...) @lpfc_printf_log(%struct.lpfc_hba* %285, i32 %286, i32 %287, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i64 %290, i64 %293, i32 %298, i32 %301, i64 %304, i64 %307)
  br label %309

309:                                              ; preds = %284, %265
  %310 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %311 = call i32 @lpfc_mbx_issue_link_down(%struct.lpfc_hba* %310)
  br label %312

312:                                              ; preds = %309, %247
  br label %313

313:                                              ; preds = %312, %243
  %314 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %315 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %314, i32 0, i32 5
  %316 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = load i32, i32* @LPFC_MENLO_MAINT, align 4
  %319 = and i32 %317, %318
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %392

321:                                              ; preds = %313
  %322 = load i32, i32* @lpfc_mbx_read_top_att_type, align 4
  %323 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %7, align 8
  %324 = call i64 @bf_get(i32 %322, %struct.lpfc_mbx_read_top* %323)
  %325 = load i64, i64* @LPFC_ATT_LINK_UP, align 8
  %326 = icmp eq i64 %324, %325
  br i1 %326, label %327, label %392

327:                                              ; preds = %321
  %328 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %329 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %328, i32 0, i32 0
  %330 = load i64, i64* %329, align 8
  %331 = load i64, i64* @LPFC_LINK_DOWN, align 8
  %332 = icmp ne i64 %330, %331
  br i1 %332, label %333, label %359

333:                                              ; preds = %327
  %334 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %335 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %334, i32 0, i32 9
  %336 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %336, align 8
  %339 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %340 = load i32, i32* @KERN_ERR, align 4
  %341 = load i32, i32* @LOG_LINK_EVENT, align 4
  %342 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %7, align 8
  %343 = getelementptr inbounds %struct.lpfc_mbx_read_top, %struct.lpfc_mbx_read_top* %342, i32 0, i32 0
  %344 = load i64, i64* %343, align 8
  %345 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %346 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %345, i32 0, i32 1
  %347 = load i64, i64* %346, align 8
  %348 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %349 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %348, i32 0, i32 8
  %350 = load %struct.TYPE_15__*, %struct.TYPE_15__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 4
  %353 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %354 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 4
  %356 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i64, ...) @lpfc_printf_log(%struct.lpfc_hba* %339, i32 %340, i32 %341, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i64 %344, i64 %347, i32 %352, i32 %355)
  %357 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %358 = call i32 @lpfc_mbx_issue_link_down(%struct.lpfc_hba* %357)
  br label %362

359:                                              ; preds = %327
  %360 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %361 = call i32 @lpfc_enable_la(%struct.lpfc_hba* %360)
  br label %362

362:                                              ; preds = %359, %333
  %363 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %364 = load i32, i32* @KERN_ERR, align 4
  %365 = load i32, i32* @LOG_LINK_EVENT, align 4
  %366 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %7, align 8
  %367 = getelementptr inbounds %struct.lpfc_mbx_read_top, %struct.lpfc_mbx_read_top* %366, i32 0, i32 0
  %368 = load i64, i64* %367, align 8
  %369 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %370 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %369, i32 0, i32 1
  %371 = load i64, i64* %370, align 8
  %372 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %373 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %372, i32 0, i32 8
  %374 = load %struct.TYPE_15__*, %struct.TYPE_15__** %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 4
  %377 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %378 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 4
  %380 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i64, ...) @lpfc_printf_log(%struct.lpfc_hba* %363, i32 %364, i32 %365, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.6, i64 0, i64 0), i64 %368, i64 %371, i32 %376, i32 %379)
  %381 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %382 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %381, i32 0, i32 7
  %383 = load i32, i32* %382, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %391

385:                                              ; preds = %362
  %386 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %387 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %386, i32 0, i32 7
  store i32 0, i32* %387, align 4
  %388 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %389 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %388, i32 0, i32 6
  %390 = call i32 @wake_up_interruptible(i32* %389)
  br label %391

391:                                              ; preds = %385, %362
  br label %392

392:                                              ; preds = %391, %321, %313
  %393 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %394 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %393, i32 0, i32 2
  %395 = load i64, i64* %394, align 8
  %396 = load i64, i64* @LPFC_SLI_REV4, align 8
  %397 = icmp slt i64 %395, %396
  br i1 %397, label %398, label %423

398:                                              ; preds = %392
  %399 = load i32, i32* @lpfc_mbx_read_top_fa, align 4
  %400 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %7, align 8
  %401 = call i64 @bf_get(i32 %399, %struct.lpfc_mbx_read_top* %400)
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %403, label %423

403:                                              ; preds = %398
  %404 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %405 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %404, i32 0, i32 5
  %406 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 8
  %408 = load i32, i32* @LPFC_MENLO_MAINT, align 4
  %409 = and i32 %407, %408
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %415

411:                                              ; preds = %403
  %412 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %413 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %414 = call i32 @lpfc_issue_clear_la(%struct.lpfc_hba* %412, %struct.lpfc_vport* %413)
  br label %415

415:                                              ; preds = %411, %403
  %416 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %417 = load i32, i32* @KERN_INFO, align 4
  %418 = load i32, i32* @LOG_LINK_EVENT, align 4
  %419 = load i32, i32* @lpfc_mbx_read_top_fa, align 4
  %420 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %7, align 8
  %421 = call i64 @bf_get(i32 %419, %struct.lpfc_mbx_read_top* %420)
  %422 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i64, ...) @lpfc_printf_log(%struct.lpfc_hba* %416, i32 %417, i32 %418, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i64 %421)
  br label %423

423:                                              ; preds = %415, %398, %392
  br label %424

424:                                              ; preds = %423, %37
  %425 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %426 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %427 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %426, i32 0, i32 1
  %428 = load i32, i32* %427, align 4
  %429 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %430 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %429, i32 0, i32 0
  %431 = load i32, i32* %430, align 4
  %432 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %425, i32 %428, i32 %431)
  %433 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %434 = call i32 @kfree(%struct.lpfc_dmabuf* %433)
  %435 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %436 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %437 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %436, i32 0, i32 4
  %438 = load i32, i32* %437, align 4
  %439 = call i32 @mempool_free(%struct.TYPE_18__* %435, i32 %438)
  ret void
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i64, ...) #1

declare dso_local i32 @lpfc_mbx_issue_link_down(%struct.lpfc_hba*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @bf_get(i32, %struct.lpfc_mbx_read_top*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @lpfc_linkdown(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_mbx_process_link_up(%struct.lpfc_hba*, %struct.lpfc_mbx_read_top*) #1

declare dso_local i32 @lpfc_enable_la(%struct.lpfc_hba*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @lpfc_issue_clear_la(%struct.lpfc_hba*, %struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_mbuf_free(%struct.lpfc_hba*, i32, i32) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

declare dso_local i32 @mempool_free(%struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
