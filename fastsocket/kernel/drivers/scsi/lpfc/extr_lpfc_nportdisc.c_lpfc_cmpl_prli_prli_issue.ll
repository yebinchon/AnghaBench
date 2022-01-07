; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_nportdisc.c_lpfc_cmpl_prli_prli_issue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_nportdisc.c_lpfc_cmpl_prli_prli_issue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i64, i64, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32 }
%struct.lpfc_nodelist = type { i32, i32, i8*, i32, i32 }
%struct.Scsi_Host = type { i32 }
%struct.lpfc_iocbq = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { %struct.lpfc_iocbq* }
%struct.TYPE_5__ = type { i64, i64, i64, i64, i64 }

@LPFC_NPIV_PORT = common dso_local global i64 0, align 8
@NLP_STE_PRLI_ISSUE = common dso_local global i8* null, align 8
@NLP_STE_UNMAPPED_NODE = common dso_local global i32 0, align 4
@NLP_FCP_TARGET = common dso_local global i32 0, align 4
@NLP_FCP_INITIATOR = common dso_local global i32 0, align 4
@NLP_FCP_2_DEVICE = common dso_local global i32 0, align 4
@PRLI_REQ_EXECUTED = common dso_local global i64 0, align 8
@PRLI_FCP_TYPE = common dso_local global i64 0, align 8
@NLP_TARGET_REMOVE = common dso_local global i32 0, align 4
@NLP_STE_NPR_NODE = common dso_local global i32 0, align 4
@NLP_STE_MAPPED_NODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.lpfc_nodelist*, i8*, i32)* @lpfc_cmpl_prli_prli_issue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_cmpl_prli_prli_issue(%struct.lpfc_vport* %0, %struct.lpfc_nodelist* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lpfc_vport*, align 8
  %7 = alloca %struct.lpfc_nodelist*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.Scsi_Host*, align 8
  %11 = alloca %struct.lpfc_iocbq*, align 8
  %12 = alloca %struct.lpfc_iocbq*, align 8
  %13 = alloca %struct.lpfc_hba*, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca %struct.TYPE_5__*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %6, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %17 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %16)
  store %struct.Scsi_Host* %17, %struct.Scsi_Host** %10, align 8
  %18 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %19 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %18, i32 0, i32 2
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %19, align 8
  store %struct.lpfc_hba* %20, %struct.lpfc_hba** %13, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = bitcast i8* %21 to %struct.lpfc_iocbq*
  store %struct.lpfc_iocbq* %22, %struct.lpfc_iocbq** %11, align 8
  %23 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %24 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %25, align 8
  store %struct.lpfc_iocbq* %26, %struct.lpfc_iocbq** %12, align 8
  %27 = load %struct.lpfc_hba*, %struct.lpfc_hba** %13, align 8
  %28 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %29 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %30 = call i64 @lpfc_check_elscmpl_iocb(%struct.lpfc_hba* %27, %struct.lpfc_iocbq* %28, %struct.lpfc_iocbq* %29)
  %31 = inttoptr i64 %30 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %31, %struct.TYPE_5__** %15, align 8
  %32 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %33 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %32, i32 0, i32 0
  store %struct.TYPE_6__* %33, %struct.TYPE_6__** %14, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %61

38:                                               ; preds = %4
  %39 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %40 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @LPFC_NPIV_PORT, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %46 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %140

50:                                               ; preds = %44, %38
  %51 = load i8*, i8** @NLP_STE_PRLI_ISSUE, align 8
  %52 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %53 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %52, i32 0, i32 2
  store i8* %51, i8** %53, align 8
  %54 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %55 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %56 = load i32, i32* @NLP_STE_UNMAPPED_NODE, align 4
  %57 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %54, %struct.lpfc_nodelist* %55, i32 %56)
  %58 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %59 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %5, align 4
  br label %191

61:                                               ; preds = %4
  %62 = load i32, i32* @NLP_FCP_TARGET, align 4
  %63 = load i32, i32* @NLP_FCP_INITIATOR, align 4
  %64 = or i32 %62, %63
  %65 = xor i32 %64, -1
  %66 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %67 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = and i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load i32, i32* @NLP_FCP_2_DEVICE, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %73 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @PRLI_REQ_EXECUTED, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %121

81:                                               ; preds = %61
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @PRLI_FCP_TYPE, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %121

87:                                               ; preds = %81
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load i32, i32* @NLP_FCP_INITIATOR, align 4
  %94 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %95 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 8
  br label %98

98:                                               ; preds = %92, %87
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %98
  %104 = load i32, i32* @NLP_FCP_TARGET, align 4
  %105 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %106 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 8
  br label %109

109:                                              ; preds = %103, %98
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %109
  %115 = load i32, i32* @NLP_FCP_2_DEVICE, align 4
  %116 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %117 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %114, %109
  br label %121

121:                                              ; preds = %120, %81, %61
  %122 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %123 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @NLP_FCP_TARGET, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %167, label %128

128:                                              ; preds = %121
  %129 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %130 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @LPFC_NPIV_PORT, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %167

134:                                              ; preds = %128
  %135 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %136 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %167

139:                                              ; preds = %134
  br label %140

140:                                              ; preds = %139, %49
  %141 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %142 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @spin_lock_irq(i32 %143)
  %145 = load i32, i32* @NLP_TARGET_REMOVE, align 4
  %146 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %147 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 8
  %150 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %151 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @spin_unlock_irq(i32 %152)
  %154 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %155 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %156 = call i32 @lpfc_issue_els_logo(%struct.lpfc_vport* %154, %struct.lpfc_nodelist* %155, i32 0)
  %157 = load i8*, i8** @NLP_STE_PRLI_ISSUE, align 8
  %158 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %159 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %158, i32 0, i32 2
  store i8* %157, i8** %159, align 8
  %160 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %161 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %162 = load i32, i32* @NLP_STE_NPR_NODE, align 4
  %163 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %160, %struct.lpfc_nodelist* %161, i32 %162)
  %164 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %165 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  store i32 %166, i32* %5, align 4
  br label %191

167:                                              ; preds = %134, %128, %121
  %168 = load i8*, i8** @NLP_STE_PRLI_ISSUE, align 8
  %169 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %170 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %169, i32 0, i32 2
  store i8* %168, i8** %170, align 8
  %171 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %172 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @NLP_FCP_TARGET, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %167
  %178 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %179 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %180 = load i32, i32* @NLP_STE_MAPPED_NODE, align 4
  %181 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %178, %struct.lpfc_nodelist* %179, i32 %180)
  br label %187

182:                                              ; preds = %167
  %183 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %184 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %185 = load i32, i32* @NLP_STE_UNMAPPED_NODE, align 4
  %186 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %183, %struct.lpfc_nodelist* %184, i32 %185)
  br label %187

187:                                              ; preds = %182, %177
  %188 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %189 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  store i32 %190, i32* %5, align 4
  br label %191

191:                                              ; preds = %187, %140, %50
  %192 = load i32, i32* %5, align 4
  ret i32 %192
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i64 @lpfc_check_elscmpl_iocb(%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*) #1

declare dso_local i32 @lpfc_nlp_set_state(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @lpfc_issue_els_logo(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
