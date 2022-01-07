; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_retry_delay_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_retry_delay_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_nodelist = type { i32, i32, i32, i32, i32, i32, i32, %struct.lpfc_vport* }
%struct.lpfc_vport = type { i32 }
%struct.Scsi_Host = type { i32 }

@NLP_DELAY_TMO = common dso_local global i32 0, align 4
@NLP_STE_PLOGI_ISSUE = common dso_local global i32 0, align 4
@NLP_STE_ADISC_ISSUE = common dso_local global i32 0, align 4
@NLP_STE_PRLI_ISSUE = common dso_local global i32 0, align 4
@NLP_STE_LOGO_ISSUE = common dso_local global i32 0, align 4
@FC_VPORT_NEEDS_INIT_VPI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_els_retry_delay_handler(%struct.lpfc_nodelist* %0) #0 {
  %2 = alloca %struct.lpfc_nodelist*, align 8
  %3 = alloca %struct.lpfc_vport*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lpfc_nodelist* %0, %struct.lpfc_nodelist** %2, align 8
  %8 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %9 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %8, i32 0, i32 7
  %10 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  store %struct.lpfc_vport* %10, %struct.lpfc_vport** %3, align 8
  %11 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %12 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %11)
  store %struct.Scsi_Host* %12, %struct.Scsi_Host** %4, align 8
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %14 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @spin_lock_irq(i32 %15)
  %17 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %18 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %6, align 4
  %20 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %21 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  %23 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %24 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %23, i32 0, i32 1
  store i32 0, i32* %24, align 4
  %25 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %26 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @NLP_DELAY_TMO, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %1
  %32 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %33 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @spin_unlock_irq(i32 %34)
  br label %145

36:                                               ; preds = %1
  %37 = load i32, i32* @NLP_DELAY_TMO, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %40 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 8
  %43 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %44 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @spin_unlock_irq(i32 %45)
  %47 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %48 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %47, i32 0, i32 6
  %49 = call i32 @del_timer_sync(i32* %48)
  %50 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %51 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %7, align 4
  %53 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %54 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %53, i32 0, i32 3
  store i32 0, i32* %54, align 4
  %55 = load i32, i32* %5, align 4
  switch i32 %55, label %144 [
    i32 131, label %56
    i32 129, label %61
    i32 133, label %80
    i32 128, label %97
    i32 130, label %114
    i32 132, label %131
  ]

56:                                               ; preds = %36
  %57 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %58 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @lpfc_issue_els_flogi(%struct.lpfc_vport* %57, %struct.lpfc_nodelist* %58, i32 %59)
  br label %144

61:                                               ; preds = %36
  %62 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %63 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %64 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @lpfc_issue_els_plogi(%struct.lpfc_vport* %62, i32 %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %79, label %69

69:                                               ; preds = %61
  %70 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %71 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %74 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %73, i32 0, i32 5
  store i32 %72, i32* %74, align 4
  %75 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %76 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %77 = load i32, i32* @NLP_STE_PLOGI_ISSUE, align 4
  %78 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %75, %struct.lpfc_nodelist* %76, i32 %77)
  br label %79

79:                                               ; preds = %69, %61
  br label %144

80:                                               ; preds = %36
  %81 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %82 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @lpfc_issue_els_adisc(%struct.lpfc_vport* %81, %struct.lpfc_nodelist* %82, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %96, label %86

86:                                               ; preds = %80
  %87 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %88 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %91 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %90, i32 0, i32 5
  store i32 %89, i32* %91, align 4
  %92 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %93 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %94 = load i32, i32* @NLP_STE_ADISC_ISSUE, align 4
  %95 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %92, %struct.lpfc_nodelist* %93, i32 %94)
  br label %96

96:                                               ; preds = %86, %80
  br label %144

97:                                               ; preds = %36
  %98 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %99 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @lpfc_issue_els_prli(%struct.lpfc_vport* %98, %struct.lpfc_nodelist* %99, i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %113, label %103

103:                                              ; preds = %97
  %104 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %105 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %108 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %107, i32 0, i32 5
  store i32 %106, i32* %108, align 4
  %109 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %110 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %111 = load i32, i32* @NLP_STE_PRLI_ISSUE, align 4
  %112 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %109, %struct.lpfc_nodelist* %110, i32 %111)
  br label %113

113:                                              ; preds = %103, %97
  br label %144

114:                                              ; preds = %36
  %115 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %116 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @lpfc_issue_els_logo(%struct.lpfc_vport* %115, %struct.lpfc_nodelist* %116, i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %130, label %120

120:                                              ; preds = %114
  %121 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %122 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %125 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %124, i32 0, i32 5
  store i32 %123, i32* %125, align 4
  %126 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %127 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %128 = load i32, i32* @NLP_STE_LOGO_ISSUE, align 4
  %129 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %126, %struct.lpfc_nodelist* %127, i32 %128)
  br label %130

130:                                              ; preds = %120, %114
  br label %144

131:                                              ; preds = %36
  %132 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %133 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @FC_VPORT_NEEDS_INIT_VPI, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %143, label %138

138:                                              ; preds = %131
  %139 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %140 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %141 = load i32, i32* %7, align 4
  %142 = call i32 @lpfc_issue_els_fdisc(%struct.lpfc_vport* %139, %struct.lpfc_nodelist* %140, i32 %141)
  br label %143

143:                                              ; preds = %138, %131
  br label %144

144:                                              ; preds = %36, %143, %130, %113, %96, %79, %56
  br label %145

145:                                              ; preds = %144, %31
  ret void
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @lpfc_issue_els_flogi(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_issue_els_plogi(%struct.lpfc_vport*, i32, i32) #1

declare dso_local i32 @lpfc_nlp_set_state(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_issue_els_adisc(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_issue_els_prli(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_issue_els_logo(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_issue_els_fdisc(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
