; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_nportdisc.c_lpfc_rcv_plogi_plogi_issue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_nportdisc.c_lpfc_rcv_plogi_plogi_issue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i64, i32, i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.lpfc_nodelist = type { i32, i32 }
%struct.Scsi_Host = type { i32 }
%struct.lpfc_iocbq = type { i64 }
%struct.lpfc_dmabuf = type { i64 }
%struct.serv_parm = type { i32 }
%struct.ls_rjt = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@LSRJT_UNABLE_TPC = common dso_local global i32 0, align 4
@LSEXP_CMD_IN_PROGRESS = common dso_local global i32 0, align 4
@NLP_NPR_2B_DISC = common dso_local global i32 0, align 4
@FC_NDISC_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.lpfc_nodelist*, i8*, i32)* @lpfc_rcv_plogi_plogi_issue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_rcv_plogi_plogi_issue(%struct.lpfc_vport* %0, %struct.lpfc_nodelist* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.lpfc_nodelist*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.Scsi_Host*, align 8
  %10 = alloca %struct.lpfc_hba*, align 8
  %11 = alloca %struct.lpfc_iocbq*, align 8
  %12 = alloca %struct.lpfc_dmabuf*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.serv_parm*, align 8
  %15 = alloca %struct.ls_rjt, align 4
  %16 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %5, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %18 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %17)
  store %struct.Scsi_Host* %18, %struct.Scsi_Host** %9, align 8
  %19 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %20 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %19, i32 0, i32 3
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %20, align 8
  store %struct.lpfc_hba* %21, %struct.lpfc_hba** %10, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = bitcast i8* %22 to %struct.lpfc_iocbq*
  store %struct.lpfc_iocbq* %23, %struct.lpfc_iocbq** %11, align 8
  %24 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %25 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %27, %struct.lpfc_dmabuf** %12, align 8
  %28 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %29 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i32*
  store i32* %31, i32** %13, align 8
  %32 = load i32*, i32** %13, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = bitcast i32* %33 to %struct.serv_parm*
  store %struct.serv_parm* %34, %struct.serv_parm** %14, align 8
  %35 = call i32 @memset(%struct.ls_rjt* %15, i32 0, i32 12)
  %36 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %37 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  %41 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %42 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %41, i32 0, i32 2
  %43 = load %struct.serv_parm*, %struct.serv_parm** %14, align 8
  %44 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %43, i32 0, i32 0
  %45 = call i32 @memcmp(i32* %42, i32* %44, i32 4)
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %16, align 4
  %47 = icmp sge i32 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %4
  %49 = load i32, i32* @LSRJT_UNABLE_TPC, align 4
  %50 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %15, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* @LSEXP_CMD_IN_PROGRESS, align 4
  %54 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %15, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 4
  %57 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %58 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %15, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %62 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %63 = call i32 @lpfc_els_rsp_reject(%struct.lpfc_vport* %57, i32 %60, %struct.lpfc_iocbq* %61, %struct.lpfc_nodelist* %62, i32* null)
  br label %124

64:                                               ; preds = %4
  %65 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %66 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %67 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %68 = call i64 @lpfc_rcv_plogi(%struct.lpfc_vport* %65, %struct.lpfc_nodelist* %66, %struct.lpfc_iocbq* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %123

70:                                               ; preds = %64
  %71 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %72 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @NLP_NPR_2B_DISC, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %123

77:                                               ; preds = %70
  %78 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %79 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %123

82:                                               ; preds = %77
  %83 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %84 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @spin_lock_irq(i32 %85)
  %87 = load i32, i32* @NLP_NPR_2B_DISC, align 4
  %88 = xor i32 %87, -1
  %89 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %90 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, %88
  store i32 %92, i32* %90, align 4
  %93 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %94 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @spin_unlock_irq(i32 %95)
  %97 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %98 = call i32 @lpfc_more_plogi(%struct.lpfc_vport* %97)
  %99 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %100 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %122

103:                                              ; preds = %82
  %104 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %105 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @spin_lock_irq(i32 %106)
  %108 = load i32, i32* @FC_NDISC_ACTIVE, align 4
  %109 = xor i32 %108, -1
  %110 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %111 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = and i32 %112, %109
  store i32 %113, i32* %111, align 8
  %114 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %115 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @spin_unlock_irq(i32 %116)
  %118 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %119 = call i32 @lpfc_can_disctmo(%struct.lpfc_vport* %118)
  %120 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %121 = call i32 @lpfc_end_rscn(%struct.lpfc_vport* %120)
  br label %122

122:                                              ; preds = %103, %82
  br label %123

123:                                              ; preds = %122, %77, %70, %64
  br label %124

124:                                              ; preds = %123, %48
  %125 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %126 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  ret i32 %127
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @memset(%struct.ls_rjt*, i32, i32) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @lpfc_els_rsp_reject(%struct.lpfc_vport*, i32, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*, i32*) #1

declare dso_local i64 @lpfc_rcv_plogi(%struct.lpfc_vport*, %struct.lpfc_nodelist*, %struct.lpfc_iocbq*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @lpfc_more_plogi(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_can_disctmo(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_end_rscn(%struct.lpfc_vport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
