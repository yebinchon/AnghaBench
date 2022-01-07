; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_cmpl_els_rsp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_cmpl_els_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.lpfc_iocbq = type { i32*, %struct.TYPE_13__, i64, %struct.TYPE_9__ }
%struct.TYPE_13__ = type { i64, i32, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i32, i32, %struct.lpfc_vport*, i32 }
%struct.lpfc_vport = type { i32 }
%struct.lpfc_nodelist = type { i32, i32, i32, i32, i32, %struct.lpfc_vport* }
%struct.Scsi_Host = type { i32 }
%struct.lpfc_dmabuf = type { i32, i64 }

@ELS_CMD_LS_RJT = common dso_local global i64 0, align 8
@NLP_RM_DFLT_RPI = common dso_local global i32 0, align 4
@LPFC_DISC_TRC_ELS_RSP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"ELS rsp cmpl:    status:x%x/x%x did:x%x\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_ELS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"0110 ELS response tag x%x completes Data: x%x x%x x%x x%x x%x x%x x%x\0A\00", align 1
@NLP_ACC_REGLOGIN = common dso_local global i32 0, align 4
@LPFC_MBX_IMED_UNREG = common dso_local global i32 0, align 4
@lpfc_mbx_cmpl_dflt_rpi = common dso_local global i32 0, align 4
@lpfc_mbx_cmpl_reg_login = common dso_local global i32 0, align 4
@NLP_STE_REG_LOGIN_ISSUE = common dso_local global i32 0, align 4
@MBX_NOWAIT = common dso_local global i32 0, align 4
@MBX_NOT_FINISHED = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"0138 ELS rsp: Cannot issue reg_login for x%x Data: x%x x%x x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* @lpfc_cmpl_els_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_cmpl_els_rsp(%struct.lpfc_hba* %0, %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq* %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_iocbq*, align 8
  %6 = alloca %struct.lpfc_iocbq*, align 8
  %7 = alloca %struct.lpfc_nodelist*, align 8
  %8 = alloca %struct.lpfc_vport*, align 8
  %9 = alloca %struct.Scsi_Host*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.lpfc_dmabuf*, align 8
  %14 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %5, align 8
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %6, align 8
  %15 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %16 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = bitcast i32* %17 to %struct.lpfc_nodelist*
  store %struct.lpfc_nodelist* %18, %struct.lpfc_nodelist** %7, align 8
  %19 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %20 = icmp ne %struct.lpfc_nodelist* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %23 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %22, i32 0, i32 5
  %24 = load %struct.lpfc_vport*, %struct.lpfc_vport** %23, align 8
  br label %26

25:                                               ; preds = %3
  br label %26

26:                                               ; preds = %25, %21
  %27 = phi %struct.lpfc_vport* [ %24, %21 ], [ null, %25 ]
  store %struct.lpfc_vport* %27, %struct.lpfc_vport** %8, align 8
  %28 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %29 = icmp ne %struct.lpfc_vport* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %32 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %31)
  br label %34

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %30
  %35 = phi %struct.Scsi_Host* [ %32, %30 ], [ null, %33 ]
  store %struct.Scsi_Host* %35, %struct.Scsi_Host** %9, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %12, align 8
  store %struct.lpfc_dmabuf* null, %struct.lpfc_dmabuf** %13, align 8
  store i64 0, i64* %14, align 8
  %36 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %37 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %36, i32 0, i32 1
  store %struct.TYPE_13__* %37, %struct.TYPE_13__** %10, align 8
  %38 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %39 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  %42 = icmp ne %struct.TYPE_12__* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %34
  %44 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %45 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %46, align 8
  store %struct.TYPE_12__* %47, %struct.TYPE_12__** %12, align 8
  br label %48

48:                                               ; preds = %43, %34
  %49 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %50 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.lpfc_dmabuf*
  %53 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to i32*
  store i32* %55, i32** %11, align 8
  %56 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %57 = icmp ne %struct.lpfc_nodelist* %56, null
  br i1 %57, label %58, label %77

58:                                               ; preds = %48
  %59 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %60 = call i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %58
  %63 = load i32*, i32** %11, align 8
  %64 = bitcast i32* %63 to i64*
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @ELS_CMD_LS_RJT, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %62
  %69 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %70 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @NLP_RM_DFLT_RPI, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %68
  store i64 1, i64* %14, align 8
  br label %76

76:                                               ; preds = %75, %68
  br label %77

77:                                               ; preds = %76, %62, %58, %48
  %78 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %79 = icmp ne %struct.lpfc_nodelist* %78, null
  br i1 %79, label %80, label %88

80:                                               ; preds = %77
  %81 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %82 = call i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %86 = call i64 @lpfc_els_chk_latt(%struct.lpfc_vport* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %138

88:                                               ; preds = %84, %80, %77
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %90 = icmp ne %struct.TYPE_12__* %89, null
  br i1 %90, label %91, label %115

91:                                               ; preds = %88
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = inttoptr i64 %94 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %95, %struct.lpfc_dmabuf** %13, align 8
  %96 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %97 = icmp ne %struct.lpfc_dmabuf* %96, null
  br i1 %97, label %98, label %109

98:                                               ; preds = %91
  %99 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %100 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %101 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %104 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %99, i64 %102, i32 %105)
  %107 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %108 = call i32 @kfree(%struct.lpfc_dmabuf* %107)
  br label %109

109:                                              ; preds = %98, %91
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %111 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %112 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @mempool_free(%struct.TYPE_12__* %110, i32 %113)
  br label %115

115:                                              ; preds = %109, %88
  %116 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %117 = icmp ne %struct.lpfc_nodelist* %116, null
  br i1 %117, label %118, label %137

118:                                              ; preds = %115
  %119 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %120 = call i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %137

122:                                              ; preds = %118
  %123 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %124 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @NLP_RM_DFLT_RPI, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %122
  %130 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %131 = call i64 @lpfc_nlp_not_used(%struct.lpfc_nodelist* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %129
  store %struct.lpfc_nodelist* null, %struct.lpfc_nodelist** %7, align 8
  %134 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %135 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %134, i32 0, i32 0
  store i32* null, i32** %135, align 8
  br label %136

136:                                              ; preds = %133, %129
  br label %137

137:                                              ; preds = %136, %122, %118, %115
  br label %327

138:                                              ; preds = %84
  %139 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %140 = load i32, i32* @LPFC_DISC_TRC_ELS_RSP, align 4
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 4
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %151 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %139, i32 %140, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %143, i32 %149, i32 %155)
  %157 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %158 = load i32, i32* @KERN_INFO, align 4
  %159 = load i32, i32* @LOG_ELS, align 4
  %160 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %161 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %165 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = trunc i64 %167 to i32
  %169 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %170 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 4
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %177 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %181 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %184 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %187 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %190 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, i32, i32, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %157, i32 %158, i32 %159, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 %163, i32 %168, i32 %175, i32 %179, i32 %182, i32 %185, i32 %188, i32 %191)
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %194 = icmp ne %struct.TYPE_12__* %193, null
  br i1 %194, label %195, label %326

195:                                              ; preds = %138
  %196 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %197 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = icmp eq i64 %199, 0
  br i1 %200, label %201, label %282

201:                                              ; preds = %195
  %202 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %203 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @NLP_ACC_REGLOGIN, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %282

208:                                              ; preds = %201
  %209 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %210 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %211 = call i32 @lpfc_unreg_rpi(%struct.lpfc_vport* %209, %struct.lpfc_nodelist* %210)
  %212 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %213 = call i32 @lpfc_nlp_get(%struct.lpfc_nodelist* %212)
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 4
  store i32 %213, i32* %215, align 8
  %216 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 3
  store %struct.lpfc_vport* %216, %struct.lpfc_vport** %218, align 8
  %219 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %220 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @NLP_RM_DFLT_RPI, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %234

225:                                              ; preds = %208
  %226 = load i32, i32* @LPFC_MBX_IMED_UNREG, align 4
  %227 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 4
  %230 = or i32 %229, %226
  store i32 %230, i32* %228, align 4
  %231 = load i32, i32* @lpfc_mbx_cmpl_dflt_rpi, align 4
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 1
  store i32 %231, i32* %233, align 8
  br label %247

234:                                              ; preds = %208
  %235 = load i32, i32* @lpfc_mbx_cmpl_reg_login, align 4
  %236 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 1
  store i32 %235, i32* %237, align 8
  %238 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %239 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %242 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %241, i32 0, i32 4
  store i32 %240, i32* %242, align 8
  %243 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %244 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %245 = load i32, i32* @NLP_STE_REG_LOGIN_ISSUE, align 4
  %246 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %243, %struct.lpfc_nodelist* %244, i32 %245)
  br label %247

247:                                              ; preds = %234, %225
  %248 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %249 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %250 = load i32, i32* @MBX_NOWAIT, align 4
  %251 = call i64 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %248, %struct.TYPE_12__* %249, i32 %250)
  %252 = load i64, i64* @MBX_NOT_FINISHED, align 8
  %253 = icmp ne i64 %251, %252
  br i1 %253, label %254, label %255

254:                                              ; preds = %247
  br label %327

255:                                              ; preds = %247
  %256 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %257 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %256)
  br label %258

258:                                              ; preds = %255
  %259 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %260 = load i32, i32* @KERN_ERR, align 4
  %261 = load i32, i32* @LOG_ELS, align 4
  %262 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %263 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %266 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %269 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 8
  %271 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %272 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, i32, i32, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %259, i32 %260, i32 %261, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %264, i32 %267, i32 %270, i32 %273)
  %275 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %276 = call i64 @lpfc_nlp_not_used(%struct.lpfc_nodelist* %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %281

278:                                              ; preds = %258
  store %struct.lpfc_nodelist* null, %struct.lpfc_nodelist** %7, align 8
  %279 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %280 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %279, i32 0, i32 0
  store i32* null, i32** %280, align 8
  br label %281

281:                                              ; preds = %278, %258
  br label %302

282:                                              ; preds = %201, %195
  %283 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %284 = call i32 @lpfc_error_lost_link(%struct.TYPE_13__* %283)
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %301, label %286

286:                                              ; preds = %282
  %287 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %288 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = load i32, i32* @NLP_ACC_REGLOGIN, align 4
  %291 = and i32 %289, %290
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %301

293:                                              ; preds = %286
  %294 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %295 = call i64 @lpfc_nlp_not_used(%struct.lpfc_nodelist* %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %300

297:                                              ; preds = %293
  store %struct.lpfc_nodelist* null, %struct.lpfc_nodelist** %7, align 8
  %298 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %299 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %298, i32 0, i32 0
  store i32* null, i32** %299, align 8
  br label %300

300:                                              ; preds = %297, %293
  br label %301

301:                                              ; preds = %300, %286, %282
  br label %302

302:                                              ; preds = %301, %281
  %303 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %304 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = inttoptr i64 %305 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %306, %struct.lpfc_dmabuf** %13, align 8
  %307 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %308 = icmp ne %struct.lpfc_dmabuf* %307, null
  br i1 %308, label %309, label %320

309:                                              ; preds = %302
  %310 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %311 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %312 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %311, i32 0, i32 1
  %313 = load i64, i64* %312, align 8
  %314 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %315 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %310, i64 %313, i32 %316)
  %318 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %319 = call i32 @kfree(%struct.lpfc_dmabuf* %318)
  br label %320

320:                                              ; preds = %309, %302
  %321 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %322 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %323 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 4
  %325 = call i32 @mempool_free(%struct.TYPE_12__* %321, i32 %324)
  br label %326

326:                                              ; preds = %320, %138
  br label %327

327:                                              ; preds = %326, %254, %137
  %328 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %329 = icmp ne %struct.lpfc_nodelist* %328, null
  br i1 %329, label %330, label %362

330:                                              ; preds = %327
  %331 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %332 = call i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %331)
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %362

334:                                              ; preds = %330
  %335 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %336 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 4
  %338 = call i32 @spin_lock_irq(i32 %337)
  %339 = load i32, i32* @NLP_ACC_REGLOGIN, align 4
  %340 = load i32, i32* @NLP_RM_DFLT_RPI, align 4
  %341 = or i32 %339, %340
  %342 = xor i32 %341, -1
  %343 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %344 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = and i32 %345, %342
  store i32 %346, i32* %344, align 8
  %347 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %348 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 4
  %350 = call i32 @spin_unlock_irq(i32 %349)
  %351 = load i64, i64* %14, align 8
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %361

353:                                              ; preds = %334
  %354 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %355 = call i64 @lpfc_nlp_not_used(%struct.lpfc_nodelist* %354)
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %357, label %360

357:                                              ; preds = %353
  %358 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %359 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %358, i32 0, i32 0
  store i32* null, i32** %359, align 8
  br label %360

360:                                              ; preds = %357, %353
  br label %361

361:                                              ; preds = %360, %334
  br label %362

362:                                              ; preds = %361, %330, %327
  %363 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %364 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %365 = call i32 @lpfc_els_free_iocb(%struct.lpfc_hba* %363, %struct.lpfc_iocbq* %364)
  ret void
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local i64 @lpfc_els_chk_latt(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_mbuf_free(%struct.lpfc_hba*, i64, i32) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

declare dso_local i32 @mempool_free(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @lpfc_nlp_not_used(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i64, i32, i32) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, i32, i32, i32, ...) #1

declare dso_local i32 @lpfc_unreg_rpi(%struct.lpfc_vport*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_nlp_get(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_nlp_set_state(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i64 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @lpfc_nlp_put(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_error_lost_link(%struct.TYPE_13__*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @lpfc_els_free_iocb(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
