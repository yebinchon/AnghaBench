; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_cancel_retry_delay_tmo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_cancel_retry_delay_tmo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i64, i64, i32 }
%struct.lpfc_nodelist = type { i32, %struct.lpfc_work_evt, i64, i32 }
%struct.lpfc_work_evt = type { i64, i32 }
%struct.Scsi_Host = type { i32 }

@NLP_DELAY_TMO = common dso_local global i32 0, align 4
@NLP_NPR_2B_DISC = common dso_local global i32 0, align 4
@LPFC_VPORT_READY = common dso_local global i64 0, align 8
@FC_NDISC_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_cancel_retry_delay_tmo(%struct.lpfc_vport* %0, %struct.lpfc_nodelist* %1) #0 {
  %3 = alloca %struct.lpfc_vport*, align 8
  %4 = alloca %struct.lpfc_nodelist*, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.lpfc_work_evt*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %3, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %4, align 8
  %7 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %8 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %7)
  store %struct.Scsi_Host* %8, %struct.Scsi_Host** %5, align 8
  %9 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %10 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @NLP_DELAY_TMO, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %118

16:                                               ; preds = %2
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %18 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @spin_lock_irq(i32 %19)
  %21 = load i32, i32* @NLP_DELAY_TMO, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %24 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %28 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @spin_unlock_irq(i32 %29)
  %31 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %32 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %31, i32 0, i32 3
  %33 = call i32 @del_timer_sync(i32* %32)
  %34 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %35 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %37 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.lpfc_work_evt, %struct.lpfc_work_evt* %37, i32 0, i32 1
  %39 = call i32 @list_empty(i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %16
  %42 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %43 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.lpfc_work_evt, %struct.lpfc_work_evt* %43, i32 0, i32 1
  %45 = call i32 @list_del_init(i32* %44)
  %46 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %47 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %46, i32 0, i32 1
  store %struct.lpfc_work_evt* %47, %struct.lpfc_work_evt** %6, align 8
  %48 = load %struct.lpfc_work_evt*, %struct.lpfc_work_evt** %6, align 8
  %49 = getelementptr inbounds %struct.lpfc_work_evt, %struct.lpfc_work_evt* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to %struct.lpfc_nodelist*
  %52 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %51)
  br label %53

53:                                               ; preds = %41, %16
  %54 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %55 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @NLP_NPR_2B_DISC, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %117

60:                                               ; preds = %53
  %61 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %62 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @spin_lock_irq(i32 %63)
  %65 = load i32, i32* @NLP_NPR_2B_DISC, align 4
  %66 = xor i32 %65, -1
  %67 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %68 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %69, %66
  store i32 %70, i32* %68, align 8
  %71 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %72 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @spin_unlock_irq(i32 %73)
  %75 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %76 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %116

79:                                               ; preds = %60
  %80 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %81 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @LPFC_VPORT_READY, align 8
  %84 = icmp slt i64 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %87 = call i32 @lpfc_more_adisc(%struct.lpfc_vport* %86)
  br label %115

88:                                               ; preds = %79
  %89 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %90 = call i32 @lpfc_more_plogi(%struct.lpfc_vport* %89)
  %91 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %92 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %114

95:                                               ; preds = %88
  %96 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %97 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @spin_lock_irq(i32 %98)
  %100 = load i32, i32* @FC_NDISC_ACTIVE, align 4
  %101 = xor i32 %100, -1
  %102 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %103 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = and i32 %104, %101
  store i32 %105, i32* %103, align 8
  %106 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %107 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @spin_unlock_irq(i32 %108)
  %110 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %111 = call i32 @lpfc_can_disctmo(%struct.lpfc_vport* %110)
  %112 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %113 = call i32 @lpfc_end_rscn(%struct.lpfc_vport* %112)
  br label %114

114:                                              ; preds = %95, %88
  br label %115

115:                                              ; preds = %114, %85
  br label %116

116:                                              ; preds = %115, %60
  br label %117

117:                                              ; preds = %116, %53
  br label %118

118:                                              ; preds = %117, %15
  ret void
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @lpfc_nlp_put(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_more_adisc(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_more_plogi(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_can_disctmo(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_end_rscn(%struct.lpfc_vport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
