; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_ct.c_lpfc_cmpl_ct_cmd_fdmi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_ct.c_lpfc_cmpl_ct_cmd_fdmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.lpfc_iocbq = type { %struct.TYPE_8__, %struct.lpfc_vport*, %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i32* }
%struct.lpfc_vport = type { i32 }
%struct.lpfc_dmabuf = type { %struct.lpfc_sli_ct_request* }
%struct.lpfc_sli_ct_request = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.lpfc_nodelist = type { i32 }

@LPFC_DISC_TRC_CT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"FDMI cmpl:       status:x%x/x%x latt:%d\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_DISCOVERY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"0229 FDMI cmd %04x failed, latt = %d ulpStatus: x%x, rid x%x\0A\00", align 1
@FDMI_DID = common dso_local global i32 0, align 4
@SLI_CT_RESPONSE_FS_RJT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"0220 FDMI rsp failed Data: x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* @lpfc_cmpl_ct_cmd_fdmi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_cmpl_ct_cmd_fdmi(%struct.lpfc_hba* %0, %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq* %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_iocbq*, align 8
  %6 = alloca %struct.lpfc_iocbq*, align 8
  %7 = alloca %struct.lpfc_dmabuf*, align 8
  %8 = alloca %struct.lpfc_dmabuf*, align 8
  %9 = alloca %struct.lpfc_sli_ct_request*, align 8
  %10 = alloca %struct.lpfc_sli_ct_request*, align 8
  %11 = alloca %struct.lpfc_nodelist*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.lpfc_vport*, align 8
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %5, align 8
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %6, align 8
  %17 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %18 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %17, i32 0, i32 3
  %19 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %18, align 8
  store %struct.lpfc_dmabuf* %19, %struct.lpfc_dmabuf** %7, align 8
  %20 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %21 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %20, i32 0, i32 2
  %22 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %21, align 8
  store %struct.lpfc_dmabuf* %22, %struct.lpfc_dmabuf** %8, align 8
  %23 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %8, align 8
  %24 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %23, i32 0, i32 0
  %25 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %24, align 8
  store %struct.lpfc_sli_ct_request* %25, %struct.lpfc_sli_ct_request** %9, align 8
  %26 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %27 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %26, i32 0, i32 0
  %28 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %27, align 8
  store %struct.lpfc_sli_ct_request* %28, %struct.lpfc_sli_ct_request** %10, align 8
  %29 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %10, align 8
  %30 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %12, align 4
  %34 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %9, align 8
  %35 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %13, align 4
  %39 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %40 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %39, i32 0, i32 1
  %41 = load %struct.lpfc_vport*, %struct.lpfc_vport** %40, align 8
  store %struct.lpfc_vport* %41, %struct.lpfc_vport** %14, align 8
  %42 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %43 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %42, i32 0, i32 0
  store %struct.TYPE_8__* %43, %struct.TYPE_8__** %15, align 8
  %44 = load %struct.lpfc_vport*, %struct.lpfc_vport** %14, align 8
  %45 = call i64 @lpfc_els_chk_latt(%struct.lpfc_vport* %44)
  store i64 %45, i64* %16, align 8
  %46 = load %struct.lpfc_vport*, %struct.lpfc_vport** %14, align 8
  %47 = load i32, i32* @LPFC_DISC_TRC_CT, align 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 4
  %56 = load i32, i32* %55, align 4
  %57 = load i64, i64* %16, align 8
  %58 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %46, i32 %47, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %50, i32 %56, i64 %57)
  %59 = load i64, i64* %16, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %3
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %86

66:                                               ; preds = %61, %3
  %67 = load %struct.lpfc_vport*, %struct.lpfc_vport** %14, align 8
  %68 = load i32, i32* @KERN_INFO, align 4
  %69 = load i32, i32* @LOG_DISCOVERY, align 4
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @be16_to_cpu(i32 %70)
  %72 = load i64, i64* %16, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 4
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %67, i32 %68, i32 %69, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %71, i64 %72, i64 %75, i32 %81)
  %83 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %84 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %85 = call i32 @lpfc_ct_free_iocb(%struct.lpfc_hba* %83, %struct.lpfc_iocbq* %84)
  br label %130

86:                                               ; preds = %61
  %87 = load %struct.lpfc_vport*, %struct.lpfc_vport** %14, align 8
  %88 = load i32, i32* @FDMI_DID, align 4
  %89 = call %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport* %87, i32 %88)
  store %struct.lpfc_nodelist* %89, %struct.lpfc_nodelist** %11, align 8
  %90 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %91 = icmp ne %struct.lpfc_nodelist* %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %94 = call i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %92, %86
  br label %126

97:                                               ; preds = %92
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* @SLI_CT_RESPONSE_FS_RJT, align 4
  %100 = call i32 @be16_to_cpu(i32 %99)
  %101 = icmp eq i32 %98, %100
  br i1 %101, label %102, label %109

102:                                              ; preds = %97
  %103 = load %struct.lpfc_vport*, %struct.lpfc_vport** %14, align 8
  %104 = load i32, i32* @KERN_INFO, align 4
  %105 = load i32, i32* @LOG_DISCOVERY, align 4
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @be16_to_cpu(i32 %106)
  %108 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %103, i32 %104, i32 %105, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %102, %97
  %110 = load i32, i32* %12, align 4
  %111 = call i32 @be16_to_cpu(i32 %110)
  switch i32 %111, label %125 [
    i32 129, label %112
    i32 128, label %116
    i32 131, label %117
    i32 130, label %121
  ]

112:                                              ; preds = %109
  %113 = load %struct.lpfc_vport*, %struct.lpfc_vport** %14, align 8
  %114 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %115 = call i32 @lpfc_fdmi_cmd(%struct.lpfc_vport* %113, %struct.lpfc_nodelist* %114, i32 128)
  br label %125

116:                                              ; preds = %109
  br label %125

117:                                              ; preds = %109
  %118 = load %struct.lpfc_vport*, %struct.lpfc_vport** %14, align 8
  %119 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %120 = call i32 @lpfc_fdmi_cmd(%struct.lpfc_vport* %118, %struct.lpfc_nodelist* %119, i32 130)
  br label %125

121:                                              ; preds = %109
  %122 = load %struct.lpfc_vport*, %struct.lpfc_vport** %14, align 8
  %123 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %124 = call i32 @lpfc_fdmi_cmd(%struct.lpfc_vport* %122, %struct.lpfc_nodelist* %123, i32 129)
  br label %125

125:                                              ; preds = %109, %121, %117, %116, %112
  br label %126

126:                                              ; preds = %125, %96
  %127 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %128 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %129 = call i32 @lpfc_ct_free_iocb(%struct.lpfc_hba* %127, %struct.lpfc_iocbq* %128)
  br label %130

130:                                              ; preds = %126, %66
  ret void
}

declare dso_local i64 @lpfc_els_chk_latt(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i64, i32, i64) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @lpfc_ct_free_iocb(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport*, i32) #1

declare dso_local i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_fdmi_cmd(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
