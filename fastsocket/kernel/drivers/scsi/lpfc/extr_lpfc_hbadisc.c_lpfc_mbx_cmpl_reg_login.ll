; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_mbx_cmpl_reg_login.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_mbx_cmpl_reg_login.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.TYPE_5__ = type { i32*, i32*, %struct.lpfc_vport* }
%struct.lpfc_vport = type { i32 }
%struct.lpfc_dmabuf = type { i32, i32 }
%struct.lpfc_nodelist = type { i32, i64 }
%struct.Scsi_Host = type { i32 }

@NLP_REG_LOGIN_SEND = common dso_local global i32 0, align 4
@NLP_IGNR_REG_CMPL = common dso_local global i32 0, align 4
@NLP_STE_REG_LOGIN_ISSUE = common dso_local global i64 0, align 8
@NLP_EVT_CMPL_REG_LOGIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_mbx_cmpl_reg_login(%struct.lpfc_hba* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.lpfc_dmabuf*, align 8
  %7 = alloca %struct.lpfc_nodelist*, align 8
  %8 = alloca %struct.Scsi_Host*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %11 = load %struct.lpfc_vport*, %struct.lpfc_vport** %10, align 8
  store %struct.lpfc_vport* %11, %struct.lpfc_vport** %5, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = bitcast i32* %14 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %15, %struct.lpfc_dmabuf** %6, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = bitcast i32* %18 to %struct.lpfc_nodelist*
  store %struct.lpfc_nodelist* %19, %struct.lpfc_nodelist** %7, align 8
  %20 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %21 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %20)
  store %struct.Scsi_Host* %21, %struct.Scsi_Host** %8, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  store i32* null, i32** %23, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  %26 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %27 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @NLP_REG_LOGIN_SEND, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %2
  %33 = load i32, i32* @NLP_REG_LOGIN_SEND, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %36 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 8
  br label %39

39:                                               ; preds = %32, %2
  %40 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %41 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @NLP_IGNR_REG_CMPL, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %39
  %47 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %48 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @NLP_STE_REG_LOGIN_ISSUE, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %46, %39
  %53 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %54 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @spin_lock_irq(i32 %55)
  %57 = load i32, i32* @NLP_IGNR_REG_CMPL, align 4
  %58 = xor i32 %57, -1
  %59 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %60 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = and i32 %61, %58
  store i32 %62, i32* %60, align 8
  %63 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %64 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @spin_unlock_irq(i32 %65)
  br label %73

67:                                               ; preds = %46
  %68 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %69 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %71 = load i32, i32* @NLP_EVT_CMPL_REG_LOGIN, align 4
  %72 = call i32 @lpfc_disc_state_machine(%struct.lpfc_vport* %68, %struct.lpfc_nodelist* %69, %struct.TYPE_5__* %70, i32 %71)
  br label %73

73:                                               ; preds = %67, %52
  %74 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %75 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %76 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %79 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %74, i32 %77, i32 %80)
  %82 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %83 = call i32 @kfree(%struct.lpfc_dmabuf* %82)
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %85 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %86 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @mempool_free(%struct.TYPE_5__* %84, i32 %87)
  %89 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %90 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %89)
  ret void
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @lpfc_disc_state_machine(%struct.lpfc_vport*, %struct.lpfc_nodelist*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @lpfc_mbuf_free(%struct.lpfc_hba*, i32, i32) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

declare dso_local i32 @mempool_free(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @lpfc_nlp_put(%struct.lpfc_nodelist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
