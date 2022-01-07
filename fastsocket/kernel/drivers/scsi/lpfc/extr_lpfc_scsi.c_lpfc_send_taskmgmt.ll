; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_send_taskmgmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_send_taskmgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32 }
%struct.lpfc_rport_data = type { %struct.lpfc_nodelist* }
%struct.lpfc_nodelist = type { i32, i32 }
%struct.lpfc_scsi_buf = type { i32, i32, %struct.lpfc_iocbq, %struct.lpfc_rport_data* }
%struct.lpfc_iocbq = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32* }

@FAILED = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_FCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"0702 Issue %s to TGT %d LUN %d rpi x%x nlp_flag x%x Data: x%x x%x\0A\00", align 1
@LPFC_FCP_RING = common dso_local global i32 0, align 4
@IOCB_SUCCESS = common dso_local global i32 0, align 4
@IOCB_TIMEDOUT = common dso_local global i32 0, align 4
@lpfc_tskmgmt_def_cmpl = common dso_local global i32 0, align 4
@TIMEOUT_ERROR = common dso_local global i32 0, align 4
@IOSTAT_DRIVER_REJECT = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"0727 TMF %s to TGT %d LUN %d failed (%d, %d) iocb_flag x%x\0A\00", align 1
@IOCB_BUSY = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.lpfc_rport_data*, i32, i32, i32)* @lpfc_send_taskmgmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_send_taskmgmt(%struct.lpfc_vport* %0, %struct.lpfc_rport_data* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.lpfc_vport*, align 8
  %8 = alloca %struct.lpfc_rport_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.lpfc_hba*, align 8
  %13 = alloca %struct.lpfc_scsi_buf*, align 8
  %14 = alloca %struct.lpfc_iocbq*, align 8
  %15 = alloca %struct.lpfc_iocbq*, align 8
  %16 = alloca %struct.lpfc_nodelist*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %7, align 8
  store %struct.lpfc_rport_data* %1, %struct.lpfc_rport_data** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %20 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %19, i32 0, i32 0
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %20, align 8
  store %struct.lpfc_hba* %21, %struct.lpfc_hba** %12, align 8
  %22 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %8, align 8
  %23 = getelementptr inbounds %struct.lpfc_rport_data, %struct.lpfc_rport_data* %22, i32 0, i32 0
  %24 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %23, align 8
  store %struct.lpfc_nodelist* %24, %struct.lpfc_nodelist** %16, align 8
  %25 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %16, align 8
  %26 = icmp ne %struct.lpfc_nodelist* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %5
  %28 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %16, align 8
  %29 = call i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27, %5
  %32 = load i32, i32* @FAILED, align 4
  store i32 %32, i32* %6, align 4
  br label %167

33:                                               ; preds = %27
  %34 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %35 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %8, align 8
  %36 = getelementptr inbounds %struct.lpfc_rport_data, %struct.lpfc_rport_data* %35, i32 0, i32 0
  %37 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %36, align 8
  %38 = call %struct.lpfc_scsi_buf* @lpfc_get_scsi_buf(%struct.lpfc_hba* %34, %struct.lpfc_nodelist* %37)
  store %struct.lpfc_scsi_buf* %38, %struct.lpfc_scsi_buf** %13, align 8
  %39 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %13, align 8
  %40 = icmp eq %struct.lpfc_scsi_buf* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* @FAILED, align 4
  store i32 %42, i32* %6, align 4
  br label %167

43:                                               ; preds = %33
  %44 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %45 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %13, align 8
  %48 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %8, align 8
  %50 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %13, align 8
  %51 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %50, i32 0, i32 3
  store %struct.lpfc_rport_data* %49, %struct.lpfc_rport_data** %51, align 8
  %52 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %53 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %13, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @lpfc_scsi_prep_task_mgmt_cmd(%struct.lpfc_vport* %52, %struct.lpfc_scsi_buf* %53, i32 %54, i32 %55)
  store i32 %56, i32* %18, align 4
  %57 = load i32, i32* %18, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %43
  %60 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %61 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %13, align 8
  %62 = call i32 @lpfc_release_scsi_buf(%struct.lpfc_hba* %60, %struct.lpfc_scsi_buf* %61)
  %63 = load i32, i32* @FAILED, align 4
  store i32 %63, i32* %6, align 4
  br label %167

64:                                               ; preds = %43
  %65 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %13, align 8
  %66 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %65, i32 0, i32 2
  store %struct.lpfc_iocbq* %66, %struct.lpfc_iocbq** %14, align 8
  %67 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %68 = call %struct.lpfc_iocbq* @lpfc_sli_get_iocbq(%struct.lpfc_hba* %67)
  store %struct.lpfc_iocbq* %68, %struct.lpfc_iocbq** %15, align 8
  %69 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %15, align 8
  %70 = icmp eq %struct.lpfc_iocbq* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %64
  %72 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %73 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %13, align 8
  %74 = call i32 @lpfc_release_scsi_buf(%struct.lpfc_hba* %72, %struct.lpfc_scsi_buf* %73)
  %75 = load i32, i32* @FAILED, align 4
  store i32 %75, i32* %6, align 4
  br label %167

76:                                               ; preds = %64
  %77 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %78 = load i32, i32* @KERN_INFO, align 4
  %79 = load i32, i32* @LOG_FCP, align 4
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @lpfc_taskmgmt_name(i32 %80)
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %16, align 8
  %85 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %16, align 8
  %88 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %14, align 8
  %91 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %14, align 8
  %94 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %77, i32 %78, i32 %79, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %81, i32 %82, i32 %83, i32 %86, i32 %89, i32 %92, i32 %95)
  %97 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %98 = load i32, i32* @LPFC_FCP_RING, align 4
  %99 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %14, align 8
  %100 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %15, align 8
  %101 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %13, align 8
  %102 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @lpfc_sli_issue_iocb_wait(%struct.lpfc_hba* %97, i32 %98, %struct.lpfc_iocbq* %99, %struct.lpfc_iocbq* %100, i32 %103)
  store i32 %104, i32* %18, align 4
  %105 = load i32, i32* %18, align 4
  %106 = load i32, i32* @IOCB_SUCCESS, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %145

108:                                              ; preds = %76
  %109 = load i32, i32* %18, align 4
  %110 = load i32, i32* @IOCB_TIMEDOUT, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %108
  %113 = load i32, i32* @lpfc_tskmgmt_def_cmpl, align 4
  %114 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %14, align 8
  %115 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 8
  %116 = load i32, i32* @TIMEOUT_ERROR, align 4
  store i32 %116, i32* %17, align 4
  br label %119

117:                                              ; preds = %108
  %118 = load i32, i32* @FAILED, align 4
  store i32 %118, i32* %17, align 4
  br label %119

119:                                              ; preds = %117, %112
  %120 = load i32, i32* @IOSTAT_DRIVER_REJECT, align 4
  %121 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %13, align 8
  %122 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  %123 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %124 = load i32, i32* @KERN_ERR, align 4
  %125 = load i32, i32* @LOG_FCP, align 4
  %126 = load i32, i32* %11, align 4
  %127 = call i32 @lpfc_taskmgmt_name(i32 %126)
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* %10, align 4
  %130 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %15, align 8
  %131 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %15, align 8
  %135 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 4
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %14, align 8
  %142 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %123, i32 %124, i32 %125, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %127, i32 %128, i32 %129, i32 %133, i32 %140, i32 %143)
  br label %154

145:                                              ; preds = %76
  %146 = load i32, i32* %18, align 4
  %147 = load i32, i32* @IOCB_BUSY, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %145
  %150 = load i32, i32* @FAILED, align 4
  store i32 %150, i32* %17, align 4
  br label %153

151:                                              ; preds = %145
  %152 = load i32, i32* @SUCCESS, align 4
  store i32 %152, i32* %17, align 4
  br label %153

153:                                              ; preds = %151, %149
  br label %154

154:                                              ; preds = %153, %119
  %155 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %156 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %15, align 8
  %157 = call i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba* %155, %struct.lpfc_iocbq* %156)
  %158 = load i32, i32* %17, align 4
  %159 = load i32, i32* @TIMEOUT_ERROR, align 4
  %160 = icmp ne i32 %158, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %154
  %162 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %163 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %13, align 8
  %164 = call i32 @lpfc_release_scsi_buf(%struct.lpfc_hba* %162, %struct.lpfc_scsi_buf* %163)
  br label %165

165:                                              ; preds = %161, %154
  %166 = load i32, i32* %17, align 4
  store i32 %166, i32* %6, align 4
  br label %167

167:                                              ; preds = %165, %71, %59, %41, %31
  %168 = load i32, i32* %6, align 4
  ret i32 %168
}

declare dso_local i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local %struct.lpfc_scsi_buf* @lpfc_get_scsi_buf(%struct.lpfc_hba*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_scsi_prep_task_mgmt_cmd(%struct.lpfc_vport*, %struct.lpfc_scsi_buf*, i32, i32) #1

declare dso_local i32 @lpfc_release_scsi_buf(%struct.lpfc_hba*, %struct.lpfc_scsi_buf*) #1

declare dso_local %struct.lpfc_iocbq* @lpfc_sli_get_iocbq(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, ...) #1

declare dso_local i32 @lpfc_taskmgmt_name(i32) #1

declare dso_local i32 @lpfc_sli_issue_iocb_wait(%struct.lpfc_hba*, i32, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*, i32) #1

declare dso_local i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
