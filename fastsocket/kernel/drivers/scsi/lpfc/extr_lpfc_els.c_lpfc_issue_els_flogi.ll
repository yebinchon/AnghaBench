; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_issue_els_flogi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_issue_els_flogi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i64, i32, i64, %struct.TYPE_14__, i32, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_16__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_16__ = type { %struct.lpfc_sli_ring* }
%struct.lpfc_sli_ring = type { i32 }
%struct.lpfc_nodelist = type { i32 }
%struct.serv_parm = type { %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_18__ }
%struct.TYPE_23__ = type { i64, i64, i32, i64, %struct.TYPE_17__, i64 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_22__ = type { i32, i64 }
%struct.TYPE_21__ = type { i32, i64 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32, i64 }
%struct.lpfc_iocbq = type { i32, %struct.TYPE_15__, i64 }
%struct.lpfc_dmabuf = type { i64 }

@LPFC_ELS_RING = common dso_local global i64 0, align 8
@ELS_CMD_FLOGI = common dso_local global i32 0, align 4
@FC_PH3 = common dso_local global i64 0, align 8
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@lpfc_sli_intf_if_type = common dso_local global i32 0, align 4
@LPFC_SLI_INTF_IF_TYPE_0 = common dso_local global i64 0, align 8
@SLI4_CT_FCFI = common dso_local global i32 0, align 4
@LPFC_SLI3_NPIV_ENABLED = common dso_local global i32 0, align 4
@LPFC_TOPOLOGY_LOOP = common dso_local global i64 0, align 8
@LPFC_DISC_FLOGI_TMO = common dso_local global i32 0, align 4
@lpfc_cmpl_els_flogi = common dso_local global i32 0, align 4
@LPFC_DISC_TRC_ELS_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Issue FLOGI:     opt:x%x\00", align 1
@IOCB_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32)* @lpfc_issue_els_flogi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_issue_els_flogi(%struct.lpfc_vport* %0, %struct.lpfc_nodelist* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.lpfc_nodelist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lpfc_hba*, align 8
  %9 = alloca %struct.serv_parm*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.lpfc_iocbq*, align 8
  %12 = alloca %struct.lpfc_sli_ring*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %5, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %18 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %17, i32 0, i32 1
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %18, align 8
  store %struct.lpfc_hba* %19, %struct.lpfc_hba** %8, align 8
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %21 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %20, i32 0, i32 7
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %22, align 8
  %24 = load i64, i64* @LPFC_ELS_RING, align 8
  %25 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %23, i64 %24
  store %struct.lpfc_sli_ring* %25, %struct.lpfc_sli_ring** %12, align 8
  store i32 92, i32* %14, align 4
  %26 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %30 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %31 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ELS_CMD_FLOGI, align 4
  %34 = call %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport* %26, i32 1, i32 %27, i32 %28, %struct.lpfc_nodelist* %29, i32 %32, i32 %33)
  store %struct.lpfc_iocbq* %34, %struct.lpfc_iocbq** %11, align 8
  %35 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %36 = icmp ne %struct.lpfc_iocbq* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %226

38:                                               ; preds = %3
  %39 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %40 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %39, i32 0, i32 1
  store %struct.TYPE_15__* %40, %struct.TYPE_15__** %10, align 8
  %41 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %42 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to %struct.lpfc_dmabuf*
  %45 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i32*
  store i32* %47, i32** %13, align 8
  %48 = load i32, i32* @ELS_CMD_FLOGI, align 4
  %49 = load i32*, i32** %13, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32*, i32** %13, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 4
  store i32* %51, i32** %13, align 8
  %52 = load i32*, i32** %13, align 8
  %53 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %54 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %53, i32 0, i32 0
  %55 = call i32 @memcpy(i32* %52, i32* %54, i32 88)
  %56 = load i32*, i32** %13, align 8
  %57 = bitcast i32* %56 to %struct.serv_parm*
  store %struct.serv_parm* %57, %struct.serv_parm** %9, align 8
  %58 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %59 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 5
  store i64 0, i64* %60, align 8
  %61 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %62 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  %65 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %66 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i32 0, i32 3
  store i64 0, i64* %67, align 8
  %68 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %69 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 0
  store i64 0, i64* %70, align 8
  %71 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %72 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @FC_PH3, align 8
  %76 = icmp slt i64 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %38
  %78 = load i64, i64* @FC_PH3, align 8
  %79 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %80 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 0
  store i64 %78, i64* %81, align 8
  br label %82

82:                                               ; preds = %77, %38
  %83 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %84 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @FC_PH3, align 8
  %88 = icmp slt i64 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %82
  %90 = load i64, i64* @FC_PH3, align 8
  %91 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %92 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 1
  store i64 %90, i64* %93, align 8
  br label %94

94:                                               ; preds = %89, %82
  %95 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %96 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @LPFC_SLI_REV4, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %134

100:                                              ; preds = %94
  %101 = load i32, i32* @lpfc_sli_intf_if_type, align 4
  %102 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %103 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %102, i32 0, i32 6
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 0
  %105 = call i64 @bf_get(i32 %101, i32* %104)
  %106 = load i64, i64* @LPFC_SLI_INTF_IF_TYPE_0, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %127

108:                                              ; preds = %100
  %109 = load i32, i32* @SLI4_CT_FCFI, align 4
  %110 = ashr i32 %109, 1
  %111 = and i32 %110, 1
  %112 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %113 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 0
  store i32 %111, i32* %114, align 8
  %115 = load i32, i32* @SLI4_CT_FCFI, align 4
  %116 = and i32 %115, 1
  %117 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %118 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 1
  store i32 %116, i32* %119, align 4
  %120 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %121 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %120, i32 0, i32 5
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %125 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 3
  store i32 %123, i32* %126, align 8
  br label %127

127:                                              ; preds = %108, %100
  %128 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %129 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 1
  store i64 0, i64* %130, align 8
  %131 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %132 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 0
  store i32 0, i32* %133, align 8
  br label %174

134:                                              ; preds = %94
  %135 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %136 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  %140 = zext i1 %139 to i64
  %141 = select i1 %139, i32 1, i32 0
  %142 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %143 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 0
  store i32 %141, i32* %144, align 8
  %145 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %146 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  %150 = zext i1 %149 to i64
  %151 = select i1 %149, i32 1, i32 0
  %152 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %153 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %153, i32 0, i32 0
  store i32 %151, i32* %154, align 8
  %155 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %156 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @LPFC_SLI3_NPIV_ENABLED, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %134
  %162 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %163 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %163, i32 0, i32 2
  store i32 1, i32* %164, align 8
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 0
  store i32 1, i32* %166, align 8
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 1
  store i32 0, i32* %168, align 4
  br label %173

169:                                              ; preds = %134
  %170 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %171 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %171, i32 0, i32 2
  store i32 0, i32* %172, align 8
  br label %173

173:                                              ; preds = %169, %161
  br label %174

174:                                              ; preds = %173, %127
  %175 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %176 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @LPFC_TOPOLOGY_LOOP, align 8
  %179 = icmp ne i64 %177, %178
  br i1 %179, label %180, label %189

180:                                              ; preds = %174
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %183, i32 0, i32 1
  store i64 0, i64* %184, align 8
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %187, i32 0, i32 0
  store i32 1, i32* %188, align 8
  br label %189

189:                                              ; preds = %180, %174
  %190 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %191 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 4
  store i32 %192, i32* %15, align 4
  %193 = load i32, i32* @LPFC_DISC_FLOGI_TMO, align 4
  %194 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %195 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %194, i32 0, i32 4
  store i32 %193, i32* %195, align 4
  %196 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %197 = call i32 @lpfc_set_disctmo(%struct.lpfc_vport* %196)
  %198 = load i32, i32* %15, align 4
  %199 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %200 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %199, i32 0, i32 4
  store i32 %198, i32* %200, align 4
  %201 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %202 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %201, i32 0, i32 3
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %203, align 8
  %206 = load i32, i32* @lpfc_cmpl_els_flogi, align 4
  %207 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %208 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %207, i32 0, i32 0
  store i32 %206, i32* %208, align 8
  %209 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %210 = load i32, i32* @LPFC_DISC_TRC_ELS_CMD, align 4
  %211 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %212 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %209, i32 %210, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %213, i32 0, i32 0)
  %215 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %216 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %217 = call i32 @lpfc_issue_fabric_iocb(%struct.lpfc_hba* %215, %struct.lpfc_iocbq* %216)
  store i32 %217, i32* %16, align 4
  %218 = load i32, i32* %16, align 4
  %219 = load i32, i32* @IOCB_ERROR, align 4
  %220 = icmp eq i32 %218, %219
  br i1 %220, label %221, label %225

221:                                              ; preds = %189
  %222 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %223 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %224 = call i32 @lpfc_els_free_iocb(%struct.lpfc_hba* %222, %struct.lpfc_iocbq* %223)
  store i32 1, i32* %4, align 4
  br label %226

225:                                              ; preds = %189
  store i32 0, i32* %4, align 4
  br label %226

226:                                              ; preds = %225, %221, %37
  %227 = load i32, i32* %4, align 4
  ret i32 %227
}

declare dso_local %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport*, i32, i32, i32, %struct.lpfc_nodelist*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @bf_get(i32, i32*) #1

declare dso_local i32 @lpfc_set_disctmo(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @lpfc_issue_fabric_iocb(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

declare dso_local i32 @lpfc_els_free_iocb(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
