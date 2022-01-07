; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_scsi_prep_task_mgmt_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_scsi_prep_task_mgmt_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64* }
%struct.lpfc_scsi_buf = type { i32, %struct.fcp_cmnd*, %struct.lpfc_iocbq, %struct.lpfc_rport_data* }
%struct.fcp_cmnd = type { i32, i32 }
%struct.lpfc_iocbq = type { %struct.TYPE_9__, %struct.lpfc_vport* }
%struct.TYPE_9__ = type { i64, i32, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.lpfc_rport_data = type { %struct.lpfc_nodelist* }
%struct.lpfc_nodelist = type { i64, i64, i32 }

@NLP_STE_MAPPED_NODE = common dso_local global i64 0, align 8
@LPFC_SLI3_BG_ENABLED = common dso_local global i32 0, align 4
@CMD_FCP_ICMND64_CR = common dso_local global i32 0, align 4
@LPFC_SLI_REV4 = common dso_local global i32 0, align 4
@NLP_FCP_2_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.lpfc_scsi_buf*, i32, i32)* @lpfc_scsi_prep_task_mgmt_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_scsi_prep_task_mgmt_cmd(%struct.lpfc_vport* %0, %struct.lpfc_scsi_buf* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lpfc_vport*, align 8
  %7 = alloca %struct.lpfc_scsi_buf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.lpfc_iocbq*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.fcp_cmnd*, align 8
  %13 = alloca %struct.lpfc_rport_data*, align 8
  %14 = alloca %struct.lpfc_nodelist*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %6, align 8
  store %struct.lpfc_scsi_buf* %1, %struct.lpfc_scsi_buf** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %7, align 8
  %16 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %15, i32 0, i32 3
  %17 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %16, align 8
  store %struct.lpfc_rport_data* %17, %struct.lpfc_rport_data** %13, align 8
  %18 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %13, align 8
  %19 = getelementptr inbounds %struct.lpfc_rport_data, %struct.lpfc_rport_data* %18, i32 0, i32 0
  %20 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %19, align 8
  store %struct.lpfc_nodelist* %20, %struct.lpfc_nodelist** %14, align 8
  %21 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %14, align 8
  %22 = icmp ne %struct.lpfc_nodelist* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %4
  %24 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %14, align 8
  %25 = call i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %14, align 8
  %29 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @NLP_STE_MAPPED_NODE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27, %23, %4
  store i32 0, i32* %5, align 4
  br label %152

34:                                               ; preds = %27
  %35 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %7, align 8
  %36 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %35, i32 0, i32 2
  store %struct.lpfc_iocbq* %36, %struct.lpfc_iocbq** %10, align 8
  %37 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %38 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %10, align 8
  %39 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %38, i32 0, i32 1
  store %struct.lpfc_vport* %37, %struct.lpfc_vport** %39, align 8
  %40 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %10, align 8
  %41 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %40, i32 0, i32 0
  store %struct.TYPE_9__* %41, %struct.TYPE_9__** %11, align 8
  %42 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %7, align 8
  %43 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %42, i32 0, i32 1
  %44 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %43, align 8
  store %struct.fcp_cmnd* %44, %struct.fcp_cmnd** %12, align 8
  %45 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %12, align 8
  %46 = call i32 @memset(%struct.fcp_cmnd* %45, i32 0, i32 8)
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %12, align 8
  %49 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %48, i32 0, i32 1
  %50 = call i32 @int_to_scsilun(i32 %47, i32* %49)
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %12, align 8
  %53 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %55 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %54, i32 0, i32 0
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, 3
  br i1 %59, label %60, label %77

60:                                               ; preds = %34
  %61 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %62 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %61, i32 0, i32 0
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @LPFC_SLI3_BG_ENABLED, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %60
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 5
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %12, align 8
  %76 = call i32 @lpfc_fcpcmd_to_iocb(i32 %74, %struct.fcp_cmnd* %75)
  br label %77

77:                                               ; preds = %69, %60, %34
  %78 = load i32, i32* @CMD_FCP_ICMND64_CR, align 4
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 4
  %81 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %14, align 8
  %82 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %87 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %86, i32 0, i32 0
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @LPFC_SLI_REV4, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %107

93:                                               ; preds = %77
  %94 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %95 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %94, i32 0, i32 0
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i64*, i64** %98, align 8
  %100 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %14, align 8
  %101 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds i64, i64* %99, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  store i64 %104, i64* %106, align 8
  br label %107

107:                                              ; preds = %93, %77
  %108 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %14, align 8
  %109 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @NLP_FCP_2_DEVICE, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %107
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  store i32 1, i32* %116, align 8
  br label %117

117:                                              ; preds = %114, %107
  %118 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %14, align 8
  %119 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = and i32 %120, 15
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 4
  %124 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %7, align 8
  %125 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp sgt i32 %126, 255
  br i1 %127, label %128, label %131

128:                                              ; preds = %117
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 3
  store i32 0, i32* %130, align 8
  br label %137

131:                                              ; preds = %117
  %132 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %7, align 8
  %133 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 3
  store i32 %134, i32* %136, align 8
  br label %137

137:                                              ; preds = %131, %128
  %138 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %139 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %138, i32 0, i32 0
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @LPFC_SLI_REV4, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %151

145:                                              ; preds = %137
  %146 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %147 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %146, i32 0, i32 0
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %147, align 8
  %149 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %7, align 8
  %150 = call i32 @lpfc_sli4_set_rsp_sgl_last(%struct.TYPE_10__* %148, %struct.lpfc_scsi_buf* %149)
  br label %151

151:                                              ; preds = %145, %137
  store i32 1, i32* %5, align 4
  br label %152

152:                                              ; preds = %151, %33
  %153 = load i32, i32* %5, align 4
  ret i32 %153
}

declare dso_local i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local i32 @memset(%struct.fcp_cmnd*, i32, i32) #1

declare dso_local i32 @int_to_scsilun(i32, i32*) #1

declare dso_local i32 @lpfc_fcpcmd_to_iocb(i32, %struct.fcp_cmnd*) #1

declare dso_local i32 @lpfc_sli4_set_rsp_sgl_last(%struct.TYPE_10__*, %struct.lpfc_scsi_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
