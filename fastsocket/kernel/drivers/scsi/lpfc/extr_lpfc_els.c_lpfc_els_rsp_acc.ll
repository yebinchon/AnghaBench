; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_rsp_acc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_rsp_acc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { %struct.TYPE_14__, %struct.lpfc_sli }
%struct.TYPE_14__ = type { i32 }
%struct.lpfc_sli = type { i32 }
%struct.lpfc_iocbq = type { i32, %struct.TYPE_15__, i32, i64, i32, %struct.TYPE_9__ }
%struct.TYPE_15__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32* }
%struct.lpfc_nodelist = type { i32, i32, i32, i32 }
%struct.Scsi_Host = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.lpfc_dmabuf = type { i32* }

@NLP_LOGO_ACC = common dso_local global i32 0, align 4
@LPFC_DISC_TRC_ELS_RSP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Issue ACC:       did:x%x flg:x%x\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Issue ACC PLOGI: did:x%x flg:x%x\00", align 1
@ELS_CMD_PRLO_ACC = common dso_local global i32 0, align 4
@PRLO_REQ_EXECUTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Issue ACC PRLO:  did:x%x flg:x%x\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_ELS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [107 x i8] c"0128 Xmit ELS ACC response tag x%x, XRI: x%x, DID: x%x, nlp_flag: x%x nlp_state: x%x RPI: x%x fc_flag x%x\0A\00", align 1
@lpfc_cmpl_els_logo_acc = common dso_local global i32 0, align 4
@lpfc_cmpl_els_rsp = common dso_local global i32 0, align 4
@LPFC_ELS_RING = common dso_local global i32 0, align 4
@IOCB_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_els_rsp_acc(%struct.lpfc_vport* %0, i32 %1, %struct.lpfc_iocbq* %2, %struct.lpfc_nodelist* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.lpfc_vport*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.lpfc_iocbq*, align 8
  %10 = alloca %struct.lpfc_nodelist*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.Scsi_Host*, align 8
  %13 = alloca %struct.lpfc_hba*, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca %struct.TYPE_15__*, align 8
  %16 = alloca %struct.lpfc_iocbq*, align 8
  %17 = alloca %struct.lpfc_sli*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_16__*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %9, align 8
  store %struct.lpfc_nodelist* %3, %struct.lpfc_nodelist** %10, align 8
  store i32* %4, i32** %11, align 8
  %22 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %23 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %22)
  store %struct.Scsi_Host* %23, %struct.Scsi_Host** %12, align 8
  %24 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %25 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %24, i32 0, i32 2
  %26 = load %struct.lpfc_hba*, %struct.lpfc_hba** %25, align 8
  store %struct.lpfc_hba* %26, %struct.lpfc_hba** %13, align 8
  %27 = load %struct.lpfc_hba*, %struct.lpfc_hba** %13, align 8
  %28 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %27, i32 0, i32 1
  store %struct.lpfc_sli* %28, %struct.lpfc_sli** %17, align 8
  %29 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %30 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %29, i32 0, i32 1
  store %struct.TYPE_15__* %30, %struct.TYPE_15__** %15, align 8
  %31 = load i32, i32* %8, align 4
  switch i32 %31, label %219 [
    i32 130, label %32
    i32 129, label %95
    i32 128, label %156
  ]

32:                                               ; preds = %5
  store i32 4, i32* %19, align 4
  %33 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %34 = load i32, i32* %19, align 4
  %35 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %36 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %39 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %40 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport* %33, i32 0, i32 %34, i32 %37, %struct.lpfc_nodelist* %38, i32 %41, i32 130)
  store %struct.lpfc_iocbq* %42, %struct.lpfc_iocbq** %16, align 8
  %43 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %16, align 8
  %44 = icmp ne %struct.lpfc_iocbq* %43, null
  br i1 %44, label %60, label %45

45:                                               ; preds = %32
  %46 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %47 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @spin_lock_irq(i32 %48)
  %50 = load i32, i32* @NLP_LOGO_ACC, align 4
  %51 = xor i32 %50, -1
  %52 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %53 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %57 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @spin_unlock_irq(i32 %58)
  store i32 1, i32* %6, align 4
  br label %293

60:                                               ; preds = %32
  %61 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %16, align 8
  %62 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %61, i32 0, i32 1
  store %struct.TYPE_15__* %62, %struct.TYPE_15__** %14, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  store i32 %72, i32* %76, align 4
  %77 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %16, align 8
  %78 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to %struct.lpfc_dmabuf*
  %81 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  store i32* %82, i32** %18, align 8
  %83 = load i32*, i32** %18, align 8
  store i32 130, i32* %83, align 4
  %84 = load i32*, i32** %18, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 4
  store i32* %85, i32** %18, align 8
  %86 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %87 = load i32, i32* @LPFC_DISC_TRC_ELS_RSP, align 4
  %88 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %89 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %92 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %86, i32 %87, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %90, i32 %93, i32 0)
  br label %220

95:                                               ; preds = %5
  store i32 8, i32* %19, align 4
  %96 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %97 = load i32, i32* %19, align 4
  %98 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %99 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %102 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %103 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = call %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport* %96, i32 0, i32 %97, i32 %100, %struct.lpfc_nodelist* %101, i32 %104, i32 130)
  store %struct.lpfc_iocbq* %105, %struct.lpfc_iocbq** %16, align 8
  %106 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %16, align 8
  %107 = icmp ne %struct.lpfc_iocbq* %106, null
  br i1 %107, label %109, label %108

108:                                              ; preds = %95
  store i32 1, i32* %6, align 4
  br label %293

109:                                              ; preds = %95
  %110 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %16, align 8
  %111 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %110, i32 0, i32 1
  store %struct.TYPE_15__* %111, %struct.TYPE_15__** %14, align 8
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 4
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  store i32 %121, i32* %125, align 4
  %126 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %16, align 8
  %127 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = inttoptr i64 %128 to %struct.lpfc_dmabuf*
  %130 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  store i32* %131, i32** %18, align 8
  %132 = load i32*, i32** %11, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %139

134:                                              ; preds = %109
  %135 = load i32*, i32** %11, align 8
  %136 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %16, align 8
  %137 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %136, i32 0, i32 5
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  store i32* %135, i32** %138, align 8
  br label %139

139:                                              ; preds = %134, %109
  %140 = load i32*, i32** %18, align 8
  store i32 130, i32* %140, align 4
  %141 = load i32*, i32** %18, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 4
  store i32* %142, i32** %18, align 8
  %143 = load i32*, i32** %18, align 8
  %144 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %145 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %144, i32 0, i32 1
  %146 = call i32 @memcpy(i32* %143, i32* %145, i32 4)
  %147 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %148 = load i32, i32* @LPFC_DISC_TRC_ELS_RSP, align 4
  %149 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %150 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %153 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %147, i32 %148, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %151, i32 %154, i32 0)
  br label %220

156:                                              ; preds = %5
  store i32 8, i32* %19, align 4
  %157 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %158 = load i32, i32* %19, align 4
  %159 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %160 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %163 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %164 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = call %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport* %157, i32 0, i32 %158, i32 %161, %struct.lpfc_nodelist* %162, i32 %165, i32 128)
  store %struct.lpfc_iocbq* %166, %struct.lpfc_iocbq** %16, align 8
  %167 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %16, align 8
  %168 = icmp ne %struct.lpfc_iocbq* %167, null
  br i1 %168, label %170, label %169

169:                                              ; preds = %156
  store i32 1, i32* %6, align 4
  br label %293

170:                                              ; preds = %156
  %171 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %16, align 8
  %172 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %171, i32 0, i32 1
  store %struct.TYPE_15__* %172, %struct.TYPE_15__** %14, align 8
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 4
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 0
  store i32 %182, i32* %186, align 4
  %187 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %16, align 8
  %188 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %187, i32 0, i32 3
  %189 = load i64, i64* %188, align 8
  %190 = inttoptr i64 %189 to %struct.lpfc_dmabuf*
  %191 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  store i32* %192, i32** %18, align 8
  %193 = load i32*, i32** %18, align 8
  %194 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %195 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %194, i32 0, i32 3
  %196 = load i64, i64* %195, align 8
  %197 = inttoptr i64 %196 to %struct.lpfc_dmabuf*
  %198 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %197, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  %200 = call i32 @memcpy(i32* %193, i32* %199, i32 8)
  %201 = load i32, i32* @ELS_CMD_PRLO_ACC, align 4
  %202 = load i32*, i32** %18, align 8
  store i32 %201, i32* %202, align 4
  %203 = load i32*, i32** %18, align 8
  %204 = bitcast i32* %203 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %204, %struct.TYPE_16__** %21, align 8
  %205 = load i32, i32* @PRLO_REQ_EXECUTED, align 4
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 0
  store i32 %205, i32* %209, align 4
  %210 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %211 = load i32, i32* @LPFC_DISC_TRC_ELS_RSP, align 4
  %212 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %213 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %216 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %210, i32 %211, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %214, i32 %217, i32 0)
  br label %220

219:                                              ; preds = %5
  store i32 1, i32* %6, align 4
  br label %293

220:                                              ; preds = %170, %139, %60
  %221 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %222 = load i32, i32* @KERN_INFO, align 4
  %223 = load i32, i32* @LOG_ELS, align 4
  %224 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %16, align 8
  %225 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %16, align 8
  %228 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %232 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %235 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %238 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %241 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %244 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %221, i32 %222, i32 %223, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.3, i64 0, i64 0), i32 %226, i32 %230, i32 %233, i32 %236, i32 %239, i32 %242, i32 %245)
  %247 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %248 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @NLP_LOGO_ACC, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %271

253:                                              ; preds = %220
  %254 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %255 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @spin_lock_irq(i32 %256)
  %258 = load i32, i32* @NLP_LOGO_ACC, align 4
  %259 = xor i32 %258, -1
  %260 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %261 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = and i32 %262, %259
  store i32 %263, i32* %261, align 4
  %264 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %265 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @spin_unlock_irq(i32 %266)
  %268 = load i32, i32* @lpfc_cmpl_els_logo_acc, align 4
  %269 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %16, align 8
  %270 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %269, i32 0, i32 0
  store i32 %268, i32* %270, align 8
  br label %275

271:                                              ; preds = %220
  %272 = load i32, i32* @lpfc_cmpl_els_rsp, align 4
  %273 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %16, align 8
  %274 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %273, i32 0, i32 0
  store i32 %272, i32* %274, align 8
  br label %275

275:                                              ; preds = %271, %253
  %276 = load %struct.lpfc_hba*, %struct.lpfc_hba** %13, align 8
  %277 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %278, align 4
  %281 = load %struct.lpfc_hba*, %struct.lpfc_hba** %13, align 8
  %282 = load i32, i32* @LPFC_ELS_RING, align 4
  %283 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %16, align 8
  %284 = call i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba* %281, i32 %282, %struct.lpfc_iocbq* %283, i32 0)
  store i32 %284, i32* %20, align 4
  %285 = load i32, i32* %20, align 4
  %286 = load i32, i32* @IOCB_ERROR, align 4
  %287 = icmp eq i32 %285, %286
  br i1 %287, label %288, label %292

288:                                              ; preds = %275
  %289 = load %struct.lpfc_hba*, %struct.lpfc_hba** %13, align 8
  %290 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %16, align 8
  %291 = call i32 @lpfc_els_free_iocb(%struct.lpfc_hba* %289, %struct.lpfc_iocbq* %290)
  store i32 1, i32* %6, align 4
  br label %293

292:                                              ; preds = %275
  store i32 0, i32* %6, align 4
  br label %293

293:                                              ; preds = %292, %288, %219, %169, %108, %45
  %294 = load i32, i32* %6, align 4
  ret i32 %294
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport*, i32, i32, i32, %struct.lpfc_nodelist*, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba*, i32, %struct.lpfc_iocbq*, i32) #1

declare dso_local i32 @lpfc_els_free_iocb(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
